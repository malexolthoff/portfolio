class PortfoliosController < ApplicationController
    def index
        @portfolio_items = Portfolio.all
    end
    def show
    
    end

    def new 
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Blog.new(params.require(:portfolio).permit(:title, :subtitle, :body))
    
        respond_to do |format|
          if @blog.save
            format.html { redirect_to portfolios_path, notice: 'Your portfolio item is live.' }
          else
            format.html { render :new }
          end
        end
      end
    def edit
        @portfolio_item = Portfolio.find_by
    end

    def update

    end
    
    def destroy

    end

end
