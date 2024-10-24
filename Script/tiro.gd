extends Node2D
var velocidade = 500

func _process(delta: float) -> void:
	position +=  Vector2(1,0) * velocidade * delta 
	if position.x >=1182:
		queue_free()
