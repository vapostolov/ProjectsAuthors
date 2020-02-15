class ProjectAuthorHookListener < Redmine::Hook::ViewListener
  def view_projects_form(context = {})
    # puts context[:project].inspect
    # return content_tag("p", content_tag("label", "Custom content added to the left"))
  end
end
