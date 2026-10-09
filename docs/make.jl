using Documenter
using MaterialDocs
using JuliaMapping

makedocs(;
    sitename = "JuliaMapping.jl",
    authors = "Richard Careaga <public@careaga.net>",
    modules = [JuliaMapping],
    format = Material3(;
        theme = :ocean_depth,
        dark_mode = :toggle,
        edit_link = "main",
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical = "https://technocrat.github.io/JuliaMapping.jl",
    ),
    repo = Remotes.GitHub("technocrat", "JuliaMapping.jl"),
    pages = [
        "Home" => "index.md",
    ],
    checkdocs = :none,
)

deploydocs(;
    repo = "github.com/technocrat/JuliaMapping.jl.git",
    devbranch = "main",
)
