class HomeController < ApplicationController
  #prepend_before_action :require_no_authentication, only: [:cancel]
  #skip_before_action :require_no_authentication, only: [:welcome]
  #skip_before_action :authenticate_user!
  def index
  end
end
