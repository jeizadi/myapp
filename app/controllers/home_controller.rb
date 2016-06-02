class HomeController < ApplicationController
	def index
		@shapes = [ {name: 'circle', svg_width: '100', svg_height: '100', cx: '50', cy: '50', r: '40', style: "fill:yellow;stroke-width:4;stroke:green"},
					{name: 'rectangle', svg_width: '400', svg_height: '100', width: '400', height: '100', style: "fill:blue;stroke-width:10;stroke:black"}, 
					{name: 'star', svg_width: '300', svg_height: '200', points: "100,10 40,198 190,78 10,78 160,198", style: "fill:lime;stroke:purple;stroke-width:5;fill-rule:evenodd;"}
					]
		render 'index'
	end
end
