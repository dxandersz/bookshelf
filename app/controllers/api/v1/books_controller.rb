class Api::V1::BooksController < ApplicationController
    before_action :find_book, only: [:show, :update, :destroy]

    def index
        @books = Book.all
        render json: @books
    end

    def show
        render json: @book
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            render json: @book
        else
            render error: { error: 'Unable to create a book.' }, status: 400
        end
    end

    def update
        if @book
            @book.update(book_params)
            render json: { message: 'Book successfully updated.'}, status: 200
        else
            render json: { message: 'Unable to updated book.' }, status: 400
        end
    end

    def destroy
        if @book
            @book.destroy
            render json: { message: 'Book successfully deleted.' }, status: 200
        else
            render json: { message: 'Unable to delete book.' }, status: 400
        end
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :page_count, :genre)
    end

    def find_book
        @book = Book.find(params[:id])
    end

end
