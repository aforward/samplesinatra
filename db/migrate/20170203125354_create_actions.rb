class CreateActions < ActiveRecord::Migration[5.0]
  def change
    create_table :actions do |t|
      t.string :name
      t.string :entity_type
      t.string :entity_id
      t.jsonb :data
    end
  end
end
