extends Node2D
var velocidade = 250 #velocidade do morcego

func _process(delta : float) -> void:
	position = position + Vector2(-1, 0) * velocidade * delta
	
	
