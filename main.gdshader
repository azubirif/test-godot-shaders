shader_type canvas_item;

uniform vec2 mousePos;
uniform vec2 SCREEN_SIZE;
uniform float lightRadius = 10.0;
varying float dist;

//Funcion distancia
//A cuanta mas distancia, menos alpha


void vertex() {
	// Called for every vertex the material is visible on.
	//float pi = 3.141592653589793;
	//VERTEX *= .5 + (sin(fract(TIME) * pi * 2.) + 1.) / 4.;
}

void fragment() {
	// Called for every pixel the material is visible on.
	//COLOR = vec4(sin(UV.x), cos(UV.y), 0.0, 1.0);
	COLOR = texture(TEXTURE, UV);
	dist = distance(mousePos, FRAGCOORD.xy);
	COLOR.a = dist;
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
