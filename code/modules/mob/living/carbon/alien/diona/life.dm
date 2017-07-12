//Dionaea regenerate health and nutrition in light.
/mob/living/carbon/alien/diona/handle_environment(datum/gas_mixture/environment)

	var/light_amount = 0 //how much light there is in the place, affects receiving nutrition and healing
	if(isturf(loc)) //else, there's considered to be no light
		var/turf/T = loc
		light_amount = T.get_lumcount() * 5

	nutrition += light_amount

	if(nutrition > 500)
		nutrition = 500
	if(light_amount > 2) //if there's enough light, heal
		adjustBruteLoss(-0.01)
		adjustFireLoss(-0.01)
		adjustToxLoss(-0.01)
		adjustOxyLoss(-0.01)