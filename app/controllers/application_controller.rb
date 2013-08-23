class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  def current_todo_list
    Task.find(params[:id]).update_attributes(todo_list_id: params[:todo_list_id])
  end
end
