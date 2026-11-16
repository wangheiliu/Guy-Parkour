/* movement */

moveDir = keyboard_check(ord("D")) - keyboard_check(ord("A"))
xVelocity = moveDir * playerSpeed

if (place_meeting(x, y + yVelocity, oGrass)) {
	if (keyboard_check_pressed(vk_space)) {
		yVelocity -= jumpPower	
	} else {
		grav = 0
		yVelocity = 0
	}
} else {
	grav = 0.5
}

if (place_meeting(x + xVelocity, y - 22, oGrass)) {
	xVelocity = 0
}

if (place_meeting(x,y,oJumpPad) && !hasTouchedJumpPad) {
	yVelocity = 0
	yVelocity -= (jumpPower * 0.75)
	hasTouchedJumpPad = true;
} else {
	hasTouchedJumpPad = false;
}

if (y > 1024 + sprite_height) {
	x = oSpawner.x
	y = oSpawner.y
	GameOver()
}

x += xVelocity
x  = clamp(x, 50, room_width - 50)

yVelocity += grav
y += yVelocity