class BooksController < ApplicationController

    def index
        @book = current_author.books.all
    end

    def show
        @book = current_author.books.find(params[:id])
        # @book = @author.book.all(book_params)
    end

    def new
       @book = current_author.books.new
    end

    def update
        @book = current_author.books.find(params[:id])
        if @book.update(book_params)
            redirect_to(@book)
        else
            render "edit"
        end
    end

    def edit
        @book = current_author.books.find(params[:id])
        
    end

    def destroy
        @book = current_author.books.destroy
        respond_to do |f|
            f.html {redirect_to books_url, notice: "book is deleted"}
            f.json {head :no_content}
        end
    end

    def create
        @book = current_author.books.create(book_params)
        redirect_to books_path(@book)
    end

    private
        def book_params
            params.require(:book).permit(:title, :description, :publish)
        end
end
