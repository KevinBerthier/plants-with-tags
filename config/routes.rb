# frozen_string_literal: true

Rails.application.routes.draw do
  get 'tags/show'
  resources :gardens do
    resources :plants, only: :create
  end
  resources :plants, only: %i[show destroy] do
    resources :plant_tags, only: :create
  end
  resources :tags, only: :show
end
