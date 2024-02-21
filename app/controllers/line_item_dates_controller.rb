class LineItemDatesController < ApplicationController
  before_action :find_quote
  before_action :find_line_item_date, only: %i[edit update destroy]

  def new
    @line_item_date = LineItemDate.new(date: Time.zone.today)
  end

  def edit; end

  def create
    @line_item_date = @quote.line_item_dates.build(line_item_date_params)

    if @line_item_date.save
      redirect_to quote_path(@quote), notice: t(".success")
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @line_item_date.update(line_item_date_params)
      redirect_to quote_path(@quote), notice: t(".success")
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @line_item_date.destroy
      redirect_to quote_path(@quote), notice: t(".success")
    else
      render controller: "quotes", action: "show", alert: t(".failure")
    end
  end

  private

  def find_quote
    @quote = Quote.find(params[:quote_id])
  end

  def find_line_item_date
    @line_item_date = LineItemDate.find(params[:id])
  end

  def line_item_date_params
    Rails.logger.debug { "\n\n\n\n#{params}\n\n\n\n\n" }
    params.require(:line_item_date).permit(:quote_id, :date)
  end
end
