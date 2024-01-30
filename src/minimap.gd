extends Node2D

@onready var world = get_node("/root/world");
@onready var tilemap = get_node("/root/world/TileMap");
@onready var player = get_node("/root/Player");
@onready var map = $"TileMap";


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for cell in tilemap.get_used_cells(0):
		var tile = tilemap.get_cell_atlas_coords(0,cell);
		map.set_cell(0, cell, 0, tile);
