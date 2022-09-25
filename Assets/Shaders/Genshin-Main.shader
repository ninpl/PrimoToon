﻿Shader ".festivity/PrimoToon/genshin-main"{
    Properties{
        [Header(Textures)] [MainTex] [NoScaleOffset] [HDR] [Space(10)] _DiffuseTex ("Diffuse", 2D) = "white"{}
        [NoScaleOffset] _LightmapTex ("Lightmap", 2D) = "white"{}
        [NoScaleOffset] _NormalTex ("Normal Map", 2D) = "bump"{}
        [NoScaleOffset] [HDR] _ShadowRampTex ("Shadow Ramp", 2D) = "white"{}
        [NoScaleOffset] [HDR] _SpecularRampTex ("Specular Ramp", 2D) = "white"{}
        [NoScaleOffset] [HDR] _MetalMapTex ("Metallic Matcap", 2D) = "white"{}

        [Header(Miscellaneous and Lighting Options)] [Space(10)] _DayOrNight ("Nighttime?", Range(0.0, 1.0)) = 0.0
        _EnvironmentLightingStrength ("Environment Lighting Strength", Range(0.0, 1.0)) = 1.0
        [KeywordEnum(Add, Color Dodge)] _RimLightType ("Rim Light Blend Mode", Float) = 0.0
        _RimLightIntensity ("Rim Light Intensity", Float) = 1.0
        _RimLightThickness ("Rim Light Thickness", Range(0.0, 10.0)) = 1.0

        [Header(Emission Options)] [Space(10)] [Toggle] _ToggleEmission ("Toggle Emission?", Range(0.0, 1.0)) = 0.0
        [Toggle] _ToggleEyeGlow ("Toggle Eye Glow?", Range(0.0, 1.0)) = 1.0
        [KeywordEnum(Default, Custom)] _EmissionType ("Emission Type", Float) = 0.0
        [NoScaleOffset] [HDR] _CustomEmissionTex ("Custom Emission Texture", 2D) = "black"{}
        [NoScaleOffset] _CustomEmissionAOTex ("Custom Emission AO", 2D) = "white"{}
        [Gamma] _EmissionColor ("Emission Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        _EyeGlowStrength ("Eye Glow Strength", Float) = 1.0
        _EmissionStrength ("Emission Strength", Float) = 1.0
        [Toggle] _TogglePulse ("Toggle Pulse?", Range(0.0, 1.0)) = 0.0
        _PulseSpeed ("Pulse Speed", Float) = 1.0
        _PulseMinStrength ("Minimum Pulse Strength", Range(0.0, 1.0)) = 0.0
        _PulseMaxStrength ("Maximum Pulse Strength", Range(0.0, 1.0)) = 1.0

        [Header(Diffuse or Lighting Options)] [Space(10)] _BumpScale ("Bump Scale", Range(0.0, 1.0)) = 1.0
        _LightArea ("Shadow Position", Range(0.0, 2.0)) = 0.55
        _ShadowRampWidth ("Ramp Width", Range(0.2, 3.0)) = 1.0
        [Toggle] _UseBackFaceUV2 ("Use second UV for backfaces?", Float) = 1.0
        [Toggle] _UseMaterial2 ("Toggle Material 2", Float) = 1.0
        [Toggle] _UseMaterial3 ("Toggle Material 3", Float) = 1.0
        [Toggle] _UseMaterial4 ("Toggle Material 4", Float) = 1.0
        [Toggle] _UseMaterial5 ("Toggle Material 5", Float) = 1.0
        [Toggle] _UseShadowRamp ("Use Shadow Ramp Texture?", Float) = 1.0

        [Header(Specular Options)] [Space(10)] _Shininess ("Shininess 1", Float) = 10
        _Shininess2 ("Shininess 2", Float) = 10
        _Shininess3 ("Shininess 3", Float) = 10
        _Shininess4 ("Shininess 4", Float) = 10
        _Shininess5 ("Shininess 5", Float) = 10
        _SpecMulti ("Specular Multiplier 1", Float) = 0.1
        _SpecMulti2 ("Specular Multiplier 2", Float) = 0.1
        _SpecMulti3 ("Specular Multiplier 3", Float) = 0.1
        _SpecMulti4 ("Specular Multiplier 4", Float) = 0.1
        _SpecMulti5 ("Specular Multiplier 5", Float) = 0.1
        [Gamma] _SpecularColor ("Specular Color", Color) = (1.0, 1.0, 1.0, 1.0)

        [Header(Metallic Options)] [Space(10)] _MTMapBrightness ("Metallic Matcap Brightness", Float) = 3.0
        _MTMapTileScale ("Metallic Matcap Tile Scale", Range(0.0, 2.0)) = 1.0
        _MTShininess ("Metallic Specular Shininess", Float) = 90.0
        _MTSpecularAttenInShadow ("Metallic Specular Attenuation in Shadow", Range(0.0, 1.0)) = 0.2
        _MTSpecularScale ("Metallic Specular Scale", Float) = 15.0
        [Toggle] _MTUseSpecularRamp ("Use Specular Ramp Texture?", Float) = 0.0
        [Toggle] _MetalMaterial ("Enable Metallic?", Range(0.0, 1.0)) = 1.0
        [Gamma] _MTMapDarkColor ("Metallic Matcap Dark Color", Color) = (0.51, 0.3, 0.19, 1.0)
        [Gamma] _MTMapLightColor ("Metallic Matcap Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [Gamma] _MTShadowMultiColor ("Metallic Matcap Shadow Multiply Color", Color) = (0.78, 0.77, 0.82, 1.0)
        [Gamma] _MTSpecularColor ("Metallic Specular Color", Color) = (1.0, 1.0, 1.0, 1.0)

        [Header(Outline Options)] [Space(10)] _MaxOutlineZOffset ("Z-Offset", Float) = 1.0
        [Toggle] [HideInInspector] _ClipPlaneWorld ("Clip Plane World", Range(0.0, 1.0)) = 1.0
        [KeywordEnum(None, Normal, Tangent)] _OutlineType ("Outline Type", Float) = 1.0
        _OutlineWidth ("Outline Width", Float) = 0.03
        [HideInInspector] _Scale ("Outline Scale", Float) = 0.001
        [Toggle] [HideInInspector] _UseClipPlane ("Use Clip Plane?", Range(0.0, 1.0)) = 0.0
        [HideInInspector] _ClipPlane ("Clip Plane", Vector) = (0.0, 0.0, 0.0, 0.0)
        [Gamma] _OutlineColor ("Outline Color 1", Color) = (0.0, 0.0, 0.0, 1.0)
        [Gamma] _OutlineColor2 ("Outline Color 2", Color) = (0.0, 0.0, 0.0, 1.0)
        [Gamma] _OutlineColor3 ("Outline Color 3", Color) = (0.0, 0.0, 0.0, 1.0)
        [Gamma] _OutlineColor4 ("Outline Color 4", Color) = (0.0, 0.0, 0.0, 1.0)
        [Gamma] _OutlineColor5 ("Outline Color 5", Color) = (0.0, 0.0, 0.0, 1.0)
        [HideInInspector] _OutlineWidthAdjustScales ("Outline Width Adjust Scales", Vector) = (0.01, 0.245, 0.6, 0.0)
        [HideInInspector] _OutlineWidthAdjustZs ("Outline Width Adjust Zs", Vector) = (0.001, 2.0, 6.0, 0.0)

        [Header(Debugging)] [Space(10)] [Toggle] _ReturnVertexColors ("Show Vertex Colors (RGB only)", Range(0.0, 1.0)) = 0.0
        [Toggle] _ReturnVertexColorAlpha ("Show Vertex Color Alpha", Range(0.0, 1.0)) = 0.0
        [Toggle] _ReturnRimLight ("Show Rim Light", Range(0.0, 1.0)) = 0.0
        [Toggle] _ReturnNormals ("Show Normals", Range(0.0, 1.0)) = 0.0
        [Toggle] _ReturnRawNormals ("Show Raw Normals", Range(0.0, 1.0)) = 0.0
        [Toggle] _ReturnTangents ("Show Tangents", Range(0.0, 1.0)) = 0.0
        [Toggle] _ReturnMetal ("Show Metal", Range(0.0, 1.0)) = 0.0
        [Toggle] _ReturnEmissionFactor ("Show Emission Factor", Range(0.0, 1.0)) = 0.0
    }
    SubShader{
        Tags{ 
            "RenderType"="Opaque"
            "Queue"="Geometry"
        }

        Stencil{
            Ref [_Stencil]
            ReadMask [_StencilReadMask]
            WriteMask [_StencilWriteMask]
            Comp [_StencilComp]
            Pass [_StencilPass]
            Fail [_StencilFail]
            ZFail [_StencilZFail]
            CompBack [_StencilCompBack]
            PassBack [_StencilPassBack]
            FailBack [_StencilFailBack]
            ZFailBack [_StencilZFailBack]
            CompFront [_StencilCompFront]
            PassFront [_StencilPassFront]
            FailFront [_StencilFailFront]
            ZFailFront [_StencilZFailFront]
        }

        HLSLINCLUDE

        #include "UnityCG.cginc"
        #include "UnityLightingCommon.cginc"
        #include "UnityShaderVariables.cginc"

        #pragma multi_compile _ UNITY_HDR_ON
        #pragma multi_compile_fog

        ENDHLSL

        Pass{
            Name "ForwardBase"

            Tags{
                "LightMode" = "ForwardBase"
            }

            Cull Off

            HLSLPROGRAM

            #pragma vertex vert
            #pragma fragment frag

            #pragma multi_compile_fwdbase

            #include "Genshin-Main.hlsl"

            ENDHLSL
        }
        Pass{
            Name "OutlinePass"
            
            Tags{
                "LightMode" = "ForwardBase" // i know, why two ForwardBase passes...
            }                               // ForwardAdd just doesn't work for me... :(

            Cull Front

            HLSLPROGRAM

            #pragma vertex vert
            #pragma fragment frag

            #pragma multi_compile_fwdbase

            #include "Genshin-Outlines.hlsl"

            ENDHLSL
        }
        UsePass "Standard/SHADOWCASTER"
    }
}
