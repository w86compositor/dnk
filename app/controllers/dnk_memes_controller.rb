class DnkMemesController < ApplicationController
  before_action :set_dnk_meme, only: [:show, :edit, :update, :destroy]

  # GET /dnk_memes
  # GET /dnk_memes.json
  def index
    @dnk_memes = DnkMeme.all
  end

  # GET /dnk_memes/1
  # GET /dnk_memes/1.json
  def show
  end

  # GET /dnk_memes/new
  def new
    @dnk_meme = DnkMeme.new
  end

  # GET /dnk_memes/1/edit
  def edit
  end

  # POST /dnk_memes
  # POST /dnk_memes.json
  def create
    @dnk_meme = DnkMeme.new(dnk_meme_params)

    respond_to do |format|
      if @dnk_meme.save
        format.html { redirect_to @dnk_meme, notice: 'Dnk meme was successfully created.' }
        format.json { render :show, status: :created, location: @dnk_meme }
      else
        format.html { render :new }
        format.json { render json: @dnk_meme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dnk_memes/1
  # PATCH/PUT /dnk_memes/1.json
  def update
    respond_to do |format|
      if @dnk_meme.update(dnk_meme_params)
        format.html { redirect_to @dnk_meme, notice: 'Dnk meme was successfully updated.' }
        format.json { render :show, status: :ok, location: @dnk_meme }
      else
        format.html { render :edit }
        format.json { render json: @dnk_meme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dnk_memes/1
  # DELETE /dnk_memes/1.json
  def destroy
    @dnk_meme.destroy
    respond_to do |format|
      format.html { redirect_to dnk_memes_url, notice: 'Dnk meme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dnk_meme
      @dnk_meme = DnkMeme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dnk_meme_params
      params.require(:dnk_meme).permit(:description)
    end
end
