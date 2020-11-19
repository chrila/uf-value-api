class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :client
      t.string :query

      t.timestamps
    end
  end
end
