class BookController < ApplicationController
   def index
      @books = Book.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @book }
    end
   end

   def show
      @book = Book.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book }
   end
   end

   def new
      @book = Book.new
      @subject = Subject.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @book }

   end
   end

   def create
      @book = Book.new(params[:book])
    respond_to do |format|
      if @book.save
        format.html { redirect_to(@book, :notice => 'Book was successfully created.') }
        format.xml  { render :xml => @book, :status => :created, :location => @book }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
   end

   def edit
      @book = Book.find(params[:id])
      @subject = Subject.find(:all)
   end

   def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to(@book, :notice => 'Book was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
      end
   end

   def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to(book_url) }
      format.xml  { head :ok }
    end
   end

   def show_subjects
      @subject = Subject.find(params[:id])
   end

end
