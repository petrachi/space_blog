class CreateRessources < ActiveRecord::Migration
  def change
    create_table :ressources do |t|
      # t.references :user, index: true

      t.string :title
      t.text :brief
      # t.string :url

      t.string :pool
      # t.boolean :published, :default => false
      # t.datetime :published_at
      t.string :tag, index: true

      t.timestamps
    end
  end
end
