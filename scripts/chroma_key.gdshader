shader_type canvas_item;

void fragment() {
	if(UV.y < 0.1 || UV.y > 0.95)
		discard;
	
	vec4 col = texture(TEXTURE, UV);
	if (col.g > 0.8 && col.r < 0.2 && col.b < 0.2)
		COLOR = vec4(0.);
}
