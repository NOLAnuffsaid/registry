class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    enable_extension 'hstore' unless extension_enabled?('hstore')
    create_table :products do |t|
      t.string :uuid
      t.boolean :isActive
      t.string :name
      t.string :brand
      t.hstore :images
      t.text :description

      t.timestamps
    end
  end
end
