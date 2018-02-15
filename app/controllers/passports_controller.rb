class PassportsController < ApplicationController

    def new
        @passport = Passport.find(params(:order_id))
        
    end
    def show
    end
    
    def create
        @order = Order.find(params[:order_id])
        @passport = @order.passports.build(passport_params)
        respond_to do |format|
        if @passport.save
        format.html { redirect_to @order, notice: 'Visitor was successfully created.' }
        format.json { render :show, status: :created, location: @passport }
        else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
        end
    end
end
    
    def destroy
        @passport = Order.find(params[:order_id])
        @passport.destroy
        respond_to do |f|
        f.html { redirect_to @order, notice: 'Visitor was successfully removed.' }
        f.json { head :no_content }
        f.js   { render :layout => false}
    
    end
    end
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def passport_params
      params.require(:passport).permit(:number, :finish_date, :start_date, :birtday, :gender, :nationallity)
    end
end
