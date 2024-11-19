extends Node2D

var gyro = Input.get_accelerometer()
@export var mobile : bool
@export var speed : float = 10
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if mobile == true:
		rotate(deg_to_rad(speed * gyro.x))
	else:
		rotate(deg_to_rad(speed * Input.get_axis("Left", "Right")))
		
	if rotation > deg_to_rad(45):
		rotation = deg_to_rad(45)
	if rotation < deg_to_rad(-45):
		rotation = deg_to_rad(-45)
	pass
