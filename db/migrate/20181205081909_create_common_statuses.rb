class CreateCommonStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :common_statuses do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
