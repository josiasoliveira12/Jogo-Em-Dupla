extends Area2D

var posicao_inicial_01: Vector2
var posicao_inicial_02: Vector2

var player_01
var player_02


func _ready() -> void:
	player_01 = get_tree().current_scene.get_node("player_01")
	player_02 = get_tree().current_scene.get_node("player_02")

	# Guarda as posições iniciais
	posicao_inicial_01 = player_01.global_position
	posicao_inicial_02 = player_02.global_position


func _on_body_entered(body: Node2D) -> void:

	if body.name == "player_01":
		print("PLAYER 1 VENCEU!")

	elif body.name == "player_02":
		print("PLAYER 2 VENCEU!")

	else:
		return

	# Volta os dois jogadores para o início
	player_01.global_position = posicao_inicial_01
	player_02.global_position = posicao_inicial_02

	# Para o movimento dos dois
	player_01.velocity = Vector2.ZERO
	player_02.velocity = Vector2.ZERO
