class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  @@crypt = ActiveSupport::MessageEncryptor.new(Rails.application.secrets.secret_key_base)

  def encrypt(message)
    @@crypt.encrypt_and_sign message
  end

  def decrypt(message)
    @@crypt.decrypt_and_verify message
  end
end
