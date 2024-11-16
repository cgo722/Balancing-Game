extends Node2D

@export var objects : Array
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		
		
		if event.is_pressed():  # touch down.
			print(1)
		elif not event.is_pressed():  # touch released.
			print(2)
			var itemInstance = objects.pick_random().instantiate()
			var itemLocation = get_viewport().canvas_transform.affine_inverse() * event.position
			add_child(itemInstance)
			itemInstance.position = itemLocation
