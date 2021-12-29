class TagController < ApplicationController
    def index
        @tags = Tag.all
    end

    def show
        @books = Book.find(params [:id])
        @tags = books.Bookstag.find(params [:id])
        @t = tag.name
    end
end
