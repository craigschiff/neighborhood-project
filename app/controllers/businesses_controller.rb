class BusinessesController < ApplicationController
  def index
    @search = params[:search]
    if @search
      @businesses = Business.where("lower(name) LIKE ?", "%#{@search.downcase}%")
    else
    @businesses = Business.all
    end
  end

  def new
    @business = Business.find_by(business_account_id: session[:business_account_id])
    if @business
      redirect_to edit_businesses_path(@business)
    else
      @business = Business.new
    end
  end

  def create
    #binding.pry
    @business = Business.find_by(business_account_id: session[:business_account_id])
    if !@business
      @business = Business.new(business_params)
      @business.business_account_id = session[:business_account_id]
      if !@business.save
        render new_businesses_path and return
      end
    end
    #binding.pry
    redirect_to businesses_path
  end



  def edit
    @business = current_business
  end

  def update
    @business = current_business
    if !@business.update(business_params)
      render 'businesses/edit'
    else
      redirect_to @business
    end
  end

  def show
    @business = Business.find_by(id: params[:id])
  end


  private

  def business_params
    params.require(:business).permit(:name, :about, :phone, :neighborhood)
  end

end
