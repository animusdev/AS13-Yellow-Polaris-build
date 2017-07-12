/obj/effect/engine_setup/
	name = "Engine Setup Marker"
	desc = "You shouldn't see this."
	invisibility = 101
	anchored = 1
	density = 0
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x3"

/obj/effect/engine_setup/proc/activate(var/last = 0)
	return 1


/obj/item/weapon/circuitboard/fusion_core_control
	name = "circuit board (fusion core controller)"
	build_path = "/obj/machinery/computer/fusion_core_control"


/obj/item/weapon/circuitboard/fusion_fuel_compressor
	name = "circuit board (fusion fuel compressor)"
	build_path = "/obj/item/weapon/machinery/fusion_fuel_compressor"
	board_type = "machine"

	req_components = list(
							/obj/item/weapon/stock_parts/manipulator/pico = 2,
							/obj/item/weapon/stock_parts/matter_bin/super = 2,
							/obj/item/weapon/stock_parts/console_screen = 1,
							/obj/item/stack/cable_coil = 5
							)

/obj/item/weapon/circuitboard/fusion_fuel_control
	name = "circuit board (fusion fuel controller)"
	build_path = "/obj/item/weapon/machinery/computer/fusion_fuel_control"


/obj/item/weapon/circuitboard/gyrotron_control
	name = "circuit board (gyrotron controller)"
	build_path = "/obj/item/weapon/machinery/computer/gyrotron_control"


/obj/item/weapon/circuitboard/fusion_core
	name = "internal circuitry (fusion core)"
	build_path = "/obj/item/weapon/machinery/power/fusion_core"
	board_type = "machine"

	req_components = list(
							/obj/item/weapon/stock_parts/manipulator/pico = 2,
							/obj/item/weapon/stock_parts/micro_laser/ultra = 1,
							/obj/item/weapon/stock_parts/subspace/crystal = 1,
							/obj/item/weapon/stock_parts/console_screen = 1,
							/obj/item/stack/cable_coil = 5
							)

/obj/item/weapon/circuitboard/fusion_injector
	name = "internal circuitry (fusion fuel injector)"
	build_path = "/obj/item/weapon/machinery/fusion_fuel_injector"
	board_type = "machine"

	req_components = list(
							/obj/item/weapon/stock_parts/manipulator/pico = 2,
							/obj/item/weapon/stock_parts/scanning_module/phasic = 1,
							/obj/item/weapon/stock_parts/matter_bin/super = 1,
							/obj/item/weapon/stock_parts/console_screen = 1,
							/obj/item/stack/cable_coil = 5
							)
