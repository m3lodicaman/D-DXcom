//Setting inputs
key_jump = (keyboard_check_pressed(ord("W")));
key_left = (keyboard_check(ord("A")));
key_right = (keyboard_check(ord("D")));
key_down = (keyboard_check(ord("S")));


//Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv + key_down


if (place_meeting(x, y + 1, obj_box)) && (key_jump)
{
	hsp = hsp * 0.5;
	vsp = -16;	
}

//Sprites
if (vsp < 0)
{
	sprite_index = spr_character_jumping
}
if (vsp = 0)
{
	sprite_index = spr_character	
}
if (vsp > 0)
{
	sprite_index = spr_character_falling	
}


//Horizontal collision
if (place_meeting(x + hsp, y , obj_box))
{
	while (!place_meeting(x + sign(hsp), y, obj_box))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Vertical collision
if (place_meeting(x, y + vsp, obj_box))
{
	while (!place_meeting(x, y + sign(vsp), obj_box))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	sprite_index = spr_character	
}

y = y + vsp;
