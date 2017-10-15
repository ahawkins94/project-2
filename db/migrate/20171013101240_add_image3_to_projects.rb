class AddImage3ToProjects < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :projects, :image3
  end

  def self.down
    remove_attachment :projects, :image3
  end
end
