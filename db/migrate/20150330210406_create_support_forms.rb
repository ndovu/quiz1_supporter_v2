class CreateSupportForms < ActiveRecord::Migration
  def change
    create_table :support_forms do |t|
      t.string :name
      t.string :email
      t.string :department
      t.text :message

      t.timestamps null: false
    end
  end
end
