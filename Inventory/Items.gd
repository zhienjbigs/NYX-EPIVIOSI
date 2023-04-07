extends Node2D

func _ready():
	if randi() % 2 == 0:
		$Items.texture = load("res://Inventory/Items/Absolutely.png")
	else:
		$Items.texture = load("res://Inventory/Items/Album.png")
		$Items.rect_scale.x = 0.01
		$Items.rect_scale.y = 0.007
	
		#$Bape.texture = load("res://Inventory/Items/Bape.png")
		#$BlueCross.texture = load("res://Inventory/Items/BlueCross.png")
		#$Camera.texture = load("res://Inventory/Items/Camera.png")
		#$FaceMasks.texture = load("res://Inventory/Items/FaceMasks.png")
		#$Facesheild.texture = load("res://Inventory/Items/Facesheild.png")
		#$GiftCard.texture = load("res://Inventory/Items/GiftCard.png")
