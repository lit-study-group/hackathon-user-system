class PublicPagesController < ApplicationController
  def home
    @user = User.new
  end

end
