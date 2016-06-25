/////////////////
//DUNGEON AREAS//
/////////////////
/area/dungeon
	name = "Dungeon"
	icon_state = "dungeon"
	always_unpowered = 1
	has_gravity = 1
	lightswitch = 0
	valid_territory = 0

/////////////////
//DUNGEON TURFS//
/////////////////

/turf/indestructible/dungeon
	name = "dungeon wall"
	desc = "A wall. It seems ancient."
	icon_state = ""
	canSmoothWith = list(/turf/indestructible/dungeon)
//	smooth = SMOOTH_TRUE
/*
/turf/indestructible/dungeon/New()
	..()
	if(smooth)
		smooth_icon(src)
*/
/turf/indestructible/dungeon/iron
	name = "iron dungeon wall"
	icon = 'icons/turf/walls/iron_wall.dmi'
	icon_state = "iron"
//	canSmoothWith = list(/turf/indestructible/dungeon/iron)
/turf/indestructible/dungeon/gold

/turf/indestructible/dungeon/silver

/turf/indestructible/dungeon/uranium

/turf/indestructible/dungeon/plasma

/turf/indestructible/dungeon/diamond

/turf/indestructible/bedrock
	name = "bedrock"
	desc = "This looks too tough to dig through."
	icon = 'icons/turf/mining.dmi'
	icon_state = "rock"

///////////
//TUNNELS//
//////////

//These may allow travel between sectioned areas in the future.

/obj/effect/tunnel
	icon_state = "tunnel"
	icon = 'code/cactus/obj/obj.dmi'
	desc = "A tunnel. Claw marks can be seen on the walls and around the entrance."

/obj/effect/tunnel/attack_hand(mob/user)
	user << "You don't fit!"
	return

/obj/effect/tunnel/attack_paw(mob/user)
	return attack_hand()

/obj/effect/tunnel/attack_alien(mob/user)
	return attack_hand()