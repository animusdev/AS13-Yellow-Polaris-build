/obj/item/device/price_tool
	icon = 'icons/obj/hacktool.dmi'
	name = "appraiser"
	desc = "Use this on anything to get its price."
	icon_state = "hacktool"
	flags = CONDUCT
	force = 0
	w_class = 2.0
	throwforce = 5.0
	throw_range = 15
	throw_speed = 3
	origin_tech = "magnets=1;engineering=1"

/obj/item/device/price_tool/attack(mob/living/M, mob/living/user, def_zone)
	if(!istype(M))
		return 0
	var/price_check = M.get_price()
	if(M.stat == DEAD)
		to_chat(user, "<span class='notice'>This [issilicon(M) ? "destroyed thing" : "dead being"] will bring us approximately $[price_check]</span>")
	else
		to_chat(user, "<span class='notice'>This [issilicon(M) ? "silicon thing" : "living being"] will bring us approximately <span class='danger'>[issilicon(M) ? "DESTROYED:" : "DEAD:"]</span> $[price_check ? price_check / 50 : 0] or <span class='danger'>[issilicon(M) ? "WORKING:" : "ALIVE:"]</span>$[price_check]</span>")
	return 1

/obj/item/device/price_tool/afterattack(obj/O, mob/user, proximity)
	if(!proximity) return
	if(!istype(O))
		return
	to_chat(user, "<span class='notice'>This object will bring us approximately $[num2text(O.get_price(),9)]</span>")
	return
