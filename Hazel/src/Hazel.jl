
module Hazel

using Logging

include("Hazel/core.jl")
include("Hazel/application.jl")
include("Hazel/entry_point.jl")

hz_print() = println("Welcome to hazel engine!")

function get_logger()
    # ConsoleLogger()
    # SimpleLogger()
    global_logger()
end

function __init__()
    
end

end
