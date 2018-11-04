#version 330

layout (location = 0) in vec3 pos;
layout (location = 1) in vec3 col;

uniform mat4 viewMatrix;

out vec3 out_col;

void main()
{
	gl_Position = viewMatrix * vec4(pos, 1);
	out_col = col;
}