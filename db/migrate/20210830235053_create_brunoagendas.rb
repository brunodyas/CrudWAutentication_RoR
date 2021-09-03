class CreateBrunoagendas < ActiveRecord::Migration[6.1]
  def change
    create_table :brunoagendas do |t|
      t.string :nome
      t.string :id_seq
      t.text :endereco
      t.decimal :preco
      t.string :email

      t.timestamps
    end
  end
end
