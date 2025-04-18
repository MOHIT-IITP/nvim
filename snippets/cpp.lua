local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

-- Define the C++ snippet template
ls.add_snippets("cpp", {
    s("cpp_template", {
        t({
            "// MOHIT-IITP template",
            "#include <bits/stdc++.h>",
            "using namespace std;",
            "#define ll long long",
            "#define pb push_back",
            "#define MOD 1000000007",
            "",
            "int main() {",
            "    int t;",
            "    cin >> t;",
            "    while(t--){",
            "        ",
            "    }",
            "    return 0;",
            "}"
        }),
    }),
})

