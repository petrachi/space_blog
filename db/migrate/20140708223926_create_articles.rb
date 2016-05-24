class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :brief
      t.text :content

      t.string :tag, index: true
      t.references :following, index: true # TODO: transform into 'foreign_key' rails 4.2

      t.boolean :published, :default => false
      t.datetime :published_at

      t.timestamps
    end
  end
end
