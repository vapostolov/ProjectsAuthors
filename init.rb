Redmine::Plugin.register :project_author do
  name 'Project Author plugin'
  author 'Valentin Apostolov'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  require_dependency 'override_render_project_hierarchy'
  permission :projects_authors, { :projects_authors => [:index, :save] }, :public => true
  menu :project_menu, :projects_authors, { :controller => 'projects_authors', :action => 'index' }, :caption => 'Author', :after => :activity, :param => :project_id
end
