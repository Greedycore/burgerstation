/obj/item/material/
	name = "glitch"
	desc = "I am error."
	icon = 'icons/obj/items/material.dmi'
	icon_state = "shard_1"

	var/material_id = "glitch"

	item_count_current = 1
	item_count_max = 50
	item_count_max_icon = 3

	crafting_id = "material"

/obj/item/material/on_spawn()
	. = ..()
	update_icon()
	return .


/obj/item/material/Crossed(var/atom/movable/O)

	if(!istype(O,/obj/item/material))
		return ..()

	var/obj/item/material/M = O
	if(M.crafting_id != src.crafting_id)
		return ..()

	if(M.item_count_max >= M.item_count_current)
		return ..()

	src.transfer_stacks_to(M)
	return TRUE