Shader "HardLight/UI/HL_UI_Dream_Effect" {
	Properties {
		[HideInInspector] _MainTex ("Sprite", 2D) = "white" {}
		[Header(Dream Effect)] [Space(4)] [NoScaleOffset] _Dream_Gradient ("Dream Gradient", 2D) = "white" {}
		_Dream_Noise ("Dream Noise", 2D) = "white" {}
		_Dream_Gradient_Offset ("Dream Gradient Offset", Float) = 1
		_Dream_Gradient_Multiplier ("Dream Gradient Multiplier", Range(0, 2)) = 1
		_Dream_Noise_Speed ("Dream Noise Speed", Range(0, 0.25)) = 0.1
		_Alpha_Dream_Noise_Amount ("Alpha Dream Noise Amount", Range(0, 1)) = 1
		[HideInInspector] _Alpha_Dream_Noise_Contrast ("Alpha Contrast", Range(0, 1)) = 0.75
		_Use_Sprite_RGB_Texture ("Sprite RGB = 0, Sprite Alpha = 1", Range(0, 1)) = 1
		[Header(Blending)] [Enum(UnityEngine.Rendering.BlendMode)] _BlendSrc ("Blend mode Source", Float) = 5
		[Enum(UnityEngine.Rendering.BlendMode)] _BlendDst ("Blend mode Destination", Float) = 10
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
}