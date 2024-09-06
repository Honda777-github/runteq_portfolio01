class ShopsController < ApplicationController
  before_action :set_shop, only: %i[ show edit update destroy ]
  # before_action :set_q, only: %i[ index search ]
  before_action :set_q, only: [:index, :search]
  # before_action :search_shops, only: [:search, :result]

  # GET /shops or /shops.json
  def index
    # @shops = Shop.all
    @q = Shop.ransack(params[:q])
    # @shops = @q.result(distinct: true).includes(:shop).order(created_at: :desc)
    @shops = @q.result(distinct: true)
  end

  # GET /shops/1 or /shops/1.json
  def show
    @shop = Shop.find(params[:id])
    @comment = Comment.new
    @comments = @shop.comments.includes(:user).order(created_at: :desc)
  end

  # GET /shops/new
  def new
    @shop = Shop.new
  end

  # GET /shops/1/edit
  def edit
  end

  # POST /shops or /shops.json
  def create
    @shop = Shop.new(shop_params)

    respond_to do |format|
      if @shop.save
        format.html { redirect_to shop_url(@shop), notice: "Shop was successfully created." }
        format.json { render :show, status: :created, location: @shop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shops/1 or /shops/1.json
  def update
    respond_to do |format|
      if @shop.update(shop_params)
        format.html { redirect_to shop_url(@shop), notice: "Shop was successfully updated." }
        format.json { render :show, status: :ok, location: @shop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shops/1 or /shops/1.json
  def destroy
    @shop.destroy!

    respond_to do |format|
      format.html { redirect_to shops_url, notice: "Shop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # def search
  #   @results = @q.result
  # end

  def search
    @results = @q.result
  end

  private

  def set_q
    @q = Shop.ransack(params[:q])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_shop
    @shop = Shop.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def shop_params
    params.require(:shop).permit(:name, :address, :description, :rating, :hot_rank, :img, :category, :update_at)
  end
end
