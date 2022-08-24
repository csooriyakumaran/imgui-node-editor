project "ImNode"
       kind "StaticLib"
       language "C++"
       staticruntime "off"

        targetdir ("bin/" .. outputdir .. "/%{prj.name}")
        objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

        includedirs
        {
            "imgui-node"
            "../imgui",
        }
        files
        {
            "../imgui/imconfig.h",
            "../imgui/imgui.h",
            "../imgui/imgui.cpp",
            "../imgui/imgui_draw.cpp",
            "../imgui/imgui_internal.h",
            "../imgui/imgui_tables.cpp",
            "../imgui/imgui_widgets.cpp",
            "../imgui/imstb_rectpack.h",
            "../imgui/imstb_textedit.h",
            "../imgui/imstb_truetype.h",
            "../imgui/imgui_demo.cpp", 

            "crude_json.h",
            "crude_json.cpp",
            "imgui_bezier_math.h",
            "imgui_canvas.h",
            "imgui_canvas.cpp",
            "imgui_extra_match.h",
            "imgui_node_editor.h",
            "imgui_node_editor.cpp",
            "imgui_node_editor_internal.h",
            "imgui_node_editor_api.h",

        }

        filter "system:windows"
            systemversion "latest"
            cppdialect "C++17"

        filter "system:linux"
            pic "On"
            systemversion "latest"
            cppdialect "C++17"

        filter "configurations:Debug"
            runtime "Debug"
            symbols "on"

        filter "configurations:Release"
            runtime "Release"
            optimize "on"

        filter "configurations:Dist"
            runtime "Release"
            optimize "on"
            symbols "off"