class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_member, :is_logged_in?, :current_business, :business_logged_in?, :prompt_rating
  before_action :redirect_if_not_logged_in
  before_action :redirect_to_create_profile
  before_action :prompt_rating


    def current_member
      if is_logged_in?
        Account.find_by_id(session[:account_id]).member
      end
    end

     def is_logged_in?
       !!session[:account_id]
     end

     def current_business
       if business_logged_in?
          current_business ||= BusinessAccount.find_by_id(session[:business_account_id]).business
       end
     end

     def business_logged_in?
       !!session[:business_account_id]
     end

     def prompt_rating
       active_record = nil
       current_member.ratings.each do |rating|
         if !rating.complete
           active_rating = rating
         end
       end
       if active_rating
         redirect_to new_rating_path(current_member, active_rating)
       end
     end
     def redirect_if_not_logged_in
       if !business_logged_in? && !is_logged_in?
         redirect_to root
       end
     end

     def redirect_to_create_profile
       if business_logged_in? && !current_business
         redirect_to new_business_path
       elsif is_logged_in? && !current_member
         redirect_to new_member_path
       end
     end

end
