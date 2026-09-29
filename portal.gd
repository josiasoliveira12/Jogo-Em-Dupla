extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body.name == "player_01":
		print("Player 01 GANHOU!!")
	elif body.name == "player_02":
		print("Player 02 GANHOU!!")
