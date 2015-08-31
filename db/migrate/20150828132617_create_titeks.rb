class CreateTiteks < ActiveRecord::Migration
  def change
    create_table :titeks do |t|

      t.timestamps null: false
    end
  end
end
