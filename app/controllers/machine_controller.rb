class MachineController < ApplicationController
   def list 
      @books = Book.find(:all)
   end
   def show
      @book = Book.find(params[:id])
   end
   def new
      @book = Book.new
      @subjects = Subject.find(:all)
   end
   def create
      @book = Book.new(params[:book])
      if @book.save
            redirect_to :action => 'list'
      else
            @subjects = Subject.find(:all)
            render :action => 'new'
      end
   end
   def edit
      @book = Book.find(params[:id])
      @subjects = Subject.find(:all)
   end
   def update
      @book = Book.find(params[:id])
      if @book.update_attributes(params[:book])
         redirect_to :action => 'show', :id => @book
      else
         @subjects = Subject.find(:all)
         render :action => 'edit'
      end
   end
   def delete
      Book.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
   def show_subjects
      @subject = Subject.find(params[:id])
   end
end
