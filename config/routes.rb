# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'authors', :to => 'projects_authors#index'
post 'save', :to => 'projects_authors#save'
