BATTLE_SCRIPT = {}

    function BATTLE_SCRIPT.MegaIfNotMegaEvent(owner, ownerChar, context, args) --doesnt work atm idk why
		local species = context.User.BaseForm.Species
		if (context.User.BaseForm.Form == 0) then
			local effect = PMDC.Dungeon.FormChoiceEvent(species, true)
			TASK:WaitTask(effect:Apply(owner, ownerChar, context))
		end
	end
   