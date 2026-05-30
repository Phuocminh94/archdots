Name = "screenshots"
NamePretty = "Screenshots"
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "capture"

-- Reload: pkill elephant && elephant &
function GetEntries()
	return {
		{
			Text = "Area → Clipboard",
			Actions = {
				["area_clipboard"] = "walker --close && sleep 0.2 && area=$(slurp) && sleep 0.2 && grim -g \"$area\" - | wl-copy && notify-send 'Copied Area'",
			},
		},
		{
			Text = "Area → File",
			Actions = {
				["area_file"] = "walker --close && sleep 0.2 && area=$(slurp) && sleep 0.2 && grim -g \"$area\" ~/Pictures/$(date +%Y-%m-%d_%H-%M-%S).png && notify-send 'Saved Screenshot'",
			},
		},
		{
			Text = "Window → Clipboard",
			Actions = {
				["window_clipboard"] = "walker --close && sleep 0.2 && area=$(hyprctl -j clients | jq -r '.[] | \"\\(.at[0]),\\(.at[1]) \\(.size[0])x\\(.size[1])\"' | slurp -r) && sleep 0.2 && grim -g \"$area\" - | wl-copy && notify-send 'Copied Window'",
			},
		},
		{
			Text = "Window → File",
			Actions = {
				["window_file"] = "walker --close && sleep 0.2 && area=$(hyprctl -j clients | jq -r '.[] | \"\\(.at[0]),\\(.at[1]) \\(.size[0])x\\(.size[1])\"' | slurp -r) && sleep 0.2 && grim -g \"$area\" ~/Pictures/$(date +%Y-%m-%d_%H-%M-%S).png && notify-send 'Saved Window'",
			},
		},
		{
			Text = "Fullscreen → Clipboard",
			Actions = {
				["fullscreen_clipboard"] = "walker --close && sleep 0.2 && grim - | wl-copy && notify-send 'Copied Fullscreen'",
			},
		},
		{
			Text = "Fullscreen → File",
			Actions = {
				["fullscreen_file"] = "walker --close && sleep 0.2 && grim ~/Pictures/$(date +%Y-%m-%d_%H-%M-%S).png && notify-send 'Saved Fullscreen'",
			},
		},
	}
end
