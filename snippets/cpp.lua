local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

-- Define the C++ snippet template
ls.add_snippets("cpp", {
    s("cpp_template", {
        t({
            "#include <bits/stdc++.h>",
            "using namespace std",
            "// MOHIT-IITP template",
            "",
            "int main() {",
            "    std::cout << \"Hello, World!\" << std::endl;",
            "    return 0;",
            "}"
        }),
    }),
})

