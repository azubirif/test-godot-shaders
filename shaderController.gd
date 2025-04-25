extends Sprite2D

var result_viewport: Viewport

func _ready() -> void:
	# Crear Viewport oculto
	result_viewport = Viewport.new.call()
	result_viewport.size = Vector2(1, 1)  # Solo necesitamos 1 píxel
	result_viewport.render_target_update_mode = Viewport.VRS_UPDATE_ALWAYS
	result_viewport.transparent_bg = true
	add_child(result_viewport)

	# Conectar señal de proceso
	set_process(true)

func _process(delta: float) -> void:
	var mouse_pos = get_viewport().get_mouse_position()
	print(mouse_pos)
	# Pasar al shader
	material.set_shader_parameter("mousePos", mouse_pos)
	material.set_shader_parameter("SCREEN_SIZE", get_viewport().size)