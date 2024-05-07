
STATUS_SCRIPT = {}

function STATUS_SCRIPT.Mega_Devolve(owner, ownerChar, context, args)
	context.User.BaseForm = RogueEssence.Dungeon.MonsterID(context.User.BaseForm.Species, 0, context.User.BaseForm.Skin, context.User.BaseForm.Gender)
	context.User:RestoreForm()
	_DUNGEON:LogMsg(RogueEssence.Text.FormatGrammar(RogueEssence.StringKey("MSG_FORM_CHANGE"):ToLocal(), context.User:GetDisplayName(false)))
end