class UsersController < ApplicationController
  
  def search
    user_serch = UserSearch.new(params_user_search)
    @users = user_serch.execute
  end

  private

  def params_user_search
    params.permit(:search_name, :search_age)
  end
end
