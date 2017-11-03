class PagesController < ApplicationController
  def dashboard
  end
  def settings
    @stripe_user_id = current_user.stripe_user_id
  end
end
