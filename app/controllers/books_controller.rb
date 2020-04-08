class BooksController < ApplicationController

  def top
  end

  def index
  	@book = Book.all
  end

  def show
  	@book = Book.all
  end

  def new
  end

  def create
  	book = Book.new(book_params)
  	book.save
  	redirect_to show_path(book.id)
  end

  def destroy
  	book = Book.find(params[:id])
  	book.destroy
  	redirect_to books_path
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	book = Book.find(params[:id])
  	book.update(book_params)
  	redirect_to book_path(book)
  end

  private

  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
