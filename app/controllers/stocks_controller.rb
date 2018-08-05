class StocksController < ApplicationController
	def search
		if params[:stock].blank?
			flash.now[:danger] = 'Search term cannot be empty'
		else
			@stock = Stock.new_from_lookup(params[:stock])
			flash.now[:danger] = 'Search term invalid' unless @stock
		end
		render partial: 'users/result'
	end

end
