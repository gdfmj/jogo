extends Label

const timer_sec = 2.0
var timer

func _ready() -> void:
	self.visible_ratio = 1.0
	timer = get_tree().create_timer(timer_sec)
	pass

func _process(_delta: float) -> void:
	await timer.timeout
	visible_ratio = !visible_ratio
	
