class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      # t.references :user, index: true

      t.string :title
      t.text :brief

      t.string :pool
      # t.boolean :published, :default => false
      # t.datetime :published_at
      t.string :tag, index: true
      # t.string :series

      t.timestamps
    end
  end
end
