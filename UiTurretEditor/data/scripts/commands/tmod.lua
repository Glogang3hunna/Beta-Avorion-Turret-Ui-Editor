
function execute(PlayerID, Command, Action, ...)

	local ScriptFile = "mods/UiTurretEditor/Commands/ui"

	if(not onServer())
	then return end

	if(Player(PlayerID):hasScript(ScriptFile))
	then
		print("[UiTurretEditor] Clearing Old Instance...")
		Player(PlayerID):removeScript(ScriptFile)
	end

	print("[UiTurretEditor] Adding New Instance...")
	Player(PlayerID):addScriptOnce(ScriptFile,Action,...)

	return 0, "", ""
end

function getDescription()
	return "[beta] Activates turret editor"
end

function getHelp()
	return "[beta] Activates turret editor. Usage:\n/tmod\n"
end
