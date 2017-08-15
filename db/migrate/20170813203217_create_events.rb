class CreateEvents < ActiveRecord::Migration[5.0]
  def up
    execute <<-SQL
      CREATE TYPE event_name AS ENUM ('WEDDING', 'BIRTHDAY', 'BABY_SHOWER');
    SQL
    create_table :events do |t|
      t.column :name, :event_name

      t.timestamps
    end
  end
  def down
    drop_table :events

    execute <<-SQL
      DROP TYPE event_name;
    SQL
  end
end
