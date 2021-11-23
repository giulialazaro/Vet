class CreateCors < ActiveRecord::Migration[6.0]
  def change
    create_table :cors do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
