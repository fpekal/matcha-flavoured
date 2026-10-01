#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;
uniform sampler2D DepthSampler;
uniform Globals {
  ivec3 CameraBlockPos;
  vec3 CameraOffset;
  vec2 ScreenSize;
  float GlintAlpha;
  float GameTime;
  int MenuBlurRadius;
  int UseRgss;
};

float linear_fog_value(float vertexDistance, float fogStart, float fogEnd) {
  if (vertexDistance <= fogStart) {
	return 0.0;
  } else if (vertexDistance >= fogEnd) {
	return 1.0;
  }

  return (vertexDistance - fogStart) / (fogEnd - fogStart);
}

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

void main() {
  vec4 col = texture(InSampler, texCoord);
  vec4 depth = texture(DepthSampler, texCoord);

  float fog_max = (CameraBlockPos.y - CameraOffset.y + 64.0)/128.0;
  fog_max = clamp(fog_max, 0.0, 1.0);
  float dist = (1-depth.r)/2;
  float fog = linear_fog_value((log(dist))*2+3, fog_max*0.3-0.1+1.5, fog_max*0.3+1.5);
  fog = 1-fog;

  vec3 new_col = col.rgb * fog;

  fragColor = vec4(new_col, col.a);
}
