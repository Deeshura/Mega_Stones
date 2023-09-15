BATTLE_SCRIPT = {}

AnchorStateType = luanet.import_type('PMDC.Dungeon.AnchorState')


    function BATTLE_SCRIPT.CancelIfMegaEvent(owner, ownerChar, context, args) --
		if (context.User.BaseForm.Form ~= 0) then
			_DUNGEON:LogMsg(RogueEssence.Text.FormatGrammar(RogueEssence.StringKey("MSG_ITEM_NO_EFFECT"):ToLocal(), context.User:GetDisplayName(true))) --credits to Trio- for being way smarter than i am
			context.CancelState.Cancel = true
		end
	end

	function BATTLE_SCRIPT.MegaKBEvent(owner, ownerChar, context, args) --need to create a copy of knockback event in lua, that also grabs its targets outside of the context state
		local targets = RogueEssence.Dungeon.AreaAction.GetTargetsInArea(context.User, context.User.CharLoc, RogueEssence.Dungeon.Alignment.Foe, 1) --get adjacent targets
        if context.Target.CharStates:Contains(luanet.ctype(AnchorStateType)) then --knock back a number of spaces
            _DUNGEON:LogMsg(RogueEssence.Text.FormatGrammar(RogueEssence.StringKey("MSG_ANCHORED"):ToLocal(), context.Target:GetDisplayName(false)))
			return
        else
			local dir = ZoneManager.Instance.CurrentMap:GetClosestDir8(context.User.CharLoc, context.Target.CharLoc)
            if (dir == RogueElements.Dir8.None) then
                dir = context.User.CharDir:Reverse()
            TASK:WaitTask(DungeonScene.Instance:KnockBack(context.Target, dir, Distance));
		end
	end
