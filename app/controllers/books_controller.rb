class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new #新規に作成したレコードなのでcreateアクションが動く
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id), notice: "Book was successfully created."
    else
      @books = Book.all
      render "index"
    end
  end

  def destroy
    book = Book.find(params[:id]) #データ（レコード）を１件取得
    book.destroy #データを削除
    redirect_to books_path #Book一覧画面へリダイレクト
  end

  def edit #既存のレコードを取得しているのでupdateアクションが動く
  	@book = Book.find(params[:id])
  end

  def update
  	@book = Book.find(params[:id])
  	if @book.update(book_params)
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book)
    else
      render "edit"
    end
  end

  private

  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
