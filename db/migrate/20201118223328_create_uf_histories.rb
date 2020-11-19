class CreateUfHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :uf_histories do |t|
      t.date :day
      t.float :value

      t.timestamps
    end
  end
end
