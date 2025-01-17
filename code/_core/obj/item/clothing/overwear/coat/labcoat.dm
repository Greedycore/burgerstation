/obj/item/clothing/overwear/coat/labcoat
	name = "labcoat"
	desc = "SCIENCE RULES!"
	desc_extended = "Extra pockets not included."
	icon = 'icons/obj/item/clothing/suit/labcoat.dmi'

	protected_limbs = list(BODY_TORSO,BODY_GROIN,BODY_ARM_LEFT,BODY_ARM_RIGHT)

	armor = /armor/cloth/protective/coat

	size = SIZE_3

	polymorphs = list(
		"base" = "#FFFFFF"
	)

	value = 50

	dyeable = TRUE


/obj/item/clothing/overwear/coat/labcoat/chemist
	polymorphs = list(
		"base" = "#FFFFFF",
		"shoulder" = COLOR_ORANGE
	)

/obj/item/clothing/overwear/coat/labcoat/medical
	polymorphs = list(
		"base" = COLOR_MEDICAL
	)

/obj/item/clothing/overwear/coat/labcoat/science
	polymorphs = list(
		"base" = COLOR_WHITE,
		"shoulder" = COLOR_SCIENCE
	)

/obj/item/clothing/overwear/coat/labcoat/syndicate
	polymorphs = list(
		"base" = "#FFFFFF",
		"shoulder" = COLOR_BLACK
	)