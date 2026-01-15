//------------EQUIPMENT------------
/datum/armor/first_team
	melee = 80
	bullet = 80
	laser = 80
	energy = 80
	fire = 80
	bomb = 80
	acid = 80
	wound = 80

//------------SHOES------------
/obj/item/clothing/shoes/response
	name = "shoes"
	desc = "Comfortable-looking shoes."
	icon = 'modular_darkpack/modules/ert/icons/clothing.dmi'
	worn_icon = 'modular_darkpack/modules/ert/icons/worn.dmi'
	icon_state = "shoes"
	gender = PLURAL
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'


/obj/item/clothing/shoes/response/firstteam
	name = "first-team boots"
	desc = "Pitch-black boots with hard, industrial laces."
	icon_state = "ftboots"

//------------GLOVES------------

/obj/item/clothing/gloves/response
	icon = 'modular_darkpack/modules/ert/icons/clothing.dmi'
	worn_icon = 'modular_darkpack/modules/ert/icons/worn.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'
	inhand_icon_state = "fingerless"
	icon_state = "ftgloves"
	undyeable = TRUE


/obj/item/clothing/gloves/response/firstteam
	name = "First Team gloves"
	desc = "Provides protection from the good, the bad and the ugly."
	icon_state = "ftgloves"
	body_parts_covered = HANDS
	armor_type = /datum/armor/gloves_combat

//------------HELMET------------

/obj/item/clothing/head/response
	icon_state = "fthelmet"
	icon = 'modular_darkpack/modules/ert/icons/clothing.dmi'
	worn_icon = 'modular_darkpack/modules/ert/icons/worn.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'

/obj/item/clothing/head/response/firstteam_helmet
	name = "First Team helmet"
	desc = "A black helmet with two, green-glowing eye-pieces that seem to stare through your soul."
	icon_state = "fthelmet"
	armor_type = /datum/armor/first_team
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	visor_flags_inv = HIDEFACE|HIDESNOUT
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF

//------------ARMOR------------

/obj/item/clothing/suit/response
	icon_state = "ftuni"
	icon = 'modular_darkpack/modules/ert/icons/clothing.dmi'
	worn_icon = 'modular_darkpack/modules/ert/icons/worn.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'

	body_parts_covered = CHEST
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	max_integrity = 250
	resistance_flags = NONE

/obj/item/clothing/suit/response/Initialize()
	. = ..()
	AddComponent(/datum/component/selling, 15, "suit", FALSE)


/obj/item/clothing/suit/response/firstteam_armor
	name = "First Team Armoured Vest"
	desc = "A strong looking, armoured-vest with a large '1' engraved onto the breast."
	icon_state = "ftarmor"
	armor_type = /datum/armor/first_team
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	clothing_traits = list(TRAIT_BRAWLING_KNOCKDOWN_BLOCKED)

//------------SUIT------------

/obj/item/clothing/under/response
	desc = "Some clothes."
	name = "clothes"
	icon_state = "ftuni"
	has_sensor = NO_SENSORS
	random_sensor = FALSE
	can_adjust = FALSE
	icon = 'modular_darkpack/modules/ert/icons/clothing.dmi'
	worn_icon = 'modular_darkpack/modules/ert/icons/worn.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'


/obj/item/clothing/under/response/Initialize()
	. = ..()
	AddComponent(/datum/component/selling, 10, "undersuit", FALSE)

/obj/item/clothing/under/response/firstteam_uniform
	name = "First Team uniform"
	desc = "A completely blacked out uniform with a large '1' symbol sewn onto the shoulder-pad."
	icon_state = "ftuni"
	armor_type = /datum/armor/clothing_under/security_head_of_security

//------------Glasses------------

/obj/item/clothing/glasses/night/vamp/thermal
	vision_flags = SEE_MOBS

//------------Weapons------------

/obj/item/gun/ballistic/automatic/response
	lefthand_file = 'modular_darkpack/modules/ert/icons/righthand.dmi'
	righthand_file = 'modular_darkpack/modules/ert/icons/lefthand.dmi'
	worn_icon = 'modular_darkpack/modules/ert/icons/worn.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'
	can_suppress = FALSE
	recoil = 2

/obj/item/ammo_box/vampire/c556/bale //DONT EVER PUT THIS IN A MAP
	name = "balefire ammo box (5.56)"
	icon = 'modular_darkpack/modules/ert/icons/ammo.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'
	icon_state = "556box-bale"
	ammo_type = /obj/item/ammo_casing/vampire/c556mm/bale

/obj/item/ammo_casing/vampire/c556mm/bale
	name = "green 5.56mm bullet casing"
	desc = "A modified 5.56mm bullet casing."
	caliber = CALIBER_556
	projectile_type = /obj/projectile/bullet/darkpack/vamp556mm/bale
	icon = 'modular_darkpack/modules/ert/icons/ammo.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'
	icon_state = "b556"
	base_icon_state = "b556"

/obj/projectile/bullet/darkpack/vamp556mm/bale
	armour_penetration = 50
	damage = 45
	var/bloodloss = 1

