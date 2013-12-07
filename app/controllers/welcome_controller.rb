class WelcomeController < ApplicationController
    skip_before_filter :get_categories
    layout 'welcome'
    
  def index
  end
end
