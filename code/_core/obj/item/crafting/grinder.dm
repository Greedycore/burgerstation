/obj/item/crafting/grinder
	name = "portable grinder"
	icon = 'icons/obj/item/ore.dmi'
	icon_state = "grinder"

	inventories = list(
		/obj/hud/inventory/crafting/slotB1,
		/obj/hud/inventory/crafting/slotB2,
		/obj/hud/inventory/crafting/slotB3,

		/obj/hud/inventory/crafting/result
	)

	crafting_id = "grinder"

	crafting_type = null //This actually doesn't craft anything.

	value = 25

	size = SIZE_4


/obj/item/crafting/grinder/attempt_to_craft(var/mob/living/advanced/caller)

	var/obj/item/C //Final slot container.

	for(var/obj/hud/inventory/crafting/result/R in src.inventories)
		var/obj/item/top_object = R.get_top_object()
		if(top_object.reagents && top_object.allow_reagent_transfer_to)
			C = top_object
			break

	if(!C) //Try one more time.
		for(var/obj/hud/inventory/crafting/R in src.inventories)
			var/obj/item/top_object = R.get_top_object()
			if(top_object.reagents && top_object.allow_reagent_transfer_to)
				C = top_object
				break

	if(!C)
		caller.to_chat(span("warning","You're missing a valid container in the product slot!"))
		return FALSE

	var/list/item_table = generate_crafting_table(caller,src)

	var/success = FALSE

	for(var/i=1,i<=3,i++)

		var/obj/item/I = item_table["b[i]"]

		if(!I || !I.reagents)
			continue

		if(I.reagents)
			I.reagents.transfer_reagents_to(C.reagents,I.reagents.volume_current,FALSE, caller = caller)
			success = TRUE

		if(!I.allow_reagent_transfer_from)
			qdel(I)
		else
			I.reagents.update_container()

	if(!success)
		caller.to_chat(span("warning","There are no valid items to process!"))
		return FALSE

	for(var/reagent_type in C.reagents.stored_reagents)
		var/reagent_amount = C.reagents.stored_reagents[reagent_type]
		var/reagent/R = REAGENT(reagent_type)
		if(R.processed_reagent)
			var/temperature = C.reagents.average_temperature
			var/amount_removed = C.reagents.remove_reagent(reagent_type,reagent_amount,FALSE)
			C.reagents.add_reagent(R.processed_reagent,amount_removed,temperature,FALSE,FALSE,caller = caller)

	C.reagents.update_container()

	return TRUE