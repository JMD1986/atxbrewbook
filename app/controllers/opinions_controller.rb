class OpinionsController < ApplicationController
    def create
    @opinion = Opinion.new(opinion_params)

    respond_to do |format|
      if @opinion.save
        format.html { redirect_to :back, notice: 'opinion was successfully created.' }
        format.json { render :show, status: :created, location: @opinion }
      else
        format.html { render :new }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def opinion_params
      params.require(:opinion).permit(:review, :rating, :like, :user_id, :brewery_id, :beer_id )
  end

end
