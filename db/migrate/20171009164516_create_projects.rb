class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :author
      t.integer :user_id
      t.text :desc
      t.text :image_url
      t.text :github_link

      t.timestamps
    end
  end
end
