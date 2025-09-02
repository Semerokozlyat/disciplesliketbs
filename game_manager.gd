extends Node

enum GameState {
	WORLD_MAP,  # Army movement phase
	COMBAT,     # Tactical combat
	CITY_MANAGEMENT, # Building and recruiting
	END_TURN,   # Processing of AI turns
}
