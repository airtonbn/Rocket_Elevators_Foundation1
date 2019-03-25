Rails.application.routes.draw do

  root 'pages#index'
  get 'index' => 'pages#index'
  get 'residential' => 'pages#residential'
  get 'corporate' => 'pages#corporate'
  get 'quote' => 'quotes#new'
  get 'thanks' => 'pages#thanks'
  get 'thanksleads' => 'pages#thanksleads'
  get 'career' => 'careers#new'
  get 'subscription' => 'subscriptions#new'
  get 'thanksquote' => 'pages#thanksquote'
  get 'thankssubs' => 'pages#thankssubs'

  resources :quotes
  resources :careers
  resources :subscriptions
  resources :leads
end
