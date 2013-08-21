class MainController < ApplicationController
  def home
    if signed_in?
      @todo_list = current_user.todo_lists.build
    else
      redirect_to user_path
    end
  end
end
