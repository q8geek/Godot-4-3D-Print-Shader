shader_type spatial;

render_mode diffuse_lambert, cull_disabled;

uniform vec4 fill_color: source_color;
uniform vec4 body_color: source_color;
uniform float transition_height : hint_range(-1.0, 1.0, 0.001) = 0.125;
uniform float transition_percent : hint_range(0.0, 1.0, 0.001) = 1.0;

// vertex y in mesh space
varying float y_height;

void vertex()
{
	y_height = VERTEX.y;
}

float remap(float value, float from1, float to1, float from2, float to2) 
{
    return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
}

void fragment()
{
	float perc = remap(transition_percent, 0.0, 1.0, -0.5, (0.5 + transition_height));
	float y_cut_mesh_space = perc;
	if (y_height >= y_cut_mesh_space)	discard;


	float back_face = 1. - float(FRONT_FACING);

	float front_facing_color_fac = smoothstep(y_cut_mesh_space - transition_height, y_cut_mesh_space - transition_height + 0.02, y_height);
	float printing_factor = mix(back_face, front_facing_color_fac, 1.0 - back_face);

	vec4 K = mix(body_color, fill_color, printing_factor);
	ALBEDO = K.rgb;
	//ALPHA = K.a;
	EMISSION = mix(vec4(0.0), fill_color, printing_factor).rgb;
}