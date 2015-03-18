class UsersController < ApplicationController
  
  def new
    Struct.new('Option',:name, :value)
    @options = []
    @options << Struct::Option.new('personal',1)
    @options << Struct::Option.new('business',2)
  end
  
  def create
    new_account_path = TaxableEntity.create_account_object(self, params[:user_type])
    redirect_to new_acoount_path.call
  end
  
private
  
  def user_attributes
    params.permit(:user_type)
  end
  
end