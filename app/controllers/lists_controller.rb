class ListsController < ApplicationController
  
  
  def create
    list = List.new(list_params)
    list.save
    flash[:notice] = "Book was successfully"
    redirect_to list_path(list.id) 
  end  

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id]) 
  end

  def edit
    @list = List.find(params[:id])
  end
  
   def update
    list = List.find(params[:id])
    list.update(list_params)
    flash[:notice] = "Book was successfully"
    redirect_to list_path(list.id)  
  end
  
  def destroy
    list = List.find(params[:id]) 
    list.destroy 
    flash[:notice] = "Book was successfully"
    redirect_to '/books'  
  end
  
  private
  
  def list_params
     params.require(:list).permit(:title, :body)
  end
end
