extends Control

func _physics_process(_delta):
	Global.brick_hue = $VSlider.value

func _on_Restart_pressed():
	get_tree().paused = false
	Global.reset()
	var _scene = get_tree().change_scene("res://Game.tscn")


func _on_Quit_pressed():
	get_tree().quit()


func _on_ColorPicker_color_changed(color):
	var Paddle = get_node_or_null("/root/Game/Paddle_Container/Paddle/ColorRect")
	if Paddle != null:
		Paddle.color = $ColorPicker.color

