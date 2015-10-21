class WorkersController < ApplicationController

  def home

  end

    def new
	@worker = Worker.new 

	end
	

	 def index
	  @workers= Worker.all
	  @testw = Worker.search(params[:search])
	  end

	def show
		@worker = Worker.find(params[:id])
	end

	def create
		@worker = Worker.new(worker_params)
		@worker.save
		render('new')
	end

   def update
   end

     def destroy
     	@worker = Worker.find(params[:id])
     	@worker.destroy
     	render('new')
     end



   def worker_params
 	params.require(:worker).permit(:name, :lastname, :occupation, :phone, :references, :descript)
   end
   
  #test github

end
