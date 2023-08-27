BATTLE_SCRIPT = {}

    function BATTLE_SCRIPT.MegaIfNotMegaEvent(owner, ownerChar, context, args) --stillnotworking
		if (context.User.BaseForm.Form != 0) then
			UI:WaitShowDialogue("It won't have any effect on ".. context.User.GetDisplayName(true) ..".")
			TASK:WaitTask(context.CancelState.Cancel = true)
		end
	end
   