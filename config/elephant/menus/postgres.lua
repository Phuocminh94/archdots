Name = "postgres"
NamePretty = "Postgres"
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "tools"

function GetEntries()
	return {
		{
			Text = "Setup postgres",
			Icon = "",
			Actions = {
				["postgres-setup"] = "myterm --class local.floating -e postgres-setup",
			},
		},
		{
			Text = "Restore database",
			Icon = "",
			Actions = {
				["postgres-restore-db"] = "myterm --class local.floating -e postgres-restore-db",
			},
		},
		{
			Text = "Backup database",
			Icon = "",
			Actions = {
				["postgres-backup"] = "myterm --class local.floating -e postgres-backup",
			},
		},
	}
end
