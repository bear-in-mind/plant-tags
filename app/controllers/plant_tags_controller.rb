class PlantTagsController < ApplicationController
  before_action :set_plant, only: [:new, :create]

  def new
    @plant_tag = PlantTag.new
  end

  def create
    # @plant_tag = PlantTag.new(plant_tags_params)
    @tags = plant_tags_params[:tag]
    @tags.each do |tag_id|
      @plant_tag = PlantTag.new(tag_id: tag_id, plant: @plant)
      @plant_tag.save
    end
    redirect_to @plant.garden
  end

  private

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end

  def plant_tags_params
    params.require(:plant_tag).permit(tag: [])
  end

end
