class V1::BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books, status: :ok
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      head(:ok)
    else
      head(:sorry)
    end
  end

  def destroy

  end

  private
    def book_params
      params.require(:book).permit(:title,:isbn,:price,:condition,:location,:category,:is_sold)
    end
end
