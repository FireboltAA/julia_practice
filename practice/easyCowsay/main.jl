using REPL.TerminalMenus

## Single Letter Variable List
# a: requested choice for charList, used in charList[a]
#
#

fortuneQuery = ["fortune", "custom text"]

charList = ["apt", "frogs", "bunny", "calvin", "cheese", "rooster", "cow-hiding", "daemon", "cow", "dragon", "dragon-and-cow", "duck", "elephant", "elephant-in-snake", "eyes", "flaming-sheep", "fox", "ghostbusters", "gnu", "hellokitty", "kangaroo", "kiss", "koala", "kosh", "luke-koala", "mech-and-cow", "milk", "moofasa", "moose", "pony", "pony-smaller", "ren", "sheep", "skeleton", "snowman", "stegosaurus", "stimpy", "suse", "three-eyed-cow", "turkey", "turtle", "tux", "unipony", "small-unipony", "vader", "vader-koala", "www" ]

charMenu = RadioMenu(charList, pagesize=8)
textTypeQuery = RadioMenu(fortuneQuery, pagesize=2)
TerminalMenus.config(charset=:unicode)
b = request("Choose One: ", textTypeQuery)
a = request("Pick a character: ", charMenu)
## Translate options the names of which are changed in the choice list.

if (charList[a] == "frogs")
	character = "bud-frogs"
elseif (charList[a] == "rooster")
	character = "cock"
elseif (charList[a] == "cow-hiding")
	character = "cower"
elseif (charList[a] == "cow")
	character = "default"
elseif (charList[a] == "three-eyed-cow")
	character = "three-eyes"
elseif (charList[a] == "small-unipony")
	character = "unipony-smaller"
else
	character = charList[a]
end


print("\033[A\e[2K\033[A\e[2K\033[A\e[2K\033[A\e[2K\033[A\e[2K\033[A\e[2K\033[A\e[2K\033[A\e[2K\033[A\e[2K\033[A\e[2K\033[A\e[2K\033[A\e[2K")

if (fortuneQuery[b] == "fortune")
	run(pipeline(`fortune`, `cowsay -f $character`))
else
	run(`cowsay -f $character "hello"`)
end


