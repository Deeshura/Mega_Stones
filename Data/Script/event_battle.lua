BATTLE_SCRIPT = {}

    function BATTLE_SCRIPT.CancelIfMegaEvent(owner, ownerChar, context, args) --
		if (context.User.BaseForm.Form ~= 0) then
			_DUNGEON:LogMsg(RogueEssence.Text.FormatGrammar(RogueEssence.StringKey("MSG_ITEM_NO_EFFECT"):ToLocal(), context.User:GetDisplayName(true))) --credits to Trio- for being way smarter than i am
			context.CancelState.Cancel = true
		end
	end
   