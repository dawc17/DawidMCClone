#version 330 core
layout (location = 0) in vec3 aPos;

layout (location = 1) in vec2 aTex;

// output at color vec3 for the fragment shader to use
out vec3 myColor;

out vec2 texCoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
   // using the uniform, change the scale by multiplying every aPos with scale
   gl_Position = projection * view * model * vec4(aPos, 1.0);
   texCoord = aTex;
}