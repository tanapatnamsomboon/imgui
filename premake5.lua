-- ~/thirdparty/imgui/premake5.lua

project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++23"
	staticruntime "off"
	
	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imgui_demo.cpp",
		"imgui.h",
		"imconfig.h",
		"imgui_internal.h",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
	}
	
	includedirs
	{
		".",
	}
	
	filter "system:windows"
		systemversion "latest"
		defines
		{
		}
		
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		
	filter "configurations:Release"
		runtime "Release"
		optimize "on"