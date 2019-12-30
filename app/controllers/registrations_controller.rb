class RegistrationsController < ApplicationController
    before_action :authenticate_user!

    def new
        #super
        @user = User.new(:email => params[:email], :password => params[:password])
        @user.save
    end


end
