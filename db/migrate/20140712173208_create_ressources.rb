class CreateRessources < ActiveRecord::Migration
  def change
    create_table :ressources do |t|
      t.string :title
      t.text :brief
      t.text :content

      t.string :tag, index: true

      t.boolean :published, :default => false
      t.datetime :published_at

      t.timestamps
    end
  end
end
