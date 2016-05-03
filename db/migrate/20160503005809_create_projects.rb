class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :string
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
