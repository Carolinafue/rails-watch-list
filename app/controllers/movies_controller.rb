class MoviesController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.list = @list
    @list.save
    redirect_to list_path(@list)
  end
end
