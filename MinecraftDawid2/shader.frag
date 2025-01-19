#version 330 core
out vec4 FragColor;

// check for any incoming vector3 value of the name myColor;
in vec3 myColor;

in vec2 texCoord;

uniform sampler2D tex0;

void main()
{
   // set the color to that vector
   FragColor = texture(tex0, texCoord);
}