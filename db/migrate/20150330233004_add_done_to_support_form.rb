class AddDoneToSupportForm < ActiveRecord::Migration
  def change
  	add_column :support_forms, :done, :boolean, column_options: {null: false}
  end
end
