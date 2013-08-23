module TodoListsHelper
 # def current_todo_list= (todo_list)
  #  @current_todo_list = todo_list
  #end
 def current_todo_list
   Task.find(params[:id]).update_attributes(todo_list_id: params[:todo_list_id])
end
end
