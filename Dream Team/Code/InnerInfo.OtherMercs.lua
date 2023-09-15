function ApplyUnitVisibility(active_units, pov_team, visibility, force)
  local innerInfo = gv_CurrentSectorId and g_Units.Barry and g_Units.Barry.team == pov_team and gv_Sectors[gv_CurrentSectorId].intel_discovered
  active_units = IsKindOf(active_units, "Unit") and {active_units} or active_units
  local observers = g_Combat and {
    SelectedObj or nil
  } or Selection or {}
  local full_visibility = IsFullVisibility()
  local sector = (gv_DeploymentStarted or gv_Deployment) and gv_Sectors[gv_CurrentSectorId]
  local pov_team_hidden = sector and sector.enabled_auto_deploy and pov_team.control == "UI"
  local is_current_team_pov_team = g_Teams[g_CurrentTeam] == pov_team
  local uvVisible = const.uvVisible
  local deployment_markers
  local camera_visibility_check_list = {}
  for i, unit in ipairs(g_Units) do
    if not IsValid(unit) then
    elseif unit:HasStatusEffect("SetpieceHidden") or unit:HasStatusEffect("ScriptingHidden") or IsValid(unit.death_fx_object) then
      unit:SetVisible(false, "force")
      unit:SetHighlightReason("visibility", nil)
    elseif gv_Deployment and IsMerc(unit) then
    elseif full_visibility then
      unit:SetVisible(true)
      unit:SetHighlightReason("visibility", false)
      unit:SetHighlightReason("concealed", false)
      unit:SetHighlightReason("obscured", false)
      unit:SetHighlightReason("faded", false)
    elseif not IsSetpieceActor(unit) then
      if IsValid(unit.prepared_attack_obj) then
        if unit.team:IsEnemySide(pov_team) then
          unit.prepared_attack_obj:SetColorFromTextStyle("PreparedAttackEnemy")
        else
          unit.prepared_attack_obj:SetColorFromTextStyle("PreparedAttackFriendly")
        end
      end
      if unit.team == pov_team then
        if unit.on_die_hit_descr and unit.on_die_hit_descr.death_explosion then
          unit:SetVisible(false)
          unit:SetHighlightReason("visibility", nil)
        elseif IsOnFadedSlab(unit) then
          unit:SetVisible(not pov_team_hidden)
          unit:SetHighlightReason("visibility", true)
        else
          unit:SetVisible(not pov_team_hidden)
          table.insert(camera_visibility_check_list, unit)
        end
      elseif unit:IsDead() then
        if unit.on_die_hit_descr and unit.on_die_hit_descr.death_explosion then
          unit:SetVisible(false, "force")
          unit:SetHighlightReason("visibility", nil)
        elseif IsOnFadedSlab(unit) then
          local interaction
          for _, au in ipairs(active_units) do
            if unit:GetInteractionCombatAction(au) then
              interaction = true
              break
            end
          end
          if interaction then
            unit:SetVisible(true)
            unit:SetHighlightReason("visibility", true)
          else
            unit:SetVisible(false, "force")
            unit:SetHighlightReason("visibility", nil)
          end
        else
          unit:SetVisible(true)
          unit:SetHighlightReason("visibility", nil)
        end
        unit:SetHighlightReason("concealed", unit:UIConcealed("skip"))
        unit:SetHighlightReason("obscured", unit:UIObscured())
      else
        local seen_by_player = innerInfo or HasVisibilityTo(pov_team, unit) and not unit:HasStatusEffect("Hidden")
        if not seen_by_player then
          if deployment_markers == nil then
            deployment_markers = (gv_DeploymentStarted or gv_Deployment) and GetAvailableDeploymentMarkers() or empty_table
            if #deployment_markers == 0 then
              deployment_markers = false
            end
          end
          if deployment_markers and IsUnitSeenByAnyDeploymentMarker(unit, deployment_markers) then
            seen_by_player = true
          end
        end
        if seen_by_player then
          unit:SetVisible(true)
          local los_active
          local on_faded_slab = IsOnFadedSlab(unit)
          if not on_faded_slab then
            if is_current_team_pov_team then
              for _, observer in ipairs(active_units) do
                if VisibilityCheckAll(observer, unit, nil, uvVisible) then
                  los_active = true
                  break
                end
              end
            else
              los_active = true
            end
          end
          unit:SetHighlightReason("concealed", unit:UIConcealed("skip"))
          unit:SetHighlightReason("obscured", unit:UIObscured())
          if on_faded_slab or not los_active then
            unit:SetHighlightReason("visibility", true)
          else
            table.insert(camera_visibility_check_list, unit)
          end
          unit:SetHighlightReason("faded", on_faded_slab)
        elseif unit:HasStatusEffect("DiamondCarrier") then
          unit:SetVisible(true)
          unit:SetHighlightReason("visibility", true)
        else
          unit:SetVisible(false)
        end
      end
    end
  end
  if 0 < #camera_visibility_check_list then
    local camera_visibility = IsVisibleFromCamera(camera_visibility_check_list)
    for i, unit in ipairs(camera_visibility_check_list) do
      unit:SetHighlightReason("visibility", not camera_visibility[i])
    end
  end
end

