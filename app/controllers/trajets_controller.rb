class TrajetsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @trajets = Trajet.all
  end

  def new
    @trajet = current_user.trajets.build
  end

  def search
    @trajets = Trajet.search(params[:query])
    render :index
  end

  def create
    @trajet = current_user.trajets.build(trajet_params)
    if @trajet.save
      redirect_to root_path, notice: 'Trajet créé avec succès!'
    else
      render :new
    end
  end

  private

  def trajet_params
    params.require(:trajet).permit(:depart, :destination, :heure_depart, :places_disponibles, :type_voiture)
  end
end
