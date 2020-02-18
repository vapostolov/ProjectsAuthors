require File.expand_path("../../test_helper", __FILE__)

class ProjectsAuthorsControllerTest < ActionController::TestCase
  fixtures :projects
  plugin_fixtures :projects_authors, :enabled_modules

  def setup
    @project = Project.find(1)
  end

  def test_index
    get(:authors,     :project_id => @project.identifier)
    assert_response(:success)
    assert_template("index")
  end
end
