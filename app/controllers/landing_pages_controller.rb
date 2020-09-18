class LandingPagesController < ApplicationController
  before_action :set_landing_page, only: [:show, :edit, :update, :destroy]

  # GET /landing_pages
  # GET /landing_pages.json
  def index
    @landing_pages = LandingPage.all
  end

  # GET /landing_pages/1
  # GET /landing_pages/1.json
  def show
  end

  # GET /landing_pages/new
  def new
    @landing_page = LandingPage.new
  end

  # GET /landing_pages/1/edit
  def edit
  end

  #GET /landing_pages/delete
  def delete
  end

  # POST /landing_pages
  # POST /landing_pages.json
  def create
    @landing_page = LandingPage.new(landing_page_params)

    respond_to do |format|
      if @landing_page.save
        format.html { redirect_to landing_pages_path, notice: 'Book was successfully added.' }
        format.json { render :show, status: :created, location: @landing_page }
      else
        format.html { render :new }
        format.json { render json: @landing_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landing_pages/1
  # PATCH/PUT /landing_pages/1.json
  def update
    respond_to do |format|
      if @landing_page.update(landing_page_params)
        format.html { redirect_to @landing_page, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @landing_page }
      else
        format.html { render :edit }
        format.json { render json: @landing_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landing_pages/1
  # DELETE /landing_pages/1.json
  def destroy
    @landing_page.destroy
    respond_to do |format|
      format.html { redirect_to landing_pages_url, notice: 'Book was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landing_page
      @landing_page = LandingPage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def landing_page_params
      params.require(:landing_page).permit(:title, :author, :genre, :price, :publishedDate)
    end
end
