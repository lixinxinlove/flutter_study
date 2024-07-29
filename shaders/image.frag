#version 460 core
#include <flutter/runtime_effect.glsl>

precision mediump float;

uniform vec2 uSize;
uniform float al;
uniform sampler2D uTexture; //片元着色器

out vec4 fragColor;

void main() {
    vec2 coo = FlutterFragCoord().xy / uSize;
    vec4 color = texture(uTexture, coo);  //顶点着色器

    float r=color.r;
    float g=color.g;
    float b=color.b;

    //fragColor = mix(color,vec4(5, 83, 177, 255) / 255,coo.x);
    fragColor =vec4(r,g,b,al);
}