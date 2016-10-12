class CategoriesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end
  def create
    # user = @current_user
    category = Category.new(category_params)
    category.user = user

    respond_to do |format|
      if category.save

        # format.html { redirect_to @recipe.user, notice: 'recipe was successfully created.' }
        format.html { redirect_to user_path(User.find_by_id(session[:user_id])), notice: 'category was successfully created.' }
        #format.json { render :show, status: :created, location: @recipe.user }
      else
        format.html { render :new }
        format.json { render json: category.errors, status: :unprocessable_entity }
      end
    end
  end


end
