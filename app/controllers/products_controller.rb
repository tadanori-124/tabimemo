class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy] #該当メソッドが呼ばれた時はset_productメソッドを先に実行（同じ記述を共通化）
  def index
    @products = Product.all #Productテーブルから全てのデータを取得し、インスタンス変数@productsに格納
  end
  
  def new
    @product = Product.new #Productモデルのインスタンスをnewメソッドで作成、インスタンス変数@productに格納
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render 'new', status: :unprocessable_entity
    end
  end
  
  def edit
  end
  
  def update
    if @product.update(product_params)
      redirect_to root_path
    else
      render 'edit', status: :unprocessable_entity
    end
  end
  
  def destroy
    @product.destroy
    redirect_to root_path, status: :see_other
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  private
  def product_params
    params.require(:product).permit(:title, :new_image, :hotel_name, :contents)
  end
  
  def set_product
    @product = Product.find(params[:id])
  end
end