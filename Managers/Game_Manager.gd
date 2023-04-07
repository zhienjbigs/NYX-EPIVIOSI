extends Node

signal player_initialised

var player

func _process(_delta):
	if not player:
		initialize_player()
		return

func initialize_player():
	player = get_tree().get_root().get_node("/root/Nyx")
	if not player :
		return
		
	emit_signal("player_initialised", player)
	
	player.inventory.connect("invenotry_changed", self, "_on_player_inventory_changed")
	
	var exsitsting_inventory = load("user://inventory.tres")
	if exsitsting_inventory:
		player.inventory.set_items(exsitsting_inventory.get_items())
	else:
		player.inventory.add_item("Absolutely", 1)
		
func _on_player_inventory_changed(inventory):
	ResourceSaver.save()
