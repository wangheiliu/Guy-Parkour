global.currentLevel = 1
global.roomMap = {
	"1": Level1,
	"999": WinnersRoom,
	"MainMenu": TitleScreen,
	"Winner": WinnersRoom
}

function LevelUp(level) {
	global.currentLevel = level
	var foundRoom = global.roomMap[$ string(global.currentLevel)]
	room_goto(foundRoom)
}

function GameOver(){
	room_goto(GameOverScreen)
}