class CreateDoencaPessoas < ActiveRecord::Migration
  def change
    create_table :doenca_pessoas do |t|
      t.date :data
      t.text :observacao

      t.timestamps
    end
  end
end
