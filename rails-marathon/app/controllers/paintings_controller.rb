class PaintingsController < ApplicationController
  def new
    @painting = Painting.new
    @gallery = Gallery.find(params[:gallery_id])
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @painting = Painting.new(painting_params)
    @painting.gallery = @gallery

    if @painting.save
      flash[:notice] = "Painting added successfully!"
      redirect_to gallery_path(@gallery)
    else
      errors = ""
      @painting.errors.full_messages.each do |msg|
        errors += "#{msg}. "
      end
      flash[:notice] = errors
      render :new
    end
  end

  private

  def painting_params
    params.require(:painting).permit(:artist, :title, :gallery)
  end
end
