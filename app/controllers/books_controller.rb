class BooksController < ApplicationController
  def new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @books = Book.all
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
