class PictureAlbumsController < ApplicationController
  before_action :set_picture_album, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  # GET /picture_albums
  # GET /picture_albums.json
  def index
    @picture_albums = current_user.picture_album
  end

  # GET /picture_albums/1
  # GET /picture_albums/1.json
  def show
  end

  # GET /picture_albums/new
  def new
    @picture_album = PictureAlbum.new
  end

  # GET /picture_albums/1/edit
  def edit
  end

  # POST /picture_albums
  # POST /picture_albums.json
  def create
    @picture_album = PictureAlbum.new(picture_album_params)

    respond_to do |format|
      if @picture_album.save
        format.html { redirect_to @picture_album, notice: 'Picture album was successfully created.' }
        format.json { render :show, status: :created, location: @picture_album }
      else
        format.html { render :new }
        format.json { render json: @picture_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picture_albums/1
  # PATCH/PUT /picture_albums/1.json
  def update
    respond_to do |format|
      if @picture_album.update(picture_album_params)
        format.html { redirect_to @picture_album, notice: 'Picture album was successfully updated.' }
        format.json { render :show, status: :ok, location: @picture_album }
      else
        format.html { render :edit }
        format.json { render json: @picture_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picture_albums/1
  # DELETE /picture_albums/1.json
  def destroy
    @picture_album.destroy
    respond_to do |format|
      format.html { redirect_to picture_albums_url, notice: 'Picture album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_album
      @picture_album = PictureAlbum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picture_album_params
      params.require(:picture_album).permit(:title, :description, :user_id)
    end
end
