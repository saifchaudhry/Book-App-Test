class RegistrationsController < Devise::RegistrationsController
    
    private 

    def sign_up_params
        params.require(:authors).permit(:firstname, :lastname, :email, :password, :password_confrmation)
    end

    def account_update_params
        params.require(:authors).permit(:fristname, :lastname, :email, :password, :password_confirmation, :current_password)
    end
    
end