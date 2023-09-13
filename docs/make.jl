using HPhiWrapper
using Documenter

DocMeta.setdocmeta!(HPhiWrapper, :DocTestSetup, :(using HPhiWrapper); recursive=true)

makedocs(;
    modules=[HPhiWrapper],
    authors="ultimatile <ultimatile@users.noreply.github.com> and contributors",
    repo="https://github.com/ultimatile/HPhiWrapper.jl/blob/{commit}{path}#{line}",
    sitename="HPhiWrapper.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ultimatile.github.io/HPhiWrapper.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ultimatile/HPhiWrapper.jl",
    devbranch="main",
)
