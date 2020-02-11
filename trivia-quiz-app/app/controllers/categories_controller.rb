class CategoriesController < AuthenticateAdminController
  before_action :authenticate_admin!

  def index
    @categories=Category.all
  end

  def new
    @category=Category.new
  end

  def create
    @category =Category.create(params.require(:category).permit(:name))
    if @category.valid?
      redirect_to categories_path
    else
      flash[:errors]=@category.errors.full_messages
      redirect_to new_category_path  
    end
  end 

  def show
  end

  def edit
    @category =Category.find(params[:id])
   
  end

  def update
    @category =Category.find(params[:id])
    @category.update(params.require(:category).permit(:name))
    redirect_to categories_path(@category)
  end

  def destroy
    @category =Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end
end
