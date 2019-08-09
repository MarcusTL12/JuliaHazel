include("../Hazel/src/Hazel.jl")



module Sandbox

using ..Hazel
using Logging

mutable struct SandboxApp <: Application
    counter::Int
    
    function SandboxApp()
        @info "Creating new SandboxApp"
        new(0)
    end
end


function start(app::SandboxApp)
    @info "SandboxApp Started"
end


free(::SandboxApp) = @info "SandboxApp Freed"


function __init__()
    Hazel.entry_point(SandboxApp, Sandbox)
end


end

nothing

