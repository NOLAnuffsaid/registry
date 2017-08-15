class CreateEventRegistries < ActiveRecord::Migration[5.0]
  def change
    create_table :event_registries do |t|
      t.string :registry_shared_id

      t.timestamps
    end
  end
end
