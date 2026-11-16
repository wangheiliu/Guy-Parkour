global.currentLevel = 1
global.roomMap = {
	"1": Level1,
	"MainMenu": TitleScreen,
	"Winner": WinnersRoom
}

function LevelUp(level) {
	global.currentLevel = level
	room_goto(global.roomMap[$ string(global.currentLevel)])
}

function GameOver(){
	room_goto(GameOverScreen)
}