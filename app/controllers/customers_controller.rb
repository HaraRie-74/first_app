class CustomersController < ApplicationController
  def new
    @customer=Customer.new
    @customers=Customer.all
  end

  def create
    @Customer=Customer.new(customer_params)
    @Customer.save
    redirect_to new_customer_path
  end

  def show
    @customer=Customer.find(params[:id])
  end

  private

  def customer_params
    params.require(:customer).permit(:title,:body,profiles:[])
  end
end
