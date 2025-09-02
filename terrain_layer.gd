extends TileMapLayer

const main_layer = 0
const main_atlas_id = 2

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
			var click_global_position = event.global_position
			var click_local_position = local_to_map(to_local(click_global_position))
			print("Clicked at ", click_local_position)
			var current_atlas_coords = get_cell_atlas_coords(click_local_position)
			var current_tile_alt = get_cell_alternative_tile(click_local_position)
			var number_of_alts_for_clicked = tile_set.get_source(main_atlas_id).get_alternative_tiles_count(current_atlas_coords)
			set_cell(click_local_position, main_atlas_id, current_atlas_coords, (current_tile_alt + 1) % number_of_alts_for_clicked)
			
