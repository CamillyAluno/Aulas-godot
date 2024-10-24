extends Node2D
@export var pre_inimigo: PackedScene = preload("res://Cenas/inimigo.tscn")
var intervalo = 2

func _process(delta : float) -> void:
	if intervalo > 0:
		intervalo = intervalo - delta
	else:
		intervalo = randf_range(0.3, 1)
		var inimigo = pre_inimigo.instantiate()
		inimigo.position = Vector2(0, randi_range(30, 610))
		get_node("../").add_child(inimigo)
