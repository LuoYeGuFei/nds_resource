class SessionsController < Devise::SessionsController

  def new
    super
  end

  def create
    resource = warden.authenticate!(scope: resource_name, recall: "#{controller_path}#new")
    sign_in(resource_name, resource)
    redirect_to root_path
  end
end
