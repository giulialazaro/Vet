class CreateRacas < ActiveRecord::Migration[6.0]
  def change
    create_table :racas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
