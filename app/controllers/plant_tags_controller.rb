# frozen_string_literal: true

class PlantTagsController < ApplicationController
  def create
    @plant_tag = PlantTag.new
    @plant_tag.tag = Tag.find(params[:plant_tag][:tag])
    @plant_tag.plant = Plant.find(params[:plant_id])
    @plant = @plant_tag.plant
    if @plant_tag.save
      redirect_to garden_path(@plant.garden)
    else
      render 'plants/show'
    end
  end
end
