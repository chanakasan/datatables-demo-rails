class PagesController < ApplicationController
  def show
    slug = params[:slug]
    render slug
  rescue ActionView::MissingTemplate
    render '404'
  end
end
