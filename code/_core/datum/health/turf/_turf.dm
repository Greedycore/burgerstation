/health/turf/
	organic = FALSE

/health/turf/New(var/desired_owner)

	. = ..()

	var/turf/T = owner
	if(T.material_id)
		var/material/M = SSmaterials.all_materials[T.material_id]
		if(M && M.armor)
			armor = M.armor

/health/turf/update_health(var/atom/attacker,var/damage_dealt=0,var/update_hud=TRUE,var/check_death=TRUE)

	. = ..()

	if(. && health_current <= 0 && is_simulated(owner))
		var/turf/simulated/T = owner
		T.on_destruction(attacker,TRUE)


