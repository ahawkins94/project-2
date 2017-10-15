class AddImage2ToProjects < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :projects, :image2
  end

  def self.down
    remove_attachment :projects, :image2
  end
end
