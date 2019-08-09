
function entry_point(T::Type{<:Application}, mod::Module)
    with_logger(get_logger()) do
        @info "Starting application of type: $T"
        app = T()
        mod.start(app)
        mod.free(app)
        @info "Exiting application of type $T"
    end
end
