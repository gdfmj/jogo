extends Label

const display_vel = 0.25
var timer

func _ready() -> void:
	visible_ratio = 0
	pass

func _process(delta: float) -> void:
	if visible_ratio < 1.0:
		visible_ratio += display_vel * delta
		if visible_ratio >= 1.0:
			timer = get_tree().create_timer(2.5)
	else:
		await timer.timeout
		visible_ratio = 0
	
