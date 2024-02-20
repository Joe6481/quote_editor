class QuotesController < ApplicationController
  before_action :find_quote, only: %i[edit update show destroy]

  def index
    @quotes = Quote.ordered
  end

  def show; end

  def new
    @quote = Quote.new
  end

  def edit; end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      respond_to do |format|
        format.html { redirect_to quotes_path, notice: t(".success") }
        format.turbo_stream { flash.now[:notice] = t(".success") }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @quote.update(quote_params)
      respond_to do |format|
        format.html { redirect_to quotes_path, notice: t(".success") }
        format.turbo_stream { flash.now[:notice] = t(".success") }
      end
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @quote.destroy
      respond_to do |format|
        format.html { redirect_to quotes_path, notice: t(".success") }
        format.turbo_stream { flash.now[:notice] = t(".success") }
      end
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
