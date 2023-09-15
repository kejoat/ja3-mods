return {
--Localization
PlaceObj('ModItemLocTable', { --English
	'language', "English",
	'filename', "Localization/Game.csv",
}),
-- Other Effect changes
PlaceObj('ModItemCode', { --No energy cost for Reckless Rush
	'name', "RecklessAssault.NoEnergy",
	'comment', "Removing energy cost from Reckless Rush",
	'CodeFileName', "Code/RecklessAssault.NoEnergy.lua",
}),
--Item and Item Effect Customization
PlaceObj('ModItemCode', { --Vicki's Lockpick for everyone
	'name', "Personal_Vicki_CustomTools.generated",
	'comment', "Made personal tool available for everyone",
	'CodeFileName', "ItemEffect/Personal_Vicki_CustomTools.generated.lua",
}),
PlaceObj('ModItemInventoryItemCompositeDef', { --Vicki's Lockpick for everyone
	'Group', "Personal - Equipment",
	'Id', "Personal_Vicki_CustomTools",
	'object_class', "LockpickBase",
	'RepairCost', 120,
	'Icon', "UI/Icons/Items/vicki_lockpick",
	'DisplayName', T(124312301509, --[[InventoryItemCompositeDef Personal_Vicki_CustomTools DisplayName]] "Personal Locksmith Kit"),
	'DisplayNamePlural', T(609821932113, --[[InventoryItemCompositeDef Personal_Vicki_CustomTools DisplayNamePlural]] "Personal Locksmith Kit"),
	'AdditionalHint', T(144173216875, --[[InventoryItemCompositeDef Personal_Vicki_CustomTools AdditionalHint]] "<bullet_point> Unlocks doors and containers (based on Mechanical)\n<bullet_point> Bonus to skill checks for picking locks\n<bullet_point> Loses Condition after each use\n<bullet_point> Can be repaired\n<bullet_point> Used automatically from the Inventory"),
	'UnitStat', "Mechanical",
	'locked', false,
	'skillCheckPenalty', -10,
}),
PlaceObj('ModItemCode', { --Ivan's Ushanka with Kevlar + Weave Stats
	'name', "IvanUshanka.generated",
	'comment', "Upgraded Ushanka stats to match Kevlar Helmet plus Weave",
	'CodeFileName', "ItemEffect/IvanUshanka.generated.lua",
}),
PlaceObj('ModItemInventoryItemCompositeDef', { --Ivan's Ushanka with Kevlar + Weave Stats
	'Group', "Personal - Equipment",
	'Id', "IvanUshanka",
	'object_class', "Armor",
	'Degradation', 0,
	'Icon', "UI/Icons/Items/ivan_ushanka",
	'SubIcon', "UI/Icons/Items/padded",
	'DisplayName', T(577081433689, --[[InventoryItemCompositeDef IvanUshanka DisplayName]] "Ushanka"),
	'DisplayNamePlural', T(786597442135, --[[InventoryItemCompositeDef IvanUshanka DisplayNamePlural]] "Ushanki"),
	'AdditionalHint', T(650793471533, --[[InventoryItemCompositeDef IvanUshanka AdditionalHint]] "<bullet_point> Protects against capitalism"),
	'locked', true,
	'Slot', "Head",
	'PenetrationClass', 3,
	'DamageReduction', 40,
	'ProtectedBodyParts', set( "Head" ),
}),
PlaceObj('ModItemCode', { --Blood's Endless Knives for everyone
	'name', "EndlessKnives.generated",
	'comment', "Made personal tool available for everyone",
	'CodeFileName', "ItemEffect/EndlessKnives.generated.lua",
}),
PlaceObj('ModItemInventoryItemCompositeDef', { --Blood's Endless Knives for everyone
	'Group', "Personal - Weapons",
	'Id', "EndlessKnives",
	'object_class', "MeleeWeapon",
	'Reliability', 50,
	'Icon', "UI/Icons/Weapons/EndlessKnives",
	'DisplayName', T(996476550790, --[[InventoryItemCompositeDef EndlessKnives DisplayName]] "Endless Knives"),
	'DisplayNamePlural', T(262652558760, --[[InventoryItemCompositeDef EndlessKnives DisplayNamePlural]] "Endless Knives"),
	'AdditionalHint', T(389124413877, --[[InventoryItemCompositeDef EndlessKnives AdditionalHint]] "<bullet_point> Always available for throwing\n<bullet_point> Low attack costs\n<bullet_point> Increased bonus from Aiming"),
	'UnitStat', "Dexterity",
	'Cost', 150,
	'locked', false,
	'BaseChanceToHit', 100,
	'BaseDamage', 12,
	'AimAccuracy', 20,
	'PenetrationClass', 4,
	'DamageMultiplier', 100,
	'CanThrow', true,
	'AttackAP', 3000,
	'MaxAimActions', 1,
	'Noise', 1,
	'Entity', "Weapon_FC_AMZ_Knife_01",
	'HolsterSlot', "Leg",
}),
PlaceObj('ModItemCode', { --Omryn's Gut Hook Knife for everyone
	'name', "GutHookKnife.generated",
	'comment', "Made personal tool available for everyone",
	'CodeFileName', "ItemEffect/GutHookKnife.generated.lua",
}),
PlaceObj('ModItemInventoryItemCompositeDef', { --Omryn's Gut Hook Knife for everyone
	'Group', "Personal - Weapons",
	'Id', "GutHookKnife",
	'object_class', "MeleeWeapon",
	'Reliability', 50,
	'ScrapParts', 2,
	'Icon', "UI/Icons/Weapons/GutHookKnife",
	'DisplayName', T(271517940366, --[[InventoryItemCompositeDef GutHookKnife DisplayName]] "Gut Hook Knife"),
	'DisplayNamePlural', T(947457047925, --[[InventoryItemCompositeDef GutHookKnife DisplayNamePlural]] "Gut Hook Knives"),
	'AdditionalHint', T(849394808821, --[[InventoryItemCompositeDef GutHookKnife AdditionalHint]] "<bullet_point> Inflicts <em>Bleeding</em>\n<bullet_point> Low attack costs\n<bullet_point> Increased bonus from Aiming"),
	'UnitStat', "Dexterity",
	'Cost', 150,
	'locked', false,
	'BaseChanceToHit', 100,
	'BaseDamage', 12,
	'AimAccuracy', 20,
	'PenetrationClass', 4,
	'DamageMultiplier', 100,
	'AttackAP', 3000,
	'MaxAimActions', 1,
	'Noise', 1,
	'Entity', "Weapon_FC_AMZ_Knife_01",
	'HolsterSlot', "Leg",
}),
PlaceObj('ModItemCode', { --Pirre's Machete
	'name', "PierreMachete.generated",
	'comment', "Made personal tool available for everyone",
	'CodeFileName', "ItemEffect/PierreMachete.generated.lua",
}),
PlaceObj('ModItemInventoryItemCompositeDef', { --Pirre's Machete
	'Group', "Personal - Weapons",
	'Id', "PierreMachete",
	'object_class', "MacheteWeapon",
	'Reliability', 50,
	'ScrapParts', 2,
	'Icon', "UI/Icons/Weapons/pierre_machete",
	'DisplayName', T(646705990009, --[[InventoryItemCompositeDef PierreMachete DisplayName]] "Legion's Pride"),
	'DisplayNamePlural', T(624754374783, --[[InventoryItemCompositeDef PierreMachete DisplayNamePlural]] "Legion's Pride"),
	'AdditionalHint', T(619127058218, --[[InventoryItemCompositeDef PierreMachete AdditionalHint]] "<bullet_point> Increased damage bonus from Strength\n<bullet_point> Low attack costs"),
	'LargeItem', true,
	'UnitStat', "Dexterity",
	'Cost', 150,
	'locked', false,
	'BaseChanceToHit', 100,
	'CritChanceScaled', 30,
	'BaseDamage', 16,
	'AimAccuracy', 15,
	'PenetrationClass', 4,
	'DamageMultiplier', 150,
	'WeaponRange', 0,
	'Charge', true,
	'AttackAP', 3000,
	'MaxAimActions', 1,
	'Noise', 1,
	'NeckAttackType', "lethal",
	'Entity', "Weapon_Machete_01",
	'HolsterSlot', "Shoulder",
}),
--Perks (local 'ModItemCharacterEffectCompositeDef' sometimes needed for additional code)
PlaceObj('ModItemCode', { --BuildingConfidence
	'name', "BuildingConfidence.generated",
	'comment', "Find My Feet for everyone",
	'CodeFileName', "CharacterEffect/BuildingConfidence.generated.lua",
}),
PlaceObj('ModItemCharacterEffectCompositeDef', { --BuildingConfidence
	'Group', "Perk-Personal",
	'Id', "BuildingConfidence",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "turnToProc",
			'Value', 2,
			'Tag', "<turnToProc>",
		}),
		PlaceObj('PresetParamPercent', {
			'Name', "chanceToProc",
			'Value', 50,
			'Tag', "<chanceToProc>%",
		}),
	},
	'Comment', "Inspired and + Morale after multiple turns",
	'object_class', "Perk",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "OnAttack",
			Handler = function (self, attacker, action, target, results, attack_args)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "OnAttack")
				if not reaction_idx then return end
				
				local function exec(self, attacker, action, target, results, attack_args)
				attacker:SetEffectValue("attackedThisCombat", true)
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					if IsKindOf(attacker, "StatusEffectObject") and attacker:HasStatusEffect(id) then
						exec(self, attacker, action, target, results, attack_args)
					end
				else
					exec(self, attacker, action, target, results, attack_args)
				end
				
			end,
			HandlerCode = function (self, attacker, action, target, results, attack_args)
				attacker:SetEffectValue("attackedThisCombat", true)
			end,
		}),
		PlaceObj('MsgReaction', {
			Event = "CombatEnd",
			Handler = function (self, test_combat, combat, anyEnemies)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "CombatEnd")
				if not reaction_idx then return end
				
				local function exec(self, test_combat, combat, anyEnemies)
				local unit = g_Units[unit_id]
				if unit then
					unit:SetEffectValue("attackedThisCombat", false)
				end
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					local objs = {}
					for session_id, data in pairs(gv_UnitData) do
						local obj = g_Units[session_id] or data
						if obj:HasStatusEffect(id) then
							objs[session_id] = obj
						end
					end
					for _, obj in sorted_pairs(objs) do
						exec(self, test_combat, combat, anyEnemies)
					end
				else
					exec(self, test_combat, combat, anyEnemies)
				end
				
			end,
			HandlerCode = function (self, test_combat, combat, anyEnemies)
				local unit = g_Units[unit_id]
				if unit then
					unit:SetEffectValue("attackedThisCombat", false)
				end
			end,
		}),
		PlaceObj('MsgReaction', {
			Event = "UnitBeginTurn",
			Handler = function (self, unit)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "UnitBeginTurn")
				if not reaction_idx then return end
				
				local function exec(self, unit)
				if g_Combat then
					if g_Combat.current_turn >= self:ResolveValue("turnToProc") and unit:GetEffectValue("attackedThisCombat") and not unit:HasStatusEffect("ConfidenceBuilt") then
						local chance = self:ResolveValue("chanceToProc")
						local roll = InteractionRand(100, "BuildingConfidence")
						if roll < chance then
							unit:AddStatusEffect("Inspired")
							unit.team:ChangeMorale(1, self.DisplayName)
							unit:AddStatusEffect("ConfidenceBuilt") 
						end
					end
				end
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					if IsKindOf(unit, "StatusEffectObject") and unit:HasStatusEffect(id) then
						exec(self, unit)
					end
				else
					exec(self, unit)
				end
				
			end,
			HandlerCode = function (self, unit)
				if g_Combat then
					if g_Combat.current_turn >= self:ResolveValue("turnToProc") and unit:GetEffectValue("attackedThisCombat") and not unit:HasStatusEffect("ConfidenceBuilt") then
						local chance = self:ResolveValue("chanceToProc")
						local roll = InteractionRand(100, "BuildingConfidence")
						if roll < chance then
							unit:AddStatusEffect("Inspired")
							unit.team:ChangeMorale(1, self.DisplayName)
							unit:AddStatusEffect("ConfidenceBuilt") 
						end
					end
				end
			end,
		}),
	},
	'DisplayName', T(110292118081, --[[CharacterEffectCompositeDef BuildingConfidence DisplayName]] "Find My Feet"),
	'Description', T(969057307540, --[[CharacterEffectCompositeDef BuildingConfidence Description]] "Can become <GameTerm('Inspired')> and increase the team's <GameTerm('Morale')> during combat."),
	'Icon', "UI/Icons/Perks/BuildingConfidence",
	'Tier', "Personal",
}),
PlaceObj('ModItemCode', { --JackOfAllTrades
	'name', "JackOfAllTrades.generated",
	'comment', "Jack Of All Trades for everyone",
	'CodeFileName', "CharacterEffect/JackOfAllTrades.generated.lua",
}),
PlaceObj('ModItemCharacterEffectCompositeDef', { --JackOfAllTrades
	'Group', "Perk-Personal",
	'Id', "JackOfAllTrades",
	'Parameters', {
		PlaceObj('PresetParamPercent', {
			'Name', "activityDurationMod",
			'Value', 33,
			'Tag', "<activityDurationMod>%",
		}),
	},
	'Comment', "Faster Ops",
	'object_class', "Perk",
	'DisplayName', T(126389143932, --[[CharacterEffectCompositeDef JackOfAllTrades DisplayName]] "Jack Of All Trades"),
	'Description', T(723691536009, --[[CharacterEffectCompositeDef JackOfAllTrades Description]] "All <em>Operations</em> the merc undertakes are completed approximately <em><percent(activityDurationMod)> faster</em>."),
	'Icon', "UI/Icons/Perks/JackOfAllTrades",
	'Tier', "Personal",
}),
PlaceObj('ModItemCode', { --WeaponPersonalization
	'name', "WeaponPersonalization.generated",
	'comment', "Elbow Grease for everyone",
	'CodeFileName', "CharacterEffect/WeaponPersonalization.generated.lua",
}),
PlaceObj('ModItemCharacterEffectCompositeDef', { --WeaponPersonalization
	'Group', "Perk-Personal",
	'Id', "WeaponPersonalization",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "baseDamageBonus",
			'Value', 7,
			'Tag', "<baseDamageBonus>",
		}),
		PlaceObj('PresetParamPercent', {
			'Name', "critChanceBonus",
			'Value', 15,
			'Tag', "<critChanceBonus>%",
		}),
		PlaceObj('PresetParamNumber', {
			'Name', "conditionPerHour",
			'Value', 1,
			'Tag', "<conditionPerHour>",
		}),
	},
	'Comment', "Item repair with time; Fully modded bonus",
	'object_class', "Perk",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "NewHour",
			Handler = function (self)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "NewHour")
				if not reaction_idx then return end
				
				local function exec(self)
				local unit = gv_UnitData.Livewire
				unit = unit.HireStatus == "Hired" and unit
				if unit then
					local conditionPerHour = self:ResolveValue("conditionPerHour")
					local armor = unit:GetEquipedArmour()
					for _, item in ipairs(armor) do
						if item.Repairable and item.Condition < 100 then
							item.Condition = item.Condition + conditionPerHour
						end
					end
					
					local weapons = unit:GetHandheldItems()
					for _, item in ipairs(weapons) do
						if item.Repairable and item.Condition < 100 then
							item.Condition = item.Condition + conditionPerHour
						end
					end
				end
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					local objs = {}
					for session_id, data in pairs(gv_UnitData) do
						local obj = g_Units[session_id] or data
						if obj:HasStatusEffect(id) then
							objs[session_id] = obj
						end
					end
					for _, obj in sorted_pairs(objs) do
						exec(self)
					end
				else
					exec(self)
				end
				
			end,
			HandlerCode = function (self)
				local unit = gv_UnitData.Livewire
				unit = unit.HireStatus == "Hired" and unit
				if unit then
					local conditionPerHour = self:ResolveValue("conditionPerHour")
					local armor = unit:GetEquipedArmour()
					for _, item in ipairs(armor) do
						if item.Repairable and item.Condition < 100 then
							item.Condition = item.Condition + conditionPerHour
						end
					end
					
					local weapons = unit:GetHandheldItems()
					for _, item in ipairs(weapons) do
						if item.Repairable and item.Condition < 100 then
							item.Condition = item.Condition + conditionPerHour
						end
					end
				end
			end,
		}),
	},
	'DisplayName', T(662107107735, --[[CharacterEffectCompositeDef WeaponPersonalization DisplayName]] "Elbow Grease"),
	'Description', T(512899017840, --[[CharacterEffectCompositeDef WeaponPersonalization Description]] "Repairs equipped <em>Weapons</em>, <em>Armor</em>, and <em>Items</em> automatically over time.\n\nDeals +<baseDamageBonus> <em>Damage</em> and has +<percent(critChanceBonus)> <GameTerm('Crit')> <em>Chance</em> with fully-modified <em>Firearms</em>.\n"),
	'Icon', "UI/Icons/Perks/WeaponPersonalization",
	'Tier', "Personal",
}),
PlaceObj('ModItemCode', { --HawksEye
	'name', "HawksEye.generated",
	'comment', "Removed Scope from description.",
	'CodeFileName', "CharacterEffect/HawksEye.generated.lua",
}),
PlaceObj('ModItemCharacterEffectCompositeDef', { --HawksEye
	'Group', "Perk-Personal",
	'Id', "HawksEye",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "pindownCostOverwrite",
			'Value', 1,
			'Tag', "<pindownCostOverwrite>",
		}),
	},
	'Comment', "Fox - PinDown bonuses; Cookies",
	'object_class', "Perk",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "MercHired",
			Handler = function (self, mercId, price, days, alreadyHired)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "MercHired")
				if not reaction_idx then return end
				
				local function exec(self, mercId, price, days, alreadyHired)
				-- add cookies
				local unit = gv_UnitData[mercId]
				if unit and HasPerk(unit, self.id) and days > 0 then
					local canPlaceError = CanPlaceItemInInventory("Cookie", days, unit)
					if canPlaceError then
						CombatLog("important", T(667077082306, "Fox has baked some biscuits. Unfortunately the inventory is full. "))
						return
					end
					CombatLog("important",T(754424382903, "Fox has baked some biscuits"))
					PlaceItemInInventory("Cookie", days, unit)
				end
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					local objs = {}
					for session_id, data in pairs(gv_UnitData) do
						local obj = g_Units[session_id] or data
						if obj:HasStatusEffect(id) then
							objs[session_id] = obj
						end
					end
					for _, obj in sorted_pairs(objs) do
						exec(self, mercId, price, days, alreadyHired)
					end
				else
					exec(self, mercId, price, days, alreadyHired)
				end
				
			end,
			HandlerCode = function (self, mercId, price, days, alreadyHired)
				-- add cookies
				local unit = gv_UnitData[mercId]
				if unit and HasPerk(unit, self.id) and days > 0 then
					local canPlaceError = CanPlaceItemInInventory("Cookie", days, unit)
					if canPlaceError then
						CombatLog("important", T(667077082306, "Fox has baked some biscuits. Unfortunately the inventory is full. "))
						return
					end
					CombatLog("important",T(754424382903, "Fox has baked some biscuits"))
					PlaceItemInInventory("Cookie", days, unit)
				end
			end,
		}),
	},
	'DisplayName', T(930669061773, --[[CharacterEffectCompositeDef HawksEye DisplayName]] "Eagle Eye"),
	'Description', T(161077132582, --[[CharacterEffectCompositeDef HawksEye Description]] "<GameTerm('PinDown')> applies <GameTerm('Exposed')> to the target.\n\n<GameTerm('PinDown')> minimum <em>AP</em> cost is reduced to <em><pindownCostOverwrite> AP</em>.\n\nScope also makes <GameTerm('Biscuits')>."),
	'Icon', "UI/Icons/Perks/HawksEye",
	'Tier', "Personal",
}),
PlaceObj('ModItemCode', { --RecklessAssault
	'name', "RecklessAssault.generated",
	'comment', "Reckless Rush for everyone (no energy cost)",
	'CodeFileName', "CharacterEffect/RecklessAssault.generated.lua",
}),
PlaceObj('ModItemCharacterEffectCompositeDef', { --RecklessAssault
	'Group', "Perk-Personal",
	'Id', "RecklessAssault",
	'Comment', "Stronger R&G",
	'object_class', "Perk",
	'DisplayName', T(478959281152, --[[CharacterEffectCompositeDef RecklessAssault DisplayName]] "Reckless Rush"),
	'Description', T(382145322496, --[[CharacterEffectCompositeDef RecklessAssault Description]] "Make a longer <em>Run and Gun</em> firing more shots.\n\nRequires an SMG equipped."),
	'Icon', "UI/Icons/Perks/RecklessAssault",
	'Tier', "Personal",
}),
PlaceObj('ModItemCode', { --FoxPerk
	'name', "FoxPerk.generated",
	'comment', "Change perk text to accomodate for general use",
	'CodeFileName', "CharacterEffect/FoxPerk.generated.lua",
}),
PlaceObj('ModItemCharacterEffectCompositeDef', { --FoxPerk
	'Group', "Perk-Personal",
	'Id', "FoxPerk",
	'Comment', "Opening attack bonuses",
	'object_class', "Perk",
	'DisplayName', T(674308997473, --[[CharacterEffectCompositeDef FoxPerk DisplayName]] "Striking Looks"),
	'Description', T(966066055142, --[[CharacterEffectCompositeDef FoxPerk Description]] "When opening combat enemies become <GameTerm('Surprised')> instead of <em>Aware</em>.\n\nRetains the <em>AP</em> from the <em>opening attack</em>."),
	'Icon', "UI/Icons/Perks/FoxPerk",
	'Tier', "Personal",
}),
PlaceObj('ModItemCode', { --VengefulTemperament
	'name', "VengefulTemperament.generated",
	'comment', "Change perk text to accomodate for general use",
	'CodeFileName', "CharacterEffect/VengefulTemperament.generated.lua",
}),
PlaceObj('ModItemCharacterEffectCompositeDef', { --VengefulTemperament
	'Group', "Perk-Personal",
	'Id', "VengefulTemperament",
	'Comment', "Last enemy that attacks her has Vengeance",
	'object_class', "Perk",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "OnAttack",
			Handler = function (self, attacker, action, target, results, attack_args)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "OnAttack")
				if not reaction_idx then return end
				
				local function exec(self, attacker, action, target, results, attack_args)
				-- proc
				if target and IsKindOf(target, "Unit") and target:HasStatusEffect("VengeanceTarget" ) then
					attacker:AddStatusEffect("Inspired")
				end
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					if IsKindOf(attacker, "StatusEffectObject") and attacker:HasStatusEffect(id) then
						exec(self, attacker, action, target, results, attack_args)
					end
				else
					exec(self, attacker, action, target, results, attack_args)
				end
				
			end,
			HandlerCode = function (self, attacker, action, target, results, attack_args)
				-- proc
				if target and IsKindOf(target, "Unit") and target:HasStatusEffect("VengeanceTarget" ) then
					attacker:AddStatusEffect("Inspired")
				end
			end,
		}),
		PlaceObj('MsgReaction', {
			Event = "OnAttacked",
			Handler = function (self, attacker, action, target, results, attack_args)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "OnAttacked")
				if not reaction_idx then return end
				
				local function exec(self, attacker, action, target, results, attack_args)
				-- apply debuff
				if not results.miss and not IsMerc(attacker) then
					for _, unit in ipairs(g_Units) do
						unit:RemoveStatusEffect("VengeanceTarget")
					end
					attacker:AddStatusEffect("VengeanceTarget")
				end
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					if IsKindOf(target, "StatusEffectObject") and target:HasStatusEffect(id) then
						exec(self, attacker, action, target, results, attack_args)
					end
				else
					exec(self, attacker, action, target, results, attack_args)
				end
				
			end,
			HandlerCode = function (self, attacker, action, target, results, attack_args)
				-- apply debuff
				if not results.miss and not IsMerc(attacker) then
					for _, unit in ipairs(g_Units) do
						unit:RemoveStatusEffect("VengeanceTarget")
					end
					attacker:AddStatusEffect("VengeanceTarget")
				end
			end,
		}),
	},
	'DisplayName', T(562100828460, --[[CharacterEffectCompositeDef VengefulTemperament DisplayName]] "Hard Feelings"),
	'Description', T(391944412961, --[[CharacterEffectCompositeDef VengefulTemperament Description]] "The last enemy to attack you is marked by <GameTerm('Vengeance')><AdditionalTerm('Inspired')>."),
	'Icon', "UI/Icons/Perks/VengefulTemperament",
	'Tier', "Personal",
}),
PlaceObj('ModItemCode', { --WeGotThis
	'name', "WeGotThis.generated",
	'comment', "Change perk text to accomodate for general use",
	'CodeFileName', "CharacterEffect/WeGotThis.generated.lua",
}),
PlaceObj('ModItemCharacterEffectCompositeDef', { --WeGotThis
	'Group', "Perk-Personal",
	'Id', "WeGotThis",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "tempHp",
			'Value', 10,
			'Tag', "<tempHp>",
		}),
	},
	'Comment', "Gus - Grit on first kill of turn",
	'object_class', "Perk",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "OnKill",
			Handler = function (self, attacker, killedUnits)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "OnKill")
				if not reaction_idx then return end
				
				local function exec(self, attacker, killedUnits)
				if HasPerk(attacker, self.id) and attacker:CanActivatePerk(self.id) then
					local squad = gv_Squads[attacker.Squad]
					local tempHp = self:ResolveValue("tempHp")
					for _, id in ipairs(squad.units) do
						local unit = g_Units[id]
						unit:ApplyTempHitPoints(tempHp)
					end
					attacker:ActivatePerk(self.id)
				end
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					if IsKindOf(attacker, "StatusEffectObject") and attacker:HasStatusEffect(id) then
						exec(self, attacker, killedUnits)
					end
				else
					exec(self, attacker, killedUnits)
				end
				
			end,
			HandlerCode = function (self, attacker, killedUnits)
				if HasPerk(attacker, self.id) and attacker:CanActivatePerk(self.id) then
					local squad = gv_Squads[attacker.Squad]
					local tempHp = self:ResolveValue("tempHp")
					for _, id in ipairs(squad.units) do
						local unit = g_Units[id]
						unit:ApplyTempHitPoints(tempHp)
					end
					attacker:ActivatePerk(self.id)
				end
			end,
		}),
	},
	'DisplayName', T(287973663349, --[[CharacterEffectCompositeDef WeGotThis DisplayName]] "Tango Down"),
	'Description', T(446391581459, --[[CharacterEffectCompositeDef WeGotThis Description]] "<em>Once per turn</em>.\nGrants <em><tempHp></em> <GameTerm('Grit')> to everyone in the squad after the merc kills an enemy."),
	'Icon', "UI/Icons/Perks/WeGotThis",
	'Tier', "Personal",
}),
--IMP Generation
PlaceObj('ModItemCode', {
	'name', "IMP_P",
	'comment', "Changes from Make IMP Great Again",
	'CodeFileName', "Code/IMP.lua",
}),
PlaceObj('ModItemCode', {
	'name', "PDAImpDialog_P",
	'comment', "Changes from Make IMP Great Again",
	'CodeFileName', "Code/PDAImpDialog.lua",
}),
PlaceObj('ModItemCode', {
	'name', "PDAImpResultMerc_P.lua",
	'comment', "Changes from Make IMP Great Again",
	'CodeFileName', "Code/PDAImpResultMerc.lua",
}),
PlaceObj('ModItemLootDef', { --IMP Loadout
	group = "IMP",
	id = "IMP_equipment_basic",
	loot = "all",
	PlaceObj('LootEntryUpgradedWeapon', {
		upgrades = {
			"LROptics",
		},
		weapon = "Gewehr98",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "_762NATO_Basic",
		stack_max = 60,
		stack_min = 60,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Wirecutter",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Crowbar",
		stack_max = 1,
		stack_min = 1,
	}),
}),
--Mercenary Customization
PlaceObj('ModItemLootDef', { --Barry Loadout
	Comment = "merc",
	group = "Mercs",
	id = "Barry",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "DoubleBarrelShotgun",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "_12gauge_Buckshot",
		stack_max = 36,
		stack_min = 36,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "ShapedCharge",
		stack_max = 2,
		stack_min = 2,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "FragGrenade",
		stack_max = 4,
		stack_min = 4,
	}),
	--PlaceObj('LootEntryInventoryItem', {
	--	item = "CustomPDA",
	--}),
}),
PlaceObj('ModItemLootDef', { --Fox Loadout
	Comment = "merc",
	group = "Mercs",
	id = "Fox",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "Winchester_Quest",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "ColtPeacemaker",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "_44CAL_Basic",
		stack_max = 72,
		stack_min = 72,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "MercFirstAid",
	}),
}),
PlaceObj('ModItemLootDef', { --Gus Loadout
	Comment = "merc",
	group = "Mercs",
	id = "Gus",
	loot = "all",
	PlaceObj('LootEntryUpgradedWeapon', {
		upgrades = {
			"LROptics",
		},
		weapon = "Gewehr98",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "_762NATO_Basic",
		stack_max = 60,
		stack_min = 60,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Medkit",
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "KevlarHelmet",
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "KevlarLeggings",
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "KevlarVest",
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Meds",
		stack_max = 16,
		stack_min = 16,
	}),
}),
PlaceObj('ModItemLootDef', { --Ivan Loadout
	Comment = "merc",
	group = "Mercs",
	id = "Ivan",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_762WP_Basic",
		stack_max = 240,
		stack_min = 240,
	}),
	PlaceObj('LootEntryUpgradedWeapon', {
		upgrades = {
			"AK47_VerticalGrip",
		},
		weapon = "AK47",
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "KevlarVest",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "KevlarLeggings",
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "IvanUshanka",
	}),
}),
PlaceObj('ModItemLootDef', { --Livewire Loadout
	Comment = "merc",
	group = "Mercs",
	id = "Livewire",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "UZI",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "UZI",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "_9mm_Basic",
		stack_max = 120,
		stack_min = 120,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "CustomPDA",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Personal_Vicki_CustomTools",
		stack_max = 1,
		stack_min = 1,
	}),
}),
PlaceObj('ModItemLootDef', { --Reaper Loadout
	Comment = "merc",
	group = "Mercs",
	id = "Reaper",
	loot = "all",
	PlaceObj('LootEntryUpgradedWeapon', {
		upgrades = {
			"Suppressor",
		},
		weapon = "M14SAW",
	}),
	PlaceObj('LootEntryUpgradedWeapon', {
		upgrades = {
			"Suppressor",
		},
		weapon = "HiPower",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "_762NATO_Basic",
		stack_max = 60,
		stack_min = 60,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "_9mm_Basic",
		stack_max = 60,
		stack_min = 60,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "FlakVest",
		stack_max = 1,
		stack_min = 1,
	}),
}),
PlaceObj('ModItemLootDef', { --Shadow Loadout
	Comment = "merc",
	group = "Mercs",
	id = "Shadow",
	loot = "all",
	PlaceObj('LootEntryUpgradedWeapon', {
		upgrades = {
			"Suppressor",
		},
		weapon = "MP5",
	}),
	PlaceObj('LootEntryUpgradedWeapon', {
		upgrades = {
			"Suppressor",
		},
		weapon = "HiPower",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "_9mm_Basic",
		stack_max = 120,
		stack_min = 120,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "FlakVest",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Wirecutter",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Crowbar",
		stack_max = 1,
		stack_min = 1,
	}),
}),
PlaceObj('ModItemLootDef', { --Thor Loadout
	Comment = "merc",
	group = "Mercs",
	id = "Thor",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "EndlessKnives",
		stack_max = 1,
		stack_min = 1,
	}),
	--PlaceObj('LootEntryInventoryItem', {
	--	item = "Machete",
	--	stack_max = 1,
	--	stack_min = 1,
	--}),
	PlaceObj('LootEntryInventoryItem', { --GutHookKnife
		item = "GutHookKnife",
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "FlakArmor",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "FlakLeggings",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Medkit",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Meds",
		stack_max = 16,
		stack_min = 16,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Knife",
		stack_max = 2,
		stack_min = 2,
	}),
}),
PlaceObj('ModItemLootDef', { --Ice Loadout
	Comment = "merc",
	group = "Mercs",
	id = "Ice",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "_9mm_Basic",
		stack_max = 120,
		stack_min = 120,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "UZI",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "FlakVest",
		stack_max = 1,
		stack_min = 1,
	}),
}),
PlaceObj('ModItemLootDef', { --Grizzly Loadout
	Comment = "merc",
	group = "Mercs",
	id = "Grizzly",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "RPK74",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "_762WP_Basic",
		stack_max = 240,
		stack_min = 240,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "FlakVest",
		stack_max = 1,
		stack_min = 1,
	}),
}),
--Sector Operations
PlaceObj('ModItemSectorOperation', { --Craft Ammo Operation Speed x3
	Custom = false,
	GetOperationCost = function (self, merc, profession, idx)
		return SectorOperations["CraftCommonBase"].GetOperationCost(self, merc,profession, idx)
	end,
	GetSectorSlots = function (self, prof, sector)
		return 1
	end,
	HasOperation = function (self, sector)
		return sector.RepairShop
	end,
	IsEnabled = function (self, sector)
		return SectorOperations["CraftCommonBase"].IsEnabled(self, sector)
	end,
	OnRemoveOperation = function (self, merc)
		SectorOperations["CraftCommonBase"].OnRemoveOperation(self, merc)
	end,
	OnSetOperation = function (self, merc, arg)
		SectorOperations["CraftCommonBase"].OnSetOperation(self, merc, arg)
	end,
	Parameters = {
		PlaceObj('PresetParamNumber', {
			'Name', "PerTickProgress",
			'Value', 750, --default 250
			'Tag', "<PerTickProgress>",
		}),
		PlaceObj('PresetParamNumber', {
			'Name', "MoneyCostBase",
			'Value', 300,
			'Tag', "<MoneyCostBase>",
		}),
	},
	Professions = {
		PlaceObj('SectorOperationProfession', {
			'id', "Crafter",
			'display_name', T(156589356398, --[[SectorOperation CraftAmmo display_name]] "Crafter"),
			'display_name_all_caps', T(275729540863, --[[SectorOperation CraftAmmo display_name_all_caps]] "CRAFTER"),
			'display_name_plural', T(175076488599, --[[SectorOperation CraftAmmo display_name_plural]] "Crafters"),
			'display_name_plural_all_caps', T(270986184311, --[[SectorOperation CraftAmmo display_name_plural_all_caps]] "CRAFTERS"),
		}),
	},
	ProgressCompleteThreshold = function (self, merc, sector, prediction)
		return SectorOperations["CraftCommonBase"].ProgressCompleteThreshold(self, merc,sector, prediction)
	end,
	ProgressCurrent = function (self, merc, sector, prediction)
		return SectorOperations["CraftCommonBase"].ProgressCurrent(self, merc,sector, prediction)
	end,
	ProgressPerTick = function (self, merc, prediction)
		return SectorOperations["CraftCommonBase"].ProgressPerTick(self, merc, prediction)
	end,
	RequiredResources = {
		"Money",
		"Parts",
	},
	SectorOperationStats = function (self, sector, check_only)
		return SectorOperations["CraftCommonBase"].SectorOperationStats(self, sector, check_only)
	end,
	SortKey = 53,
	Tick = function (self, merc)
		return SectorOperations["CraftCommonBase"].Tick(self, merc)
	end,
	description = T(279115450630, --[[SectorOperation CraftAmmo description]] "Use mechanical Parts and other components to craft different types of ammo. High <em>Explosives</em> stat will increase crafting speed."),
	display_name = T(267678749125, --[[SectorOperation CraftAmmo display_name]] "Craft Ammo"),
	group = "Default",
	icon = "UI/SectorOperations/T_Icon_Activity_Craft_Ammo",
	id = "CraftAmmo",
	image = "UI/Messages/Operations/craft_ammo",
	min_requirement_stat = "Explosives",
	min_requirement_stat_value = 50,
	related_stat = "Explosives",
	short_name = T(149265431435, --[[SectorOperation CraftAmmo short_name]] "Craft"),
}),
PlaceObj('ModItemSectorOperation', { --Craft Explosives Operation Speed x2
	Custom = false,
	GetOperationCost = function (self, merc, profession, idx)
		return SectorOperations["CraftCommonBase"].GetOperationCost(self, merc,profession, idx)
	end,
	GetSectorSlots = function (self, prof, sector)
		return 1
	end,
	HasOperation = function (self, sector)
		return sector.RepairShop
	end,
	IsEnabled = function (self, sector)
		return SectorOperations["CraftCommonBase"].IsEnabled(self, sector)
	end,
	OnRemoveOperation = function (self, merc)
		SectorOperations["CraftCommonBase"].OnRemoveOperation(self, merc)
	end,
	OnSetOperation = function (self, merc, arg)
		SectorOperations["CraftCommonBase"].OnSetOperation(self, merc, arg)
	end,
	Parameters = {
		PlaceObj('PresetParamNumber', {
			'Name', "PerTickProgress",
			'Value', 500, --default 250
			'Tag', "<PerTickProgress>",
		}),
		PlaceObj('PresetParamNumber', {
			'Name', "MoneyCostBase",
			'Value', 300,
			'Tag', "<MoneyCostBase>",
		}),
	},
	Professions = {
		PlaceObj('SectorOperationProfession', {
			'id', "Crafter",
			'display_name', T(156589356398, --[[SectorOperation CraftExplosives display_name]] "Crafter"),
			'display_name_all_caps', T(275729540863, --[[SectorOperation CraftExplosives display_name_all_caps]] "CRAFTER"),
			'display_name_plural', T(175076488599, --[[SectorOperation CraftExplosives display_name_plural]] "Crafters"),
			'display_name_plural_all_caps', T(270986184311, --[[SectorOperation CraftExplosives display_name_plural_all_caps]] "CRAFTERS"),
		}),
	},
	ProgressCompleteThreshold = function (self, merc, sector, prediction)
		return SectorOperations["CraftCommonBase"].ProgressCompleteThreshold(self, merc,sector, prediction)
	end,
	ProgressCurrent = function (self, merc, sector, prediction)
		return SectorOperations["CraftCommonBase"].ProgressCurrent(self, merc,sector, prediction)
	end,
	ProgressPerTick = function (self, merc, prediction)
		return SectorOperations["CraftCommonBase"].ProgressPerTick(self, merc, prediction)
	end,
	RequiredResources = {
		"Money",
		"Parts",
	},
	SectorOperationStats = function (self, sector, check_only)
		return SectorOperations["CraftCommonBase"].SectorOperationStats(self, sector, check_only)
	end,
	SortKey = 56,
	Tick = function (self, merc)
		return SectorOperations["CraftCommonBase"].Tick(self, merc)
	end,
	description = T(941585881415, --[[SectorOperation CraftExplosives description]] "Use mechanical Parts and other components to craft different types of explosives. High <em>Explosives</em> stat will increase crafting speed."),
	display_name = T(499811578131, --[[SectorOperation CraftExplosives display_name]] "Craft Explosives"),
	group = "Default",
	icon = "UI/SectorOperations/T_Icon_Activity_Craft_Explosives",
	id = "CraftExplosives",
	image = "UI/Messages/Operations/craft_explosives",
	min_requirement_stat = "Explosives",
	min_requirement_stat_value = 50,
	related_stat = "Explosives",
	short_name = T(870674025719, --[[SectorOperation CraftExplosives short_name]] "Craft"),
}),
--Loot Boxes
PlaceObj('ModItemLootDef', { --Metaviron
	Comment = "reward",
	group = "Quest and Convo Rewards",
	id = "LootBox01_metaviron",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "MetaviraShot",
		stack_max = 1,
		stack_min = 1,
	}),
}),
PlaceObj('ModItemLootDef', { --Alive Cat (Leadership Magazine, Combat Stim)
	Comment = "reward",
	group = "Quest and Convo Rewards",
	id = "LootBox02_AliveCat",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "CombatStim",
		stack_max = 3,
		stack_min = 3,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Leadership",
		stack_max = 1,
		stack_min = 1,
	}),
}),
PlaceObj('ModItemLootDef', { --Dead Cat
	Comment = "reward, not used",
	group = "Quest and Convo Rewards",
	id = "LootBox03_DeadCat",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "Parts",
		stack_max = 1,
		stack_min = 1,
	}),
}),
PlaceObj('ModItemLootDef', { --Grenades
	Comment = "reward",
	group = "Quest and Convo Rewards",
	id = "LootBox04_grenades",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "FragGrenade",
		stack_max = 2,
		stack_min = 2,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "HE_Grenade",
		stack_max = 2,
		stack_min = 2,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "ConcussiveGrenade",
		stack_max = 2,
		stack_min = 2,
	}),
}),
PlaceObj('ModItemLootDef', { --Ammo
	Comment = "reward",
	group = "Quest and Convo Rewards",
	id = "LootBox05_ammo",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_762NATO_AP",
		stack_max = 90,
		stack_min = 90,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_762NATO_HP",
		stack_max = 90,
		stack_min = 90,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_762NATO_Match",
		stack_max = 90,
		stack_min = 90,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_762NATO_Tracer",
		stack_max = 90,
		stack_min = 90,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_556_AP",
		stack_max = 90,
		stack_min = 90,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_556_HP",
		stack_max = 90,
		stack_min = 90,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_556_Tracer",
		stack_max = 90,
		stack_min = 90,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_762WP_AP",
		stack_max = 90,
		stack_min = 90,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_762WP_HP",
		stack_max = 90,
		stack_min = 90,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_762WP_Match",
		stack_max = 90,
		stack_min = 90,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_762WP_Tracer",
		stack_max = 90,
		stack_min = 90,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "_556_Match",
		stack_max = 90,
		stack_min = 90,
	}),
}),
PlaceObj('ModItemLootDef', { --Weapon
	Comment = "reward",
	group = "Quest and Convo Rewards",
	id = "LootBox06_AK",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		RandomizeCondition = true,
		guaranteed = true,
		item = "AKSU",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		RandomizeCondition = true,
		guaranteed = true,
		item = "M41Shotgun",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		RandomizeCondition = true,
		guaranteed = true,
		item = "AUG",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		RandomizeCondition = true,
		guaranteed = true,
		item = "HK21",
		stack_max = 1,
		stack_min = 1,
	}),
}),
PlaceObj('ModItemLootDef', { --Magazines
	Comment = "reward",
	group = "Quest and Convo Rewards",
	id = "LootBox07_mag",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Agility",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		generate_chance = 100,
		guaranteed = true,
		item = "SkillMag_Agility",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		generate_chance = 100,
		guaranteed = true,
		item = "SkillMag_Dexterity",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		generate_chance = 100,
		guaranteed = true,
		item = "SkillMag_Explosives",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		generate_chance = 100,
		guaranteed = true,
		item = "SkillMag_Health",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		generate_chance = 100,
		guaranteed = true,
		item = "SkillMag_Leadership",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		generate_chance = 100,
		guaranteed = true,
		item = "SkillMag_Marksmanship",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		generate_chance = 100,
		guaranteed = true,
		item = "SkillMag_Mechanical",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		generate_chance = 100,
		guaranteed = true,
		item = "SkillMag_Medical",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		generate_chance = 100,
		guaranteed = true,
		item = "SkillMag_Strength",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		generate_chance = 100,
		guaranteed = true,
		item = "SkillMag_Wisdom",
		stack_max = 1,
		stack_min = 1,
	}),
}),
PlaceObj('ModItemLootDef', { --Tools
	Comment = "reward",
	group = "Quest and Convo Rewards",
	id = "LootBox08_junk",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		item = "Wirecutter",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "OpticalLens",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "FineSteelPipe",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Microchip",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Lockpick",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Crowbar",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		item = "Detonator",
		stack_max = 1,
		stack_min = 1,
	}),
}),
PlaceObj('ModItemLootDef', { --Parts
	Comment = "reward",
	group = "Quest and Convo Rewards",
	id = "LootBox09_parts",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "Parts",
		stack_max = 40,
		stack_min = 40,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Mechanical",
		stack_max = 1,
		stack_min = 1,
	}),
}),
PlaceObj('ModItemLootDef', { --Diamonds
	Comment = "reward",
	group = "Quest and Convo Rewards",
	id = "LootBox10_diamonds",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "TinyDiamonds",
		stack_max = 2,
		stack_min = 2,
	}),
}),
PlaceObj('ModItemLootDef', {
	group = "Quest and Convo Rewards",
	id = "JunkShop_Optional",
	PlaceObj('LootEntryLootDef', {
		loot_def = "IndustrialContainer_Explosives",
		weight = 2000,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "IndustrialContainer_Upgrades",
		weight = 2000,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "ExplosiveComponents",
		weight = 3000,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "Container_MedStimms",
		weight = 2000,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "RuinsTreasureRandom",
	}),
}),
PlaceObj('ModItemLootDef', {
	group = "MapContainers - Sector Specific",
	id = "CacaoCityJunkShop_CraftingParts",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "Parts",
		stack_max = 100,
		stack_min = 100,
	}),
}),
PlaceObj('ModItemLootDef', {
	group = "MapContainers - Sector Specific",
	id = "CacaoCityJunkShop_DetonatorParts",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "Detonator",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryLootDef', {
		loot_def = "CacaoCityJunkShop_DetonatorParts_RandomDetonator",
	}),
}),
PlaceObj('ModItemLootDef', {
	group = "MapContainers - Sector Specific",
	id = "CacaoCityJunkShop_DetonatorParts_RandomDetonator",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "Combination_Detonator_Time",
		stack_max = 1,
		stack_min = 1,
		weight = 1000000,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "Combination_Detonator_Remote",
		stack_max = 1,
		stack_min = 1,
		weight = 1500000,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "Combination_Detonator_Proximity",
		stack_max = 1,
		stack_min = 1,
		weight = 700000,
	}),
}),
PlaceObj('ModItemLootDef', {
	Comment = "vendor",
	group = "MapContainers - Sector Specific",
	id = "CacaoCityJunkShop_SkillMags",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Agility",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Dexterity",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Explosives",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Health",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Leadership",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Marksmanship",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Mechanical",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Medical",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Strength",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SkillMag_Wisdom",
		stack_max = 1,
		stack_min = 1,
	}),
}),
PlaceObj('ModItemLootDef', {
	Comment = "list",
	group = "MapContainers - Sector Specific",
	id = "CacaoCityJunkShop_Something",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "TearGasGrenade",
		stack_max = 2,
		stack_min = 2,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "SmokeGrenade",
		stack_max = 2,
		stack_min = 2,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "ToxicGasGrenade",
		stack_max = 2,
		stack_min = 2,
	}),
}),
PlaceObj('ModItemLootDef', {
	group = "MapContainers - Sector Specific",
	id = "CacaoCityJunkShop_SpecialParts",
	loot = "all",
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "OpticalLens",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "Microchip",
		stack_max = 1,
		stack_min = 1,
	}),
	PlaceObj('LootEntryInventoryItem', {
		guaranteed = true,
		item = "FineSteelPipe",
		stack_max = 1,
		stack_min = 1,
	}),
}),
}
