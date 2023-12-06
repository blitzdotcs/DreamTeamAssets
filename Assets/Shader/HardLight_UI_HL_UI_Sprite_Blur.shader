Shader "HardLight/UI/HL_UI_Sprite_Blur" {
	Properties {
		[HideInInspector] _MainTex ("Sprit", 2D) = "white" {}
		_clipAmount ("Alpha Clip Amount", Range(0, 1)) = 0.1
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
	//CustomEditor "HL_UI_Sprite_Blur_GUI"
}