# frozen_string_literal: true
class ApplicationController < ActionController::Base
  def can_administer?
    # current_user.try(:admin?)
    true
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
