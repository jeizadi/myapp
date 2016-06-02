class CreateShapes < ActiveRecord::Migration
  def change
    create_table :shapes do |t|
      t.string :name
      t.string :svg_width
      t.string :svg_height
      t.string :cx
      t.string :cy
      t.string :r
      t.string :style
      t.string :points
      t.string :width
      t.string :height

      t.timestamps null: false
    end
  end
end
