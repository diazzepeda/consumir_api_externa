class CreateRecursoExternos < ActiveRecord::Migration[7.0]
  def change
    create_table :recurso_externos do |t|

      t.timestamps
    end
  end
end
