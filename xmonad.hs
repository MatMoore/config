import XMonad
import XMonad.Config.Gnome
import XMonad.Actions.CycleWS
import XMonad.Util.EZConfig (additionalKeysP,additionalKeys)
import XMonad.Config.Desktop
import XMonad.Layout.Tabbed
import XMonad.Layout.NoBorders

myWorkspaces = ["α quadrant", "β quadrant", "γ quadrant", "δ quadrant"]

myLayouts =
	-- Layouts with panels
	(desktopLayoutModifiers $ smartBorders $ panelLayouts)
	-- Full screen not including panels
	||| (smartBorders Full)
	where panelLayouts =
		(Mirror half)
		||| half
		||| Full
--		||| simpleTabbed
		where
			half = Tall 1 (3/100) (1/2)

main = xmonad $ gnomeConfig
	{
	workspaces = myWorkspaces,
	layoutHook = myLayouts
	}

	`additionalKeysP`
	[
	-- moving workspaces
	("M-<Left>",    prevWS )
	, ("M-<Right>",   nextWS )
	, ("M-S-<Left>",  shiftToPrev )
	, ("M-S-<Right>", shiftToNext )
	]
	`additionalKeys`
	[
		((0, xK_Print), spawn "gnome-screenshot")
	]
