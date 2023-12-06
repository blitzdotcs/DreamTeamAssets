Shader "Hidden/HardLight/RenderFeature/HL_FullScreen_Effects" {
	Properties {
		_Separator ("#", Float) = 0
		_Title_Fade_To_Colour ("## Fade To Colour", Float) = 0
		_Fade_To_Color ("-- Fade To Color", Vector) = (1,1,1,0)
		_Fade_To_Colour_Amount ("-- Fade To Colour Amount", Range(0, 1)) = 0
		_Separator_1 ("# (1)", Float) = 0
		_Title_Dream_Vignette ("## Dream Vignette", Float) = 0
		_Vignette_Amount ("-- Vignette Amount", Range(0, 2)) = 1
		_Vignette_Opacity ("-- Vignette Opacity", Range(0, 1)) = 1
		_Vignette_Tint ("-- Vignette Tint", Vector) = (1,0,1,1)
		[NoScaleOffset] _Vignette_Texture ("-- Vignette Texture", 2D) = "white" {}
		_Vignette_Colour_Boost ("-- Vignette Colour Boost", Range(1, 2)) = 1
		_Vignette_Flow_Map_Strength ("-- Vignette Flow Map Strength", Range(0, 1)) = 0.5
		_Vignette_Flow_Map_Speed ("-- Vignette Flow Map Speed", Range(-1, 1)) = 0.5
		[NoScaleOffset] _Vignette_Flow_Map_Texture ("-- Vignette Flow Map Texture", 2D) = "linearGrey" {}
		_Separator_2 ("# (2)", Float) = 0
		_Title_Edge_Distortion ("## Edge Distortion", Float) = 0
		_Edge_Distortion_Amount ("-- Edge Distortion Amount", Range(-5, 0)) = 0
		_Separator_3 ("# (3)", Float) = 0
		_Title_Speed_Lines ("## Speed Lines", Float) = 0
		[NoScaleOffset] _Speed_Lines_Packed_Noise_Texture ("-- Speed Lines Packed Noise Texture", 2D) = "white" {}
		_Speed_Lines_Opacity ("-- Speed Lines Opacity", Range(0, 1)) = 0
		_Speed_Lines_Amount ("-- Speed Lines Amount", Float) = 15
		_Speed_Lines_Scale ("-- Speed Lines Scale", Range(0, 0.2)) = 0.15
		_Speed_Lines_Speed ("-- Speed Lines Speed", Range(-2, 2)) = -2
		[HDR] _Speed_Lines_Colour_Tint ("-- Speed Lines Colour Tint", Vector) = (1,1,1,0)
		_Separator_4 ("# (4)", Float) = 0
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	//CustomEditor "UnityEditor.Rendering.Fullscreen.ShaderGraph.FullscreenShaderGUI"
}