/*
 * Contains:
 *		Security
 *		Detective
 *		Head of Security
 */

/*
 * Security
 */
/obj/item/clothing/under/rank/warden
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for more robust protection. It has the word \"Warden\" written on the shoulders."
	name = "warden's jumpsuit"
	icon_state = "warden"
	item_state_slots = list(slot_r_hand_str = "red", slot_l_hand_str = "red")
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/item/clothing/under/rank/security
	name = "security officer's jumpsuit"
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for robust protection."
	icon_state = "security"
	item_state_slots = list(slot_r_hand_str = "red", slot_l_hand_str = "red")
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/item/clothing/under/rank/dispatch
	name = "dispatcher's uniform"
	desc = "A dress shirt and khakis with a security patch sewn on."
	icon_state = "dispatch"
	item_state_slots = list(slot_r_hand_str = "detective", slot_l_hand_str = "detective")
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS
	siemens_coefficient = 0.9

/obj/item/clothing/under/rank/security2
	name = "security officer's uniform"
	desc = "It's made of a slightly sturdier material, to allow for robust protection."
	icon_state = "redshirt2"
	item_state_slots = list(slot_r_hand_str = "red", slot_l_hand_str = "red")
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/item/clothing/under/rank/security/corp
	icon_state = "sec_corporate"
	item_state_slots = list(slot_r_hand_str = "black", slot_l_hand_str = "black")
	rolled_sleeves = 0

/obj/item/clothing/under/rank/warden/corp
	icon_state = "warden_corporate"
	item_state_slots = list(slot_r_hand_str = "black", slot_l_hand_str = "black")
	rolled_sleeves = 0

