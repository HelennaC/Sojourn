#include "map/asteroid.dmm"

/obj/map_data/asteroid
	name = "Asteroid Level"
	is_player_level = TRUE
	is_contact_level = TRUE
	generate_asteroid = TRUE
	is_accessable_level = TRUE
	height = 1

//MINING-1 // CLUSTER
/obj/effect/overmap/sector/asteroid
	name = "asteroid"
	desc = "A large asteroid. Mineral content detected."
	icon_state = "sector"
	generic_waypoints = list(
		"nav_asteroid_1",
		"nav_asteroid_2"
	)
	start_x = 9
	start_y = 10
	known = 1
	in_space = 0

/obj/effect/shuttle_landmark/asteroid/nav1
	name = "Asteroid Landing zone #1"
	icon_state = "shuttle-green"
	landmark_tag = "nav_asteroid_1"
	base_area = /area/mine/explored
	base_turf = /turf/simulated/floor/asteroid

/obj/effect/shuttle_landmark/asteroid/nav2
	name = "Asteroid Landing zone #2"
	icon_state = "shuttle-green"
	landmark_tag = "nav_asteroid_2"
	base_area = /area/mine/explored
	base_turf = /turf/simulated/floor/asteroid