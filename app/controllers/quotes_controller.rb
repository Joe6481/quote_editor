class QuotesController < ApplicationController
  before_action :find_quote, only: %i[edit update show destroy]

  def index
    @quotes = Quote.all
  end

  def show; end

  def new
    @quote = Quote.new
  end

  def edit; end

  def create
    quote = Quote.new(quote_params)

    if quote.save
      redirect_to quotes_path, notice: t(".success")
    else
      render :new, alert: t(".failure")
    end
  end

  def update
    if @quote.update(quote_params)
      redirect_to quotes_path, notice: t(".success")
    else
      render :edit, alert: t(".failure")
    end
  end

  def destroy
    if @quote.destroy
      redirect_to quotes_path, notice: t(".success")
    else
      render :index, alert: t(".failure")
    end
  end

  private

  def quote_params
    params.require(:quote).permit(:name)
  end

  def find_quote
    @quote = Quote.find(params[:id])
  end
end
