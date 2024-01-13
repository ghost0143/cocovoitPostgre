class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  # Champs obligatoires
  def create
    @user = User.new(user_params)
    if @user.save
      # ...
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :gender, :role)
  end

  # Initialisation des champs
  def initialize(params)
    super
    self.first_name = params[:first_name] if params[:first_name]
    self.last_name = params[:last_name] if params[:last_name]
    self.gender = params[:gender] if params[:gender]
    self.role = params[:role] if params[:role]
  end

  has_many :trajets, foreign_key: 'conducteur_id', dependent: :destroy

  
end



