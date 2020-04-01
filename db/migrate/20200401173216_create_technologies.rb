class CreateTechnologies < ActiveRecord::Migration[5.1]
  def change
    create_table :technologies do |t|
      t.string :name
      t.refernces :portfolio

      t.timestamps
    end
  end
end