function IModeCombatAttack:SetTarget(target, dontMove)
  if target == self.target then
    return true
  end
  if self.context.changing_action then
    dontMove = true
    self.context.changing_action = false
  end
  local attacker = SelectedObj
  if self.action and IsValid(target) and not self.context.free_aim and IsKindOf(target, "Unit") then
    local targets = self.action:GetTargets({attacker})
    if not table.find(targets, target) then
      if not HasVisibilityTo(attacker.team, target) then
        if g_Units.Barry then
          ReportAttackError(target, AttackDisableReasons.NoTeamSightLivewire)
        else
          ReportAttackError(target, AttackDisableReasons.NoTeamSight)
        end
      else
        ReportAttackError(target, AttackDisableReasons.InvalidTarget)
      end
      return true
    end
  end
  local valid = IModeCombatAttackBase.SetTarget(self, target, "dontMove")
  if not valid then
    return false
  end
  local camMoved = true
  if not dontMove then
    self:DeleteThread("action-camera-switch")
    if IsValidThread(ActionCameraAutoRemoveThread) then
      DeleteThread(ActionCameraAutoRemoveThread)
      ActionCameraAutoRemoveThread = false
    end
    local actionCam
    if IsCinematicTargeting(attacker, target, self.action) and self.action.ActionCamera and HasVisibilityTo(attacker, target) then
      local attack_results, attack_args = self.action:GetActionResults(attacker, {target = target})
      if attack_args.clear_attacks ~= 0 then
        actionCam = true
      end
    end
    if actionCam then
      local interpolationTime = default_interpolation_time
      if CurrentActionCamera and IsValid(CurrentActionCamera[2]) then
        local oldTargetPos = CurrentActionCamera[2]:GetPos()
        local newTargetPos = target:GetPos()
        local dist = oldTargetPos:Dist2D(newTargetPos)
        local maxRange = guim * 10
        if dist < maxRange then
          interpolationTime = Lerp(100, interpolationTime, dist, maxRange)
        end
      end
      actionCam = SetActionCameraNoFallback(attacker, target, not IsKindOf(target, "Unit"), interpolationTime)
    end
    if not actionCam then
      if not LocalACWillStartPlaying and not CurrentActionCamera then
        hr.CameraTacClampToTerrain = false
        local pause = false
        if DoesTargetFitOnScreen(self, target) then
          if IsVisibleFromCamera(target, true) then
            pause = true
          end
          camMoved = false
          self.dont_return_camera_on_close = true
        else
          local t, cp, lap = SnapCameraToObj(target, true)
          if cp and IsVisibleFromCamera(target, true, cp) then
            pause = true
          end
        end
        if pause then
          StopWallInvisibilityThread("IModeCombatAttack")
        else
          StartWallInvisibilityThreadWithChecks("IModeCombatAttack")
        end
      else
        self:CreateThread("action-camera-switch", function()
          while LocalACWillStartPlaying do
            WaitMsg("LocalACWillStartPlaying", 100)
          end
          if CurrentActionCamera and CameraBeforeActionCamera then
            CurrentActionCamera[1] = target
            CameraBeforeActionCamera[5] = {
              floor = GetFloorOfPos(target:GetPos())
            }
            RemoveActionCamera(false, default_interpolation_time)
          end
        end)
      end
    end
    self.target_action_camera = actionCam
  end
  if IsKindOf(target, "CombatObject") then
    self:SpawnCrosshair(nil, nil, target, not camMoved)
  end
  self:ClearTargetCovers()
  if IsKindOf(target, "Unit") then
    local def = Presets.ChanceToHitModifier.Default.RangeAttackTargetStanceCover
    local weapon = attacker:GetActiveWeapons()
    local apply, value = def:CalcValue(attacker, target, nil, nil, weapon, nil, nil, 0, false, attacker:GetPos(), target:GetPos())
    local exposed = def:ResolveValue("ExposedCover")
    self:ShowCoversShields(target:GetPos(), target.stance, attacker:GetPos(), not apply or value == exposed)
  end
  return true
end

function HackMarker:Grant(unit)
  local intelSectors = GetSectorsAvailableForIntel(2)
  local weightTable = {
    {
      self.MoneyWeight,
      "Money"
    }
  }
  if next(intelSectors) then
    weightTable[#weightTable + 1] = {
      self.IntelWeight,
      "Intel"
    }
  end
  self.grantedItem = 1 < #weightTable and GetWeightedRandom(weightTable, unit:Random()) or "Money"
  if self.grantedItem == "Money" then
    local moneyRandomModifier = 1 + unit:Random(4)
    local amount = self.MoneyAmount * (moneyRandomModifier + self:GetItemGainModifier())
    AddMoney(amount, "deposit")
    self.grantedAmount = amount
  else
    DiscoverIntelForRandomSector(2)
    if HasPerk(unit, "InnerInfo") then
    --if ItemId(unit, "CustomPDA") then
      local discoveredFor = DiscoverIntelForRandomSector(2, "no notification")
      if discoveredFor then
        CombatLog("important", T({
          312197955233,
          "Livewire used her custom PDA to discover additional Intel for <em><SectorName(sectorId)></em>",
          sectorId = discoveredFor
        }))
      end
    end
  end
  self.granted = true
end
