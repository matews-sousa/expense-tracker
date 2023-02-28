class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @categories = current_user.categories
    @transactions = current_user.transactions.includes(:category)

    @total_per_category = @transactions.includes(:category).group(:name).sum(:amount)

    puts @transactions.group(:category_type).group_by_month(:date).sum(:amount)
  end
end
