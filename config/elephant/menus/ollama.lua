Name = "ollama"
NamePretty = "Ollama"
FixedOrder = true
HideFromProviderlist = true
Parent = "tools"

function GetEntries()
	return {
		{
			Text = "Chat",
			Actions = {
				["chat"] = "myterm --class local.floating -e ollama-chat --chat",
			},
		},
		{
			Text = "Select default model",
			Actions = {
				["select-default"] = "myterm --class local.floating -e ollama-chat --select",
			},
		},
		{
			Text = "List models",
			Actions = {
				["list-models"] = "myterm --class local.floating -e ollama-chat --list",
			},
		},
		{
			Text = "Pull model",
			Actions = {
				["pull-model"] = "myterm --class local.floating -e ollama-chat --pull",
			},
		},
		{
			Text = "Remove model",
			Actions = {
				["remove-model"] = "myterm --class local.floating -e ollama-chat --rm",
			},
		},
		{
			Text = "Install Ollama",
			Actions = {
				["install"] = "myterm --class local.floating -e ollama-chat --install",
			},
		},
	}
end
