;; cmd.c is the cheat sheet for this file

;; (defun nethack-key-command (command)
;;   "Qualify a key COMMAND and send it to the Nethack process."
;;   (interactive)
;;   (nethack-handle-command (symbol-name command)))

;; (setq nethack-command-alist
;;   '((doidtrap "Show the type of a trap" "^")
;;     (doapply  "Apply (use) a tool" "a")))

;; (assoc 'doidtrap nethack-command-alist)

;;(defun nethack-command-redo-previous ()
;;   "^A      Redo the previous command"
;;   )

;; (defun nethack-command-kick ()
;;   "^D      Kick something (usually a door, chest, or box)"
;;   )

;; (defun nethack-command-create-monster ()
;;   "^G      Create a monster (available in debug mode only)"
;;   )

;; (defun nethack-command-identify-all-items ()
;;   "^I      Identify all items (available in debug mode only)"
;;   )

;; (defun nethack-command-previous-message ()
;;   "^P      Toggle through previously displayed game messages"
;;   )

;; (defun nethack-command-redraw-screen ()
;;   "^R      Redraw screen"
;;   )

;; (defun nethack-command-teleport-around-level ()
;;   "^T      Teleport around level"
;;   )

;; (defun nethack-command-suspend-game ()
;;   "^Z      Suspend game (only if defined)"
;;   )

(defun nethack-command-identify-trap ()
  "^       Show the type of a trap"
  (interactive)
  (nethack-handle-command "doidtrap"))


(defun nethack-command-apply ()
  "a       Apply (use) a tool"
  (interactive)
  (nethack-handle-command "doapply"))

(defun nethack-command-remove-all-armor ()
  "A       Remove all armor"
  (interactive)
  (nethack-handle-command "doddoremarm"))

;; (defun nethack-command-cancel ()
;;   "^[      Cancel command"
;;   )

;; (defun nethack-command-southwest-one-space ()
;;   "b       Go southwest 1 space"
;;   )

;; (defun nethack-command-southwest-until-ontop ()
;;   "B       Go southwest until you are on top of something"
;;   )

;; (defun nethack-command-southwest-until-near ()
;;   "^B      Go southwest until you are near something"
;;   )

(defun nethack-command-close-door ()
  "c       Close a door"
  (interactive)
  (nethack-handle-command "doclose"))

;; (defun nethack-command-call-monster ()
;;   "C       Call (name) a particular monster"

;;   )

(defun nethack-command-drop ()
  "d       Drop an item"
  (interactive)
  (nethack-handle-command dodrop))

(defun nethack-command-drop-specific-item ()
  "D       Drop specific item types"
  (interactive)
  (nethack-handle-command "doddrop"))

(defun nethack-command-eat ()
  "e       Eat something"
  (interactive)
  (nethack-handle-command "doeat"))

(defun nethack-command-engrave ()
  "E       Engrave writing on the floor"
  (interactive)
  (nethack-handle-command "doengrave"))

(defun nethack-command-fire ()
  "f       Fire ammunition from quiver"
  (interactive)
  (nethack-handle-command "dofire"))

;; (defun nethack-command-force-fight ()
;;   "F       Followed by direction, fight a monster (even if you don't sense it)"
;;   )

;; (defun nethack-command-move-until-near ()
;;   "g       Followed by direction, move until you are near something"
;;   )

;; (defun nethack-command-move ()
;;   "G       Followed by direction, same as control-direction"
;;   )

;; (defun nethack-command-west-one-space ()
;;   "h       Go west 1 space"
;;   )

;; (defun nethack-command-west-until-ontop ()
;;   "H       Go west until you are on top of something"
;;   )
;;
;; (defun nethack-command-west-until-near ()
;;   "^H      Go west until you are near something"
;;   )

(defun nethack-command-inventory ()
  "i       Show your inventory"
  (interactive)
  (nethack-handle-command "ddoinv"))

(defun nethack-command-type-inventory ()
  "I       Inventory specific item types"
  (interactive)
  (nethack-handle-command "dotypeinv"))

;; (defun nethack-command-south ()
;;   "j       Go south 1 space (or if number_pad is on, jump to another location)"
;;   )

;; (defun nethack-command-south-until-ontop ()
;;   "J       Go south until you are on top of something"
;;   )

;; (defun nethack-command-south-until-near ()
;;   "^J      Go south until you are near something"

;;   )

;; (defun nethack-command-north ()
;;   "k       Go north 1 space (or if number_pad is on, kick something)"
;;   )

;; (defun nethack-command-north-until-ontop ()
;;   "K       Go north until you are on top of something"
;;   )

;; (defun nethack-command-north-until-near ()
;;   "^K      Go north until you are near something"
;;   )

;; (defun nethack-command-east ()
;;   "l       Go east 1 space (or if number_pad is on, loot a box on the floor)"
;;   )

;; (defun nethack-command-east-until-ontop ()
;;   "L       Go east until you are on top of something"
;;   )

;; (defun nethack-command-east-until-near ()
;;   "^L      Go east until you are near something"
;;   )

;; (defun nethack-command-move-no-pickup-or-fight ()
;;   "m       Followed by direction, move without picking anything up or fighting"
;;   )

;; (defun nethack-command-move-distance-no-pickup ()
;;   "M       Followed by direction, move a distance without picking anything up"
;;   )

;; (defun nethack-command-southeast ()
;;   "n       Go southeast 1 space"
;;   )

;; (defun nethack-command-southeast-until-ontop ()
;;   "N       Go southeast until you are on something (if number_pad, name an object)"
;;   )

;; (defun nethack-command-southeast-until-near ()
;;   "^N      Go southeast until you are near something"
;;   )

(defun nethack-command-open ()
  "o       Open a door"
  (interactive)
  (nethack-handle-command "doopen"))

(defun nethack-command-settings ()
  "O       Show option settings, possibly change them"
  (interactive)
  (nethack-handle-command "doset"))

(defun nethack-command-pay ()
  "p       Pay your shopping bill"
  (interactive)
  (nethack-handle-command "dopay"))

(defun nethack-command-put-on ()
  "P       Put on an accessory (ring, amulet, etc)"
  (interactive)
  (nethack-handle-command "doputon"))

(defun nethack-command-quaff ()
  "q       Quaff (drink) something"
  (interactive)
  (nethack-handle-command "dodrink"))

(defun nethack-command-select-ammo-for-quiver ()
  "Q       Select ammunition for quiver"
  (interactive)
  (nethack-handle-command "dowieldquiver"))

(defun nethack-command-read ()
  "r       Read a scroll or spellbook"
  (interactive)
  (nethack-handle-command "doread"))

(defun nethack-command-remove-accessory ()
  "R       Remove an accessory (ring, amulet, etc)"
  (interactive)
  (nethack-handle-command "doremring"))

(defun nethack-command-search ()
  "s       Search for traps and secret doors"
  (interactive)
  (nethack-handle-command "dosearch"))

(defun nethack-command-save-game ()
  "S       Save the game"
  (interactive)
  (nethack-handle-command "dosave"))

(defun nethack-command-throw ()
  "t       Throw something"
  (interactive)
  (nethack-handle-command "dothrow"))

(defun nethack-command-remove-single-armor ()
  "T       Take off one piece of armor"
  (interactive)
  (nethack-handle-command "dotakeoff"))

;; (defun nethack-command-northeast-one-space ()
;;   "u       Go northeast 1 space (or if number_pad is on, untrap something)"
;;   )

;; (defun nethack-command-northeast-until-ontop ()
;;   "U       Go northeast until you are on top of something"
;;   )

;; (defun nethack-command-northeast-until-near ()
;;   "^U      Go northeast until you are near something"
;;   )

(defun nethack-command-version ()
  "v       Show version"
  (interactive)
  (nethack-handle-command "doversion"))

(defun nethack-command-version-and-history ()
  "V       Show long version and game history"
  (interactive)
  (nethack-handle-command "dohistory"))

(defun nethack-command-wield ()
  "w       Wield (put in use) a weapon"
  (interactive)
  (nethack-handle-command "dowield"))

(defun nethack-command-wear-armor ()
  "W       Wear a piece of armor"
  (interactive)
  (nethack-handle-command "dowear"))

(defun nethack-command-swap-weapons ()
  "x       Swap wielded and secondary weapons"
  (interactive)
  (nethack-handle-command "doswapweapon"))

(defun nethack-command-explore-mode ()
  "X       Enter explore (discovery) mode (only if defined)"
  (interactive)
  (nethack-handle-command "enter_explore_mode"))

;; (defun nethack-command-northwest-one-space ()
;;   "y       Go northwest 1 space"
;;   )

;; (defun nethack-command-northwest-until-ontop ()
;;   "Y       Go northwest until you are on top of something"
;;   )

;; (defun nethack-command-northwest-until-near ()
;;   "^Y      Go northwest until you are near something"
;;   )

(defun nethack-command-zap-wand ()
  "z       Zap a wand"
  (interactive)
  (nethack-handle-command "dozap"))

(defun nethack-command-cast-spell ()
  "Z       Zap (cast) a spell"
  (interactive)
  (nethack-handle-command "docast"))

(defun nethack-command-up ()
  "<       Go up a staircase"
  (interactive)
  (nethack-handle-command "doup"))

(defun nethack-command-down ()
  ">       Go down a staircase"
  (interactive)
  (nethack-handle-command "dodown"))

(defun nethack-command-what-is-symbol ()
  "/       Show what type of thing a symbol corresponds to"
  (interactive)
  (nethack-handle-command "dowhatis"))

(defun nethack-command-help ()
  "?       Give a help message"
  (interactive)
  (nethack-handle-command "dohelp"))

(defun nethack-command-command-help ()
  "&       Tell what a command does"
  (interactive)
  (nethack-handle-command "dowhatdoes"))

(defun nethack-command-shell-escape ()
  "!       Do a shell escape (only if defined)"
  (interactive)
  (nethack-handle-command "dosh"))

(defun nethack-command-show-discoveries ()
  "\       Show what object types have been discovered"
  (interactive)
  (nethack-handle-command "dodiscovered"))

(defun nethack-command-rest-one-move ()
  ".       Rest one move while doing nothing"
  (interactive)
  (nethack-handle-command "donull"))

(defun nethack-command-rest-one-move ()
  "<space>     Rest one move while doing nothing (if rest_on_space option is on)"
  (interactive)
  (nethack-handle-command "donull"))

(defun nethack-command-look-here ()
  ":       Look at what is on the floor"
  (interactive)
  (nethack-handle-command "dolook"))

(defun nethack-command-what-is-map-piece ()
  "; Show what type of thing a map symbol on the level corresponds to"
  (interactive)
  (nethack-handle-command "doquickwhatis"))

(defun nethack-command-pick-up ()
  ",       Pick up things at the current location"
  (interactive)
  (nethack-handle-command "dopickup"))

(defun nethack-command-toggle-pickup ()
  "@       Toggle the pickup option on/off"
  (interactive)
  (nethack-handle-command "dotogglepickup"))

;; (defun nethack-command-show-wielded-weapon ()
;;   ")       Show the weapon currently wielded"
;;   )

;; (defun nethack-command-show-worn-armor ()
;;   "[       Show the armor currently worn"
;;   )

;; (defun nethack-command-show-worn-rings ()
;;   "=       Show the ring(s) currently worn"
;;   )

;; (defun nethack-command-show-worn-amulet ()
;;   "\"       Show the amulet currently worn"
;;   )

;; (defun nethack-command-show-tool-in-use ()
;;   "(       Show the tools currently in use"
;;   )

(defun nethack-command-show-all-equipment-in-use ()
  "*       Show all equipment in use (combination of the ),[,=,\",( commands)"
  (interactive)
  (nethack-handle-command "doprinuse"))

;; (defun nethack-command-count-gold ()
;;   "$       Count your gold"
;;   )

;; (defun nethack-command-list-known-spells ()
;;   "+       List known spells"
;;   )

(defun nethack-command-extended-comm ()
  "#       Perform an extended command"
  (interactive)
  (nethack-handle-command "doextcmd"))


;;; wizard (debug) mode only commands:
;; (defun nethack-command-wizard-search ()
;;   "^E      Search a room (available in debug mode only)"
;;   )

;; (defun nethack-command-wizard-map ()
;;   "^F      Map the level (available in debug mode only)"
;;   )

;; (defun nethack-command-wizard-show-location ()
;;   "^O      Show location of special levels (available in debug mode only)"
;;   )

;; (defun nethack-command-wizard-teleport-between-levels ()
;;   "^V      Teleport between levels (available in debug mode only)"
;;   )

;; (defun nethack-command-wizard-wish ()
;;   "^W      Wish (available in debug mode only)"
;;   )



(provide 'nethack-cmd)
