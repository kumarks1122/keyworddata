class CreateActionStore < ActiveRecord::Migration[5.0]
  def change
    create_table :action_stores do |t|
      t.text :json_data

      t.timestamps
    end
  end
end
