class TipCalculatorController < ApplicationController

  def index
    @tc = TipCalculator.new
  end

  def calculate
    @tc = TipCalculator.new(tip_calculator_params)
    @tip = @tc.calc
    respond_to do |format|
      if @tc.valid?
        format.js { render partial: 'tip_calculator/result'}
      else
        format.js { render partial: 'tip_calculator/result'}
        format.json { render json: @tip.errors, status: :unprocessable_entity}
      end
    end
  end
  
  def tip_calculator_params
    params.require(:tip_calculator).permit(:cost, :tip_percent, :num_people)
  end

end