// DARKPACK TODO - GAROU
/* /obj/projectile/beam/beam_rifle/vampire/vamp556mm/bale/on_hit(atom/target, blocked = FALSE)
	if(iskindred(target) || isghoul(target))
		var/mob/living/carbon/human/H = target
		if(H.bloodpool == 0)
			to_chat(H, span_warning("only ash remains in my veins"))
			H.apply_damage(20, BURN)
			return
		H.bloodpool = max(H.bloodpool - bloodloss, 0)
		playsound(H, 'modular_tfn/modules/first_team/audio/balefire.ogg', rand(10,15), TRUE)
		to_chat(H, span_warning("green flames errupt from the bullets impact, boiling your blood"))
	if(iswerewolf(target) || isgarou(target))
		var/mob/living/carbon/M = target
		if(M.auspice.gnosis)
			if(prob(50))
				adjust_gnosis(-1, M)
		M.apply_damage(20, CLONE)
		playsound(M, 'modular_tfn/modules/first_team/audio/balefire.ogg', rand(10,15), TRUE)
		M.apply_status_effect(STATUS_EFFECT_SILVER_SLOWDOWN)
*/
/obj/item/ammo_casing/vampire/c12g/f12g
	name = "Frag-12g shell casing"
	desc = "A 12g explosive shell casing."
	caliber = CALIBER_SHOTGUN
	projectile_type = /obj/projectile/bullet/darkpack/f12g
	icon = 'modular_darkpack/modules/ert/icons/ammo.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'
	icon_state = "f12"
	base_icon_state = "f12"

/obj/projectile/bullet/darkpack/f12g
	name = "12g explosive slug"
	damage = 60
	armour_penetration = 50
	exposed_wound_bonus = 10
	wound_bonus = 5

/obj/projectile/bullet/darkpack/f12g/on_hit(atom/target, blocked = 0, pierce_hit)
	..()
	explosion(target, devastation_range = -1, light_impact_range = 2, explosion_cause = src)
	return BULLET_ACT_HIT

/obj/item/ammo_box/vampire/f12g //DO NOT DISTRIBUTE NORMALLY
	name = "ammo box (f12g)"
	icon = 'modular_darkpack/modules/ert/icons/ammo.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'
	icon_state = "12box_frag"
	ammo_type = /obj/item/ammo_casing/vampire/c12g/f12g
	max_ammo = 40

/obj/item/ammo_box/magazine/px66f
	name = "PX66F magazine (5.56mm)"
	icon = 'modular_darkpack/modules/ert/icons/ammo.dmi'
	lefthand_file = 'modular_darkpack/modules/ert/icons/righthand.dmi'
	righthand_file = 'modular_darkpack/modules/ert/icons/lefthand.dmi'
	worn_icon = 'modular_darkpack/modules/ert/icons/worn.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'
	icon_state = "px66f"
	ammo_type = /obj/item/ammo_casing/vampire/c556mm/bale
	caliber = CALIBER_556
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/ammo_box/magazine/px249f
	name = "PX249F box magazine (5.56mm)"
	icon = 'modular_darkpack/modules/ert/icons/ammo.dmi'
	lefthand_file = 'modular_darkpack/modules/ert/icons/righthand.dmi'
	righthand_file = 'modular_darkpack/modules/ert/icons/lefthand.dmi'
	worn_icon = 'modular_darkpack/modules/ert/icons/worn.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'
	icon_state = "px249f"
	ammo_type = /obj/item/ammo_casing/vampire/c556mm/bale
	caliber = CALIBER_556
	max_ammo = 200
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/ammo_box/magazine/internal/px12r
	name = "shotgun internal magazine"
	ammo_type = /obj/item/ammo_casing/vampire/c12g
	caliber = CALIBER_SHOTGUN
	max_ammo = 8
	masquerade_violating = FALSE

/obj/item/gun/ballistic/automatic/response/px66f //DO NOT DISTRIBUTE IN MAPPING
	name = "\improper PX66F Rifle"
	desc = "A three-round burst 5.56 death machine, with a Spiral brand below the barrel."
	icon = 'modular_darkpack/modules/ert/icons/48x32weapons.dmi'
	lefthand_file = 'modular_darkpack/modules/ert/icons/righthand.dmi'
	righthand_file = 'modular_darkpack/modules/ert/icons/lefthand.dmi'
	worn_icon = 'modular_darkpack/modules/ert/icons/worn.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'
	icon_state = "px66f"
	inhand_icon_state = "px66f"
	worn_icon_state = "rifle"
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM //Bullpup makes it easy to fire with one hand, but we still don't want these dual-wielded
	accepted_magazine_type = /obj/item/ammo_box/magazine/px66f
	burst_size = 3
	spread = 2
	bolt_type = BOLT_TYPE_LOCKING
	show_bolt_icon = FALSE
	mag_display = TRUE
	fire_sound = 'modular_darkpack/modules/ert/audio/silenced_rifle.ogg'
	masquerade_violating = TRUE

/obj/item/gun/ballistic/automatic/response/px66f/Initialize()
	. = ..()
	AddComponent(/datum/component/selling, 350, "aug", FALSE)
	AddComponent(/datum/component/automatic_fire, 0.5 SECONDS)

/obj/item/gun/ballistic/shotgun/vampire/px12r  //DONT DISTRIBUTE IN MAPPING
	name = "\improper PX12R Breaching Shotgun"
	desc = "A highly modified 12G Shotgun designed to fire Frag-12 explosive breaching rounds"
	icon = 'modular_darkpack/modules/ert/icons/48x32weapons.dmi'
	lefthand_file = 'modular_darkpack/modules/ert/icons/righthand.dmi'
	righthand_file = 'modular_darkpack/modules/ert/icons/lefthand.dmi'
	worn_icon = 'modular_darkpack/modules/ert/icons/worn.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM
	icon_state = "px12r"
	inhand_icon_state = "px12r"
	worn_icon_state = "px12r"
	recoil = 3
	fire_delay = 6
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/px12r
	can_be_sawn_off	= FALSE
	fire_sound = 'modular_darkpack/modules/ert/audio/shotgun_firing.ogg'
	load_sound = 'modular_darkpack/modules/ert/audio/shell_load.ogg'
	rack_sound = 'modular_darkpack/modules/ert/audio/cycling.ogg'
	recoil = 4
	inhand_x_dimension = 32
	inhand_y_dimension = 32


/obj/item/gun/ballistic/automatic/l6_saw/vamp
	name = "\improper PX249F Light Machine Gun"
	desc = "A modified M249 Machine Gun with an engraving of a Hydra on the grip"
	icon = 'modular_darkpack/modules/ert/icons/48x32weapons.dmi'
	lefthand_file = 'modular_darkpack/modules/ert/icons/righthand.dmi'
	righthand_file = 'modular_darkpack/modules/ert/icons/lefthand.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'
	icon_state = "px249f"
	inhand_icon_state = "px249f"
	base_icon_state = "px249f"
	w_class = WEIGHT_CLASS_HUGE
	bolt_type = BOLT_TYPE_LOCKING
	show_bolt_icon = FALSE
	slot_flags = 0
	accepted_magazine_type = /obj/item/ammo_box/magazine/px249f
	weapon_weight = WEAPON_HEAVY
	burst_size = 1
	spread = 6
	fire_sound = 'modular_darkpack/modules/ert/audio/m249fire.ogg'
	rack_sound = 'modular_darkpack/modules/ert/audio/m249rack.ogg'

/obj/item/gun/ballistic/automatic/l6_saw/vamp/update_icon_state()
	. = ..()
	inhand_icon_state = "[base_icon_state][magazine ? "mag":"nomag"]"

/obj/item/gun/ballistic/automatic/l6_saw/vamp/update_overlays()
	. = ..()
	. += "px249f_door_[cover_open ? "open" : "closed"]"

/obj/item/gun/ballistic/automatic/l6_saw/vamp/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.05 SECONDS)

//------------Medical------------


/obj/item/reagent_containers/hypospray/medipen/first
	name = "\improper Stimulant autoinjector"
	desc = "Contains experimental combat drugs, vastly increasing your movement speed, reducing stuns, and disabling traumatic feedback for around five minutes. DO NOT USE TWICE IN A ROW"
	icon = 'modular_darkpack/modules/ert/icons/medical.dmi'
	onflooricon = 'modular_darkpack/modules/ert/icons/onfloor.dmi'
	icon_state = "fpen"
	inhand_icon_state = "tbpen"
	base_icon_state = "fpen"
	volume = 100
	amount_per_transfer_from_this = 50
	list_reagents = list(/datum/reagent/medicine/vamp/ert = 100)

/obj/item/reagent_containers/hypospray/medipen/first/update_icon_state()
	. = ..()
	if(reagents.total_volume >= volume)
		icon_state = base_icon_state
		return
	icon_state = "[base_icon_state][(reagents.total_volume > 0) ? 1 : 0]"

/datum/reagent/medicine/vamp/ert
	name = "Experimental Drugs"
	description = "Increases stun resistance and movement speed in addition to restoring minor damage and weakness. Overdose causes weakness and toxin damage."
	color = "#13c563"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	overdose_threshold = 75

/datum/reagent/medicine/vamp/ert/on_mob_metabolize(mob/living/L)
	..()
	L.add_movespeed_modifier(/datum/movespeed_modifier/reagent/stimulants)
	ADD_TRAIT(L, TRAIT_NOHARDCRIT, type)
	ADD_TRAIT(L, TRAIT_NOSOFTCRIT, type)
	ADD_TRAIT(L, TRAIT_SLEEPIMMUNE, type)

/datum/reagent/medicine/vamp/ert/on_mob_end_metabolize(mob/living/L)
	L.remove_movespeed_modifier(/datum/movespeed_modifier/reagent/stimulants)
	REMOVE_TRAIT(L, TRAIT_NOHARDCRIT, type)
	REMOVE_TRAIT(L, TRAIT_NOSOFTCRIT, type)
	REMOVE_TRAIT(L, TRAIT_SLEEPIMMUNE, type)
	..()



