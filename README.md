# windowsxp themes for Omarchy
Install:  Jus' figure it out.  Should be straight forward <clone repo;copy/paste dirpaths>.

## The hooks dir
theme-set resets the background symlink so the wallpaper does not advance when
switching between the windowsxp variants.

theme-set.d/bar-position docks the shell bar at the bottom for the windowsxp
themes (XP taskbar) and swaps the stock launcher for the green XP Start button.
Every other theme gets the top bar and the stock launcher back.

## XP Start button
plugins/windowsxp.start/ is a bar-widget that draws the green Windows-XP-style
Start button (left-click opens the Omarchy menu, right-click opens a terminal).
Drop the directory into ~/.config/omarchy/plugins/ and run
`omarchy-shell shell rescanPlugins` once. The bar-position hook wires it into
the bar automatically when a windowsxp theme is active.

Note: rescanPlugins only picks up newly added/removed plugins. Edits to an
existing plugin's QML are not re-read (Quickshell's file watcher is disabled,
and the widget component is reused when its URL is unchanged), so restart the
shell with `omarchy-restart-shell` to see them.

## Helix (non-omarchy users)
Each theme ships a `helix.toml` in its theme dir.  Copy it to
`~/.config/helix/themes/windowsxp.toml` (or `windowsxp-green.toml`)
and add `theme = "windowsxp"` to `~/.config/helix/config.toml`.

## Make Vim theme file work
silent! source ~/.local/state/omarchy/current/theme/vimrc\
You need to add the above line to your .vimrc file.

![showcase image of what the blue theme looks like](showcase.png)

![showcase image of what the green theme looks like](showcase-green.png)

# License
You must say "Deus vult" out loud when you clone this directory, if you
do not clone, well then you are in luck (or out of luck, however you
wish to think of it).

