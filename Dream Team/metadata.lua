return PlaceObj('ModDef', {
	'title', "Dream Team",
	'description', "Personal Preferences.",
	'last_changes', "added character effects",
	'id', "bNYNSJs",
--	'image', "Mod/bNYNSJs/Images/LCJzg1689997301.png",
	'content_path', "Mod/bNYNSJs/",
	'author', "daisho",
	'version_major', 2,
	'version_minor', 1,
	'version', 001,
	'lua_revision', 233360,
	'saved_with_revision', 339125,
	'code', {
		--Item Effects
		"ItemEffect/Personal_Vicki_CustomTools.generated.lua",
		--"ItemEffect/CustomPDA.generated.lua",
		"ItemEffect/IvanUshanka.generated.lua",
		"ItemEffect/EndlessKnives.generated.lua",
		"ItemEffect/GutHookKnife.generated.lua",
		"ItemEffect/PierreMachete.generated.lua",
		--Character Effects
		"CharacterEffect/BuildingConfidence.generated.lua",
		"CharacterEffect/HawksEye.generated.lua",
		"CharacterEffect/JackOfAllTrades.generated.lua",
		"CharacterEffect/WeaponPersonalization.generated.lua",
		"CharacterEffect/RecklessAssault.generated.lua",
		"CharacterEffect/FoxPerk.generated.lua",
		"CharacterEffect/VengefulTemperament.generated.lua",
		"CharacterEffect/WeGotThis.generated.lua",
		--"CharacterEffect/InnerInfo.generated.lua",
		--"CharacterEffect/NaturalHealing.generated.lua",
		--Other Effects
		"Code/RecklessAssault.NoEnergy.lua",
		--"Code/InnerInfo.OtherMercs.lua",
		--Mercenaries - Recruits
		"1_Recruit/Steroid.generated.lua", --yep
		"1_Recruit/Fox.generated.lua", --done
		"1_Recruit/Mouse.generated.lua", --yep
		"1_Recruit/Omryn.generated.lua", --yep
		"1_Recruit/Livewire.generated.lua", --done
		"1_Recruit/Kalyna.generated.lua", --yep
		"1_Recruit/Igor.generated.lua", --yep
		"1_Recruit/MD.generated.lua", --yep
		"1_Recruit/Grizzly.generated.lua", --yep
		"1_Recruit/Barry.generated.lua", --done
		--Mercenaries - Veterans
		"2_Veteran/Fidel.generated.lua", --yep
		"2_Veteran/Raven.generated.lua", --yep
		"2_Veteran/Thor.generated.lua", --done
		"2_Veteran/Wolf.generated.lua", --yep
		"2_Veteran/Ice.generated.lua", --yep
		"2_Veteran/Blood.generated.lua", --yep
		"2_Veteran/Meltdown.generated.lua", --yep
		"2_Veteran/Buns.generated.lua", --yep
		"2_Veteran/Grunty.generated.lua", --yep
		--Mercenaries - Elite
		"3_Elite/Ivan.generated.lua", --done
		"3_Elite/Vicki.generated.lua", --yep
		"3_Elite/Raider.generated.lua", --yep
		"3_Elite/Tex.generated.lua", --yep
		"3_Elite/Nails.generated.lua", --yep
		"3_Elite/DrQ.generated.lua", --yep
		"3_Elite/Red.generated.lua", --yep
		"3_Elite/Hitman.generated.lua", --yep
		--Mercenaries - Legendary
		"4_Legendary/Gus.generated.lua", --done
		"4_Legendary/Magic.generated.lua", --yep
		"4_Legendary/Scully.generated.lua", --yep
		"4_Legendary/Sidney.generated.lua", --yep
		"4_Legendary/Reaper.generated.lua", --done
		"4_Legendary/Shadow.generated.lua", --done
		"4_Legendary/Scope.generated.lua", --yep
		"4_Legendary/Fauda.generated.lua", --yep
		"4_Legendary/Len.generated.lua", --yep
		--Mercenaries - RPC
		"5_RPC/Flay.generated.lua", --Veteran
		"5_RPC/Larry_Clean.generated.lua", --yep
		"5_RPC/Larry.generated.lua", --yep
		"5_RPC/PierreMerc.generated.lua", --yep
		"5_RPC/Smiley.generated.lua", --yep
		"5_RPC/Spike.generated.lua", --yep
		--IMP Generation
		"Code/IMP.lua",
		"Code/PDAImpDialog.lua",
		"Code/PDAImpResultMerc.lua",
	},
	'loctables', {
		{
			filename = "Localization/Game.csv",
			language = "English",
		},
	},

	'saved', 1692389115,
})