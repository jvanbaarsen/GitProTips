class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def show
    @tip = Tip.find(params[:id])
  end

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.new(tip_params)
    if @tip.save
      flash[:success] = 'Your tip has been submitted'
      redirect_to tip_path(@tip)
    else
      render :new
    end
  end

  private
  def tip_params
    params.require(:tip).permit(:title, :content)
  end
end
