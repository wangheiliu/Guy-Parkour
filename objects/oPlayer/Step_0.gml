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

x += xVelocity

yVelocity += grav
y += yVelocity