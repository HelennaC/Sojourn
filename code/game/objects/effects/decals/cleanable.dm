/obj/effect/decal/cleanable
	layer = ABOVE_NORMAL_TURF_LAYER
	var/list/random_icon_states = list()
	random_rotation = 1

/obj/effect/decal/cleanable/clean_blood(ignore = 0)
	if(!ignore)
		qdel(src)
		return
	..()

/obj/effect/decal/cleanable/New()
	if (random_icon_states && length(src.random_icon_states) > 0)
		src.icon_state = pick(src.random_icon_states)
	..()
