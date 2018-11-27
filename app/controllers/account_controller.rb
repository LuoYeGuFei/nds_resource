class AccountController < Devise::RegistrationsController

  def new
    super
  end

  def create
    build_resource(sign_up_params)
    resource.username = params[resource_name][:username]
    resource.email = params[resource_name][:email]
    if verify_rucaptcha?(resource) && resource.save
      sign_in(resource_name, resource)
    end
  end
end
