module Griddly

    using CxxWrap
    # @wrapmodule(joinpath(@__DIR__,"..","..","..","Debug","bin","JuGriddly"),:define_module_jugriddly)
	@wrapmodule(joinpath(@__DIR__,"..","..","Release","bin","JuGriddly"),:define_module_jugriddly)

    function __init__()
   		@initcxx
    end
	include("docs.jl")
	include("utils.jl")
    ######################################## RenderTool ########################################
    using Makie
	using FixedPointNumbers
	using ImageCore

	include("rendertools.jl")
	export RenderWindow, VideoRecorder, init, render, save_frame, start_video, add_frame!, save_video, MultipleScreen, render_multiple, save_frames

end
