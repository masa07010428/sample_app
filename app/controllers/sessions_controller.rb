class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      log_in(user)
      #userはuser_url(user)と同じ
      redirect_to user
    else
      # エラーメッセージを作成する
      flash.now[:danger] = "invalid email/password combination" 
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
