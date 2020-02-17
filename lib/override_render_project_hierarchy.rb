ProjectsHelper.class_eval do

  # Renders the projects index
  def render_project_hierarchy(projects)
    render_project_nested_lists(projects) do |project|
      s = link_to_project(project, {}, :class => "#{project.css_classes} #{User.current.member_of?(project) ? 'icon icon-user my-project' : nil}")
      if project.description.present?
        s << content_tag('div', textilizable(project.short_description, :project => project), :class => 'wiki description')
      end
      projects_authors = ProjectsAuthors.find_by(    project_id: project.identifier)
      unless projects_authors.nil?
        s << content_tag('div', User.find_by(id: projects_authors.author_id).lastname)
      end
      s
    end
  end
end
