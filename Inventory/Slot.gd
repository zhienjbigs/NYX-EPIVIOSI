extends Panel

var default_tex = preload("res://Inventory/item_slot.png")
var empty_tex = preload("res://Inventory/item_slot_empty.png")

var default_style: StyleBoxTexture = null
var empty_style: StyleBoxTexture = null

var ItemClass = preload("res://Inventory/Items.tscn")
var item = null

func _ready():
	default_style = StyleBoxTexture.new()
	empty_style = StyleBoxTexture.new()
	default_style.texture = default_tex
	empty_style.texture = empty_tex
	
	if randi() % 2 == 0:
		item = ItemClass.instance()
		add_child(item)
	refresh_style()
	
func refresh_style():
	if item == null:
		set('custom_styles/panel', empty_style)
	else:
		set('custom_styles/panel', default_style)
