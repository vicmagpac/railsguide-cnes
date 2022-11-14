class CreateEstabelecimentos < ActiveRecord::Migration[7.0]
  def change
    create_table :estabelecimentos do |t|
      t.string :nome
      t.string :cnes

      t.timestamps
    end
  end
end
