#version 330 compatibility

uniform float	uTime;		// "Time", from Animate( )
uniform float 	uS0;
uniform float	uT0;
uniform float	uA;
uniform float	uB;
uniform float	uRadius;
uniform float	Ds;
uniform float	Dt;
uniform float	ColorR;
uniform float	ColorG;
uniform float	ColorB;

out vec2  	vST;		// texture coords

const float PI = 	3.14159265;
const float AMP = 	5;		// amplitude
const float W = 	2.;		// frequency

void
main( )
{ 
	vST = gl_MultiTexCoord0.st;
	vec3 vert = gl_Vertex.xyz;
	if (vert.x > 0) {
		vert.x = vert.x + uS0 * uA;

	}
	else
	{
		vert.x = vert.x - uS0 * uA;
	}

	if (vert.y > 0) {
		vert.y = vert.y - uS0 * uB;

	}
	else
	{
		vert.y = vert.y - uS0 * uB;
	}

	if (vert.z > 0) {
		vert.z = AMP * sin(2 * PI * W * uTime + uS0);

	}
	else
	{
		vert.z = AMP * sin(2 * PI * W * uTime - uS0);
	}
	gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1. );
}
