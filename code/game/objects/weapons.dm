/obj/item/weapon
	name = "weapon"
	icon = 'icons/obj/weapons.dmi'
	hitsound = "swing_hit"
	var/drawsound = null

/obj/item/weapon/Bump(mob/M as mob)
	spawn(0)
		..()
	return

/obj/item/weapon/melee
	item_icons = list(
			slot_l_hand_str = 'icons/mob/items/lefthand_melee.dmi',
			slot_r_hand_str = 'icons/mob/items/righthand_melee.dmi',
			)


/obj/item/weapon/pickup(mob/user)
	drawsound(user)

/obj/item/weapon/proc/drawsound(mob/user)
	if(drawsound)
		user.visible_message("<span class = 'warning'><b>[user] grabs a weapon!</b></span>")
		playsound(user, drawsound, 50, 1)