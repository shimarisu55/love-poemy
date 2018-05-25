class PoemsController < ApplicationController
  def index
	 #@poems = Poem.random.rand(1..30)
  	@q = Poem.ransack(params[:q])
    @poems = @q.result
  end

  def show
  	@poem = Poem.find(params[:id])
  	@poem_prev = @poem.id-1
  	@poem_next = @poem.id+1
  	
  end




end
