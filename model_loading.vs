//顶点着色器
#version 330 core
layout(location = 0) in vec3 aPos; // 位置变量的属性位置值为0
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

out vec2 TexCoords; // 为片段着色器指定一个颜色输出

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    TexCoords = aTexCoords;    
    gl_Position = projection * view * model * vec4(aPos, 1.0);
}