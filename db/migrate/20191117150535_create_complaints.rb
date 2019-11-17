class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.string :complainer_name, default: ''
      t.timestamp :date_of_occurrence
      t.text :description
      t.timestamps
    end
  end
end
