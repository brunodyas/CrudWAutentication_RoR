class CreateItens < ActiveRecord::Migration[6.1]
  def change
    create_table :itens do |t|
      t.string :nome
      t.string :id_seq
      t.text :modelo
      t.decimal :quantidade
      t.string :level

      t.timestamps
    end
  end
end
