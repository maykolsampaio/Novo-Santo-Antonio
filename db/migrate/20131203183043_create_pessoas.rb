class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :sexo
      t.string :alfabetizado
      t.string :frequenta_escola
      t.references :ocupacao, index: true
      t.references :doencas, index: true
      t.string :nome_plano_de_saude
      t.string :meio_comunicacao
      t.string :cooperativa
      t.string :religiao
      t.string :transporte
      t.references :ficha, index: true

      t.timestamps
    end
  end
end
