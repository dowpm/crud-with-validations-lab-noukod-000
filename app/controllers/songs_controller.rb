class SongsController < ApplicationController
  before_action :set_song, only: [:show, :create, :edit, :update]
  def index
    @songs = Song.all
  end

  def show

  end

  def new
    @song = Song.new
  end

  def create

    redirect_to song_path(@song)
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def set_song
    @song = Song.find params[:id]
  end
end
