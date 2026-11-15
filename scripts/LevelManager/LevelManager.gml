var currentLevel = 0

function LevelUp() {
	currentLevel += 1
	room_goto(currentLevel)
}