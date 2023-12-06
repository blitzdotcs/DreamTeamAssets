Shader "HardLight/Particle/HL_Particle_Main" {
	Properties {
		_Primary_Color ("Primary Color", Vector) = (1,1,1,0)
		_Secondary_Color ("Secondary Color", Vector) = (1,1,1,0)
		_Color_Offset ("Color Offset", Range(-1, 1)) = 0
		[NoScaleOffset] _MainTex ("MainTex", 2D) = "white" {}
		_Softness ("Softness", Float) = 1
		[Toggle(_DEPTHFADE)] _DEPTHFADE ("DepthFade", Float) = 0
		_DepthFadeDistance ("DepthFadeDistance", Float) = 1
		_DepthFadeStrength ("DepthFadeStrength", Float) = 1
		[Toggle(_GRADIENTMAPENABLE)] _GRADIENTMAPENABLE ("GradientMapEnable", Float) = 0
		[NoScaleOffset] _gradienmap ("gradienmap", 2D) = "white" {}
		_GradientMapSpeed ("GradientMapSpeed", Float) = 1
		[ToggleUI] _Camera_Distance_Fade ("Camera Distance Fade", Float) = 0
		_Camera_Distance_Fade_Near ("Camera Distance Fade Near", Float) = 0
		_Camera_Distance_Fade_Far ("Camera Distance Fade Far", Float) = 0
		[HideInInspector] _CastShadows ("_CastShadows", Float) = 0
		[HideInInspector] _Surface ("_Surface", Float) = 1
		[HideInInspector] _Blend ("_Blend", Float) = 0
		[HideInInspector] _AlphaClip ("_AlphaClip", Float) = 0
		[HideInInspector] _SrcBlend ("_SrcBlend", Float) = 1
		[HideInInspector] _DstBlend ("_DstBlend", Float) = 0
		[ToggleUI] [HideInInspector] _ZWrite ("_ZWrite", Float) = 0
		[HideInInspector] _ZWriteControl ("_ZWriteControl", Float) = 0
		[HideInInspector] _ZTest ("_ZTest", Float) = 4
		[HideInInspector] _Cull ("_Cull", Float) = 2
		[HideInInspector] _AlphaToMask ("_AlphaToMask", Float) = 0
		[HideInInspector] _QueueOffset ("_QueueOffset", Float) = 0
		[HideInInspector] _QueueControl ("_QueueControl", Float) = -1
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	//CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
}