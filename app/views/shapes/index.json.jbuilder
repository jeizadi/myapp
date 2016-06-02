json.array!(@shapes) do |shape|
  json.extract! shape, :id, :type, :svg_width, :svg_height, :cx, :cy, :r, :style, :points, :width, :height
  json.url shape_url(shape, format: :json)
end
