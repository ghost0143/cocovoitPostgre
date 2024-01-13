class TrajetsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def reserver
    trajet = Trajet.find(params[:id])
  
    # Vérifier si l'utilisateur a déjà réservé ce trajet
    if current_user.reservations.exists?(trajet: trajet)
      redirect_to trajets_path, alert: 'Vous avez déjà réservé ce trajet.'
      return
    end
  
    # Vérifier si des places sont disponibles
    if trajet.places_disponibles <= 0
      redirect_to trajets_path, alert: 'Désolé, ce trajet est complet.'
      return
    end
  
    # Créer une nouvelle réservation
    reservation = current_user.reservations.build(trajet: trajet)
  
    if reservation.save
      # Mettre à jour le nombre de places disponibles
      trajet.decrement!(:places_disponibles)
      redirect_to trajets_path, notice: 'Réservation effectuée avec succès!'
    else
      redirect_to trajets_path, alert: 'Échec de la réservation.'
    end
  end
  

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

  def trajets_reserves
    @trajets_reserves = current_user.reservations.map(&:trajet)
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
