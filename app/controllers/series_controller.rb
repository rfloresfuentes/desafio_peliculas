class SeriesController < ApplicationController
  def index
    @series = Series.all
  end
  
  def new
    @series = Series.new
  end

  def create
    @series = Series.new(serie_params)
    
    if @series.save
      redirect_to series_index_path
    else
      render :new
    end
  end




  private

  def serie_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
