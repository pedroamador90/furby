class AddReferencesToTasks < ActiveRecord::Migration
  def change
  	change_table :tasks do |t|
  		t.references :user
  		t.references :project
  	end
  end
end
