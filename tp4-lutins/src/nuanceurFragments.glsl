#version 410

uniform sampler2D laTexture;

in Attribs {
	vec4 couleur;
	vec2 texCoord;
} AttribsIn;

out vec4 FragColor;

void main(void) {
	vec4 texel = texture(laTexture, AttribsIn.texCoord);
	if(texel.a < 0.1) discard;
	//FragColor = texture( laTexture, gl_PointCoord );
	FragColor = mix(AttribsIn.couleur, texel, 0.7);
	FragColor.a = AttribsIn.couleur.a;
}
