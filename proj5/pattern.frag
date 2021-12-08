#version 330 compatibility

uniform float	uTime;		// "Time", from Animate( )
uniform	float	uS0;
uniform float 	uT0;
uniform float uRadius;

//uniform sampler	uTexUnit;
in vec2  	vST;		// texture coords

void
main( )
{

	vec3 myColor = vec3( 0, 1, 0 );

	float xCoord = pow((vST.s - uS0), 2.);
	float yCoord = pow((vST.t - uT0), 2.);
	float combined = xCoord + yCoord;
	float condition = combined;

	if( condition < uRadius )
	{
		myColor = vec3( 1., 0., 0. );
	}
	gl_FragColor = vec4( myColor,  1. );
}