/obj/item/clothing/under/tactical
	name = "tactical jumpsuit"
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for robust protection."
	icon_state = "swatunder"
	item_state_slots = list(slot_r_hand_str = "green", slot_l_hand_str = "green")
	armor = list(melee = 10, bullet = 5, laser = 5,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = -1

/*
 * Detective
 */
/obj/item/clothing/under/det
	name = "detective's suit"
	desc = "A rumpled white dress shirt paired with well-worn grey slacks."
	icon_state = "detective"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0
	starting_accessories = list(/obj/item/clothing/accessory/blue_clip)

/*
/obj/item/clothing/under/det/verb/rollup()
	set name = "Roll Suit Sleeves"
	set category = "Object"
	set src in usr
	var/unrolled = item_state_slots[slot_w_uniform_str] == initial(worn_state)
	item_state_slots[slot_w_uniform_str] = unrolled ? "[worn_state]_r" : initial(worn_state)
	var/mob/living/carbon/human/H = loc
	H.update_inv_w_uniform(1)
	H << "<span class='notice'>You roll the sleeves of your shirt [unrolled ? "up" : "down"]</span>"
*/
/obj/item/clothing/under/det/grey
	icon_state = "detective2"
	desc = "A serious-looking tan dress shirt paired with freshly-pressed black slacks."
	starting_accessories = list(/obj/item/clothing/accessory/red_long)

/obj/item/clothing/under/det/black
	icon_state = "detective3"
	item_state_slots = list(slot_r_hand_str = "sl_suit", slot_l_hand_str = "sl_suit")
	desc = "An immaculate white dress shirt, paired with a pair of dark grey dress pants, a red tie, and a charcoal vest."
	starting_accessories = list(/obj/item/clothing/accessory/red_long, /obj/item/clothing/accessory/vest)

/obj/item/clothing/under/det/corporate
	name = "detective's jumpsuit"
	icon_state = "det_corporate"
	item_state_slots = list(slot_r_hand_str = "black", slot_l_hand_str = "black")
	desc = "A more modern uniform for corporate investigators."

/obj/item/clothing/under/det/waistcoat
	icon_state = "detective"
	desc = "A rumpled white dress shirt paired with well-worn grey slacks, complete with a blue striped tie, faux-gold tie clip, and waistcoat."
	starting_accessories = list(/obj/item/clothing/accessory/blue_clip, /obj/item/clothing/accessory/wcoat)

/obj/item/clothing/under/det/grey/waistcoat
	icon_state = "detective2"
	desc = "A serious-looking tan dress shirt paired with freshly-pressed black slacks, complete with a red striped tie and waistcoat."
	starting_accessories = list(/obj/item/clothing/accessory/red_long, /obj/item/clothing/accessory/wcoat)

/obj/item/clothing/under/det/skirt
	name = "detective's skirt"
	icon_state = "detective_skirt"
	desc = "A serious-looking white blouse paired with a formal black pencil skirt."
	item_state_slots = list(slot_r_hand_str = "sl_suit", slot_l_hand_str = "sl_suit")

/*
 * Head of Security
 */
/obj/item/clothing/under/rank/head_of_security
	desc = "It's a jumpsuit worn by those few with the dedication to achieve the position of \"Head of Security\". It has additional armor to protect the wearer."
	name = "head of security's jumpsuit"
	icon_state = "hos"
	item_state_slots = list(slot_r_hand_str = "red", slot_l_hand_str = "red")
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/item/clothing/under/rank/head_of_security/corp
	icon_state = "hos_corporate"
	item_state_slots = list(slot_r_hand_str = "black", slot_l_hand_str = "black")
	rolled_sleeves = 0

//Jensen cosplay gear
/obj/item/clothing/under/rank/head_of_security/jensen
	desc = "You never asked for anything that stylish."
	name = "head of security's jumpsuit"
	icon_state = "jensen"
	rolled_sleeves = -1

/*
 * Navy uniforms
 */
/obj/item/clothing/under/rank/security/navyblue
	name = "security officer's uniform"
	desc = "The latest in fashionable security outfits."
	icon_state = "officerblueclothes"
	item_state_slots = list(slot_r_hand_str = "ba_suit", slot_l_hand_str = "ba_suit")
	rolled_sleeves = 0

/obj/item/clothing/under/rank/head_of_security/navyblue
	desc = "The insignia on this uniform tells you that this uniform belongs to the Head of Security."
	name = "head of security's uniform"
	icon_state = "hosblueclothes"
	item_state_slots = list(slot_r_hand_str = "ba_suit", slot_l_hand_str = "ba_suit")
	rolled_sleeves = 0

/obj/item/clothing/under/rank/warden/navyblue
	desc = "The insignia on this uniform tells you that this uniform belongs to the Warden."
	name = "warden's uniform"
	icon_state = "wardenblueclothes"
	item_state_slots = list(slot_r_hand_str = "ba_suit", slot_l_hand_str = "ba_suit")
	rolled_sleeves = 0

/obj/item/clothing/under/rank/warden
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for more robust protection. It has the word \"Brig Overseer\" written on the shoulders."
	name = "overseer's jumpsuit"
	icon_state = "overseeruniform"
	item_state = "bl_suit"
	worn_state = "overseeruniform"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/item/clothing/under/rank/constable
	name = "colonial officer's uniform"
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for robust protection."
	icon_state = "constableuniform"
	item_state = "bl_suit"
	worn_state = "constableuniform"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/item/clothing/under/rank/seniorconstable
	name = "colonial senior officer's uniform"
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for robust protection."
	icon_state = "seniorconstableuniform"
	item_state = "bl_suit"
	worn_state = "seniorconstableuniform"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/item/clothing/under/rank/dispatch
	name = "dispatcher's uniform"
	desc = "A dress shirt and khakis with a security patch sewn on."
	icon_state = "dispatch"
	//item_state = "dispatch"
	worn_state = "dispatch"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS
	siemens_coefficient = 0.9

/obj/item/clothing/under/rank/head_of_security
	desc = "It's a jumpsuit worn by those few with the dedication to achieve the position of \"Securty Commissioner\". It has additional armor to protect the wearer."
	name = "security commissioner's jumpsuit"
	icon_state = "secchiefuniform"
	item_state = "bl_suit"
	worn_state = "secchiefuniform"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.8
	rolled_sleeves = 0

/obj/item/clothing/under/rank/warden
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for more robust protection. It has the word \"Brig Overseer\" written on the shoulders."
	name = "overseer's jumpsuit"
	icon_state = "overseeruniform"
	item_state = "bl_suit"
	worn_state = "overseeruniform"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/structure/closet/secure_closet/hos
	name = "colonial commissioner's locker"
	req_access = list(access_hos)
	icon_state = "secchiefsecure1"
	icon_closed = "secchiefsecure"
	icon_locked = "secchiefsecure1"
	icon_opened = "secchiefsecureopen"
	icon_broken = "secchiefsecurebroken"
	icon_off = "secchiefsecureoff"
	storage_capacity = 2.5 * MOB_MEDIUM

	New()
		..()
		switch(rand(3))
			if(1) new /obj/item/weapon/storage/backpack/security(src)
			if(2) new /obj/item/weapon/storage/backpack/satchel/sec(src)
			if(3) new /obj/item/weapon/storage/backpack/duffle/sec(src)
		new /obj/item/clothing/head/helmet/secchief(src)
		new /obj/item/clothing/suit/storage/vest/secchief(src)
		new /obj/item/clothing/suit/armor/secchief(src)
		new /obj/item/clothing/head/helmet/HoS/dermal(src)
		new /obj/item/clothing/under/rank/head_of_security(src)
		new /obj/item/weapon/cartridge/hos(src)
		new /obj/item/device/radio/headset/heads/hos(src)
		new /obj/item/device/radio/headset/heads/hos/alt(src)
		new /obj/item/taperoll/police(src)
		new /obj/item/weapon/shield/riot/tele(src)
		new /obj/item/clothing/accessory/badge/sec/secchief(src)
		new /obj/item/weapon/storage/belt/security(src)
		new /obj/item/device/flash(src)
		new /obj/item/weapon/melee/baton/loaded(src)
		new /obj/item/clothing/accessory/holster/waist(src)
		new /obj/item/clothing/head/beret/secchief(src)
		new /obj/item/clothing/suit/storage/hooded/wintercoat/security(src)
		new /obj/item/device/flashlight/maglight(src)
		new /obj/item/weapon/gun/projectile/revolver/warden(src)
		new /obj/item/ammo_magazine/a32(src)
		new /obj/item/ammo_magazine/a32(src)
		new /obj/item/ammo_magazine/a32(src)
		new /obj/item/ammo_magazine/a32/ap(src)
		new /obj/item/ammo_magazine/a32/ap(src)
		new /obj/item/clothing/glasses/sunglasses/sechud(src)
		return



/obj/structure/closet/secure_closet/warden
	name = "brig overseer's locker"
	req_access = list(access_armory)
	icon_state = "overseersecure1"
	icon_closed = "overseersecure"
	icon_locked = "overseersecure1"
	icon_opened = "overseersecureopen"
	icon_broken = "overseersecurebroken"
	icon_off = "overseersecureoff"
	storage_capacity = 2.5 * MOB_MEDIUM


	New()
		..()
		switch(rand(3))
			if(1) new /obj/item/weapon/storage/backpack/security(src)
			if(2) new /obj/item/weapon/storage/backpack/satchel/sec(src)
			if(3) new /obj/item/weapon/storage/backpack/duffle/sec(src)
		new /obj/item/clothing/suit/storage/vest/overseer(src)
		new /obj/item/clothing/under/rank/warden(src)
		new /obj/item/clothing/suit/armor/vest/overseer(src)
		new /obj/item/clothing/head/helmet/overseer(src)
		new /obj/item/weapon/cartridge/security(src)
		new /obj/item/device/radio/headset/headset_sec/alt(src)
		new /obj/item/taperoll/police(src)
		new /obj/item/clothing/accessory/badge/sec/overseer(src)
		new /obj/item/weapon/storage/belt/security(src)
		new /obj/item/weapon/reagent_containers/spray/pepper(src)
		new /obj/item/clothing/suit/storage/hooded/wintercoat/security(src)
		new /obj/item/device/flashlight/maglight(src)
		new /obj/item/device/megaphone(src)
		new /obj/item/weapon/melee/baton/loaded(src)
		new /obj/item/ammo_magazine/clip/shotgungauge(src)
		new /obj/item/ammo_magazine/clip/shotgungauge(src)
		new /obj/item/ammo_magazine/clip/shotgungaugepellet(src)
		new /obj/item/ammo_magazine/clip/shotgungaugepellet(src)
		new /obj/item/ammo_magazine/clip/shotgungaugepellet(src)
		new /obj/item/ammo_magazine/clip/shotgungaugepellet(src)
		new /obj/item/weapon/storage/firstaid/sec(src)
		new /obj/item/clothing/glasses/sunglasses/sechud(src)
		return


/obj/structure/closet/secure_closet/seniorsecurity
	name = "colonial senior officer's locker"
	req_access = list(access_senior_security)
	icon_state = "seniorconstablesecure1"
	icon_closed = "seniorconstablesecure"
	icon_locked = "seniorconstablesecure1"
	icon_opened = "seniorconstablesecureopen"
	icon_broken = "seniorconstablesecurebroken"
	icon_off = "seniorconstablesecureoff"
	storage_capacity = 2.5 * MOB_MEDIUM

	New()
		..()
		if(prob(50))
			new /obj/item/weapon/storage/backpack/security(src)
		else
			new /obj/item/weapon/storage/backpack/satchel/sec(src)
		if(prob(50))
			new /obj/item/weapon/storage/backpack/duffle/sec(src)
		new /obj/item/clothing/suit/storage/vest/seniorconstable(src)
		new /obj/item/weapon/cartridge/security(src)
		new /obj/item/device/radio/headset/headset_sec/alt(src)
		new /obj/item/weapon/storage/belt/security(src)
		new /obj/item/device/flash(src)
		new /obj/item/weapon/reagent_containers/spray/pepper(src)
		new /obj/item/weapon/grenade/flashbang(src)
		new /obj/item/taperoll/police(src)
		new /obj/item/device/hailer(src)
		new /obj/item/device/flashlight/flare(src)
		new /obj/item/clothing/accessory/storage/black_vest(src)
		new /obj/item/clothing/under/rank/seniorconstable(src)
		new /obj/item/clothing/suit/storage/hooded/wintercoat/security(src)
		new /obj/item/clothing/head/beret/seniorconstable(src)
		new /obj/item/device/flashlight/maglight(src)
		new /obj/item/clothing/accessory/badge/sec/seniorconstable(src)
		new /obj/item/weapon/melee/telebaton(src)
		new /obj/item/weapon/melee/baton/loaded(src)
		new /obj/item/weapon/storage/firstaid/sec(src)
		new /obj/item/weapon/grenade/flashbang(src)
		new /obj/item/weapon/gun/projectile/impulsesec(src)
		new /obj/item/ammo_magazine/a57x28(src)
		new /obj/item/ammo_magazine/a57x28(src)
		new /obj/item/clothing/head/helmet(src)
		new /obj/item/clothing/glasses/hud/security(src)
		return


/obj/structure/closet/secure_closet/security
	name = "colonial officer's locker"
	req_access = list(access_brig)
	icon_state = "constablesecure1"
	icon_closed = "constablesecure"
	icon_locked = "constablesecure1"
	icon_opened = "constablesecureopen"
	icon_broken = "constablesecurebroken"
	icon_off = "constablesecureoff"
	storage_capacity = 2.5 * MOB_MEDIUM

	New()
		..()
		switch(rand(3))
			if(1) new /obj/item/weapon/storage/backpack/security(src)
			if(2) new /obj/item/weapon/storage/backpack/satchel/sec(src)
			if(3) new /obj/item/weapon/storage/backpack/duffle/sec (src)
		new /obj/item/clothing/suit/storage/vest/constable(src)
		new /obj/item/weapon/cartridge/security(src)
		new /obj/item/device/radio/headset/headset_sec(src)
		new /obj/item/weapon/storage/belt/security(src)
		new /obj/item/device/flash(src)
		new /obj/item/weapon/reagent_containers/spray/pepper(src)
		new /obj/item/weapon/grenade/chem_grenade/teargas(src)
		new /obj/item/taperoll/police(src)
		new /obj/item/device/hailer(src)
		new /obj/item/device/flashlight/flare(src)
		new /obj/item/clothing/accessory/storage/black_vest(src)
		new /obj/item/clothing/suit/storage/hooded/wintercoat/security(src)
		new /obj/item/clothing/under/rank/constable(src)
		new /obj/item/device/flashlight/maglight(src)
		new /obj/item/clothing/accessory/badge/sec/constable(src)
		new /obj/item/weapon/melee/telebaton(src)
		new /obj/item/weapon/melee/baton/loaded(src)
		new /obj/item/weapon/storage/firstaid/sec(src)
		new /obj/item/weapon/gun/projectile/impulsetrauma(src)
		new /obj/item/ammo_magazine/a10x45(src)
		new /obj/item/ammo_magazine/a10x45(src)
		new /obj/item/ammo_magazine/a10x45(src)
		new /obj/item/clothing/head/helmet(src)
		new /obj/item/clothing/glasses/hud/security(src)
		return
