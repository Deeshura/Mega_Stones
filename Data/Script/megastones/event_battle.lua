

AnchorStateType = luanet.import_type('PMDC.Dungeon.AnchorState')


    function BATTLE_SCRIPT.CancelIfMegaEvent(owner, ownerChar, context, args) --
		if (context.User.BaseForm.Form ~= 0) then --fun fact; this also prevents glowbro from mega evolving! saving me much stress
			_DUNGEON:LogMsg(RogueEssence.Text.FormatGrammar(RogueEssence.StringKey("MSG_ITEM_NO_EFFECT"):ToLocal(), context.User:GetDisplayName(true))) --credits to Trio- for being way smarter than i am
			context.CancelState.Cancel = true
		end
	end

	
    function BATTLE_SCRIPT.CancelIfWrongMon(owner, ownerChar, context, args) --
		if (context.User.BaseForm.Species ~= table.concat(args)) then
			_DUNGEON:LogMsg(RogueEssence.Text.FormatGrammar(RogueEssence.StringKey("MSG_ITEM_NO_EFFECT"):ToLocal(), context.User:GetDisplayName(true))) --credits to Trio- for being way smarter than i am
			context.CancelState.Cancel = true
		end
	end
	
	function BATTLE_SCRIPT.Mega_Evolve(owner, ownerChar, context, args)
		mega = RogueEssence.Dungeon.MonsterID(context.User.BaseForm.Species, 1, context.User.BaseForm.Skin, context.User.BaseForm.Gender)
		context.User:Transform(mega)
		_DUNGEON:LogMsg(RogueEssence.Text.FormatGrammar(RogueEssence.StringKey("MSG_FORM_CHANGE"):ToLocal(), context.User:GetDisplayName(false)))
	end
	
	function BATTLE_SCRIPT.Mega_Evolve_Y(owner, ownerChar, context, args)
		mega = RogueEssence.Dungeon.MonsterID(context.User.BaseForm.Species, 2, context.User.BaseForm.Skin, context.User.BaseForm.Gender)
		context.User:Transform(mega)
		_DUNGEON:LogMsg(RogueEssence.Text.FormatGrammar(RogueEssence.StringKey("MSG_FORM_CHANGE"):ToLocal(), context.User:GetDisplayName(false)))
	end
