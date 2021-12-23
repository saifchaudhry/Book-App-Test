class AuthorsController < ApplicationController
    def index
        @author = Author.all
    end

    def show
        @author = Author.find(params[author_params])
    end

    def new
        @author = Author.new
    end

    def create
        @author = Author.new(author_params)

        if @author.save
            redirect_to @author
        else 
            render :new, :unproccessable_entity
        end
    end

    def edit
        @author = Author.find(params[:id])
    end

    def update
        @author = Author.find(params[:id])

        if @author.update(author_params)
            redirect_to @author
        else
            render :edit, :unproccessable_entity
        end

    end

    def destroy
        @author = Author.find(params[:id])
        @author.destroy
        redirect_to root_path
    end

    private
        def author_params
            params.require(:author).permit(:firstname, :lastname, :email,:password, :confirm_password) 
        end

end
