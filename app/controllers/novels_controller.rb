class NovelsController < ApplicationController
  def index
    @novels = Novel.all
  end
  
  def new
    @novel = Novel.new
  end

  def create
    @novel = Novel.new(novel_params)
    
    if @novel.save
      redirect_to novels_index_path
    else
      render :new
    end
  end




  private

  def novel_params
    params.require(:novel).permit(:name, :synopsis, :director, :url_img)
  end
end
