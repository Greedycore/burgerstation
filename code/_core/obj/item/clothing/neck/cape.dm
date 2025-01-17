/obj/item/clothing/neck/cape
	name = "cape"
	desc = "Is it a bird? Is it a plane?"
	desc_extended = "Attaches to the neck slot for extra fashion."
	icon = 'icons/obj/item/clothing/suit/cape.dmi'

	item_slot = SLOT_NECK

	protected_limbs = list(BODY_TORSO)

	armor = /armor/cloth/arcane/reduced

	size = SIZE_2

	worn_layer = LAYER_MOB_CLOTHING_NECK_OVER

	dyeable = TRUE

	polymorphs = list(
		"base" = COLOR_WHITE,
		"design" = COLOR_WHITE,
		"trim" = COLOR_WHITE
	)

	value = 60

	item_slot_layer = 3

/obj/item/clothing/neck/cape/wizard
	polymorphs = list(
		"base" = COLOR_PURPLE,
		"design" = COLOR_BLUE,
		"trim" = COLOR_BLUE
	)

/obj/item/clothing/neck/cape/hunter
	polymorphs = list(
		"base" = COLOR_CRIMSON,
		"design" = COLOR_RED_DARK,
		"trim" = COLOR_CRIMSON
	)

/obj/item/clothing/neck/cape/hide
	name = "hide cape"
	polymorphs = list(
		"base" = COLOR_BROWN,
		"design" = COLOR_BROWN,
		"trim" = COLOR_BROWN
	)

	armor = /armor/leather

	value = 30

/obj/item/clothing/neck/cape/goliath
	name = "goliath cloak"
	icon = 'icons/obj/item/clothing/suit/goliath_cloak.dmi'
	desc = "Is it a bird? Is it a plane? No, it's a Shaft Miner!"
	desc_extended = "A protective cloak made from goliath hide."

	armor = /armor/leather/goliath

	additional_clothing = list(/obj/item/clothing/head/hat/goliath)

	value = 200

	dyeable = FALSE

/obj/item/clothing/neck/cape/black
	polymorphs = list(
		"base" = COLOR_BLACK,
		"design" = COLOR_BLACK,
		"trim" = COLOR_BLACK
	)