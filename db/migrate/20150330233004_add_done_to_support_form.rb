class AddDoneToSupportForm < ActiveRecord::Migration
  def change
  	add_column :support_forms, :is_done, :smallint, column_options: {null: 0}
  end
end
