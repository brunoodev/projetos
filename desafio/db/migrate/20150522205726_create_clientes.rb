class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :email
      t.datetime :datanascimento

      t.timestamps null: false
    end
  end
end
