class CreateProjectsAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :projects_authors do |t|
      t.string :project_id
      t.integer :author_id
    end
  end
end
