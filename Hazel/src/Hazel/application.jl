

export Application, start, free
abstract type Application end

function start(a::Application)
    @warn "Function: \"start(::$typeof(a))\" must be implemented for
    application"
end

function free(a::Application)
    @warn "Function: \"free(::$typeof(a))\" must be implemented for
    application"
end