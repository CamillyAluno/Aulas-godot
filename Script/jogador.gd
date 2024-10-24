extends Node2D
@export var tiro_scene: PackedScene = preload("res://Cenas/tiro.tscn")
var velocidade = 500

func _process(delta: float) -> void:
	var direcao = Vector2.ZERO
	if Input.is_action_pressed("cima"):
		direcao.y = -1
	if Input.is_action_pressed("baixo"):
		direcao.y = +1
	if Input.is_action_pressed("direita"):
		direcao.x = +1
	if Input.is_action_pressed("esquerda"):
		direcao.x = -1
	position += velocidade * direcao * delta	
	if Input.is_action_pressed("tiro"):
		var tiro =  tiro_scene.instantiate()
		tiro.global_position = global_position
		get_node("../").add_child(tiro)
