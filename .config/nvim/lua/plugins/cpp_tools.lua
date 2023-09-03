local cpp_tools_status, cpp_tools = pcall(require, "nt-cpp-tools")
if not cpp_tools_status then
    return
end

cpp_tools.setup({
    preview = {
        quit = "q",
        accept = "<cr>",
    },
    header_extension = "h",
    source_extension = "cxx",
    custom_define_class_function_commands = {
        TSCppTmplWrite = {
            output_handle = require("nt-cpp-tools.output_handlers").get_add_to_cpp(),
        },
    },
})
