class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  
         
         validates :name, presence: { message: "veuillez entrer votre prénom" }, format: { without: /\s/, message: "ton prenom ne peut pas contenir d'espace" }
         validates :surname, presence: { message: "veuillez entrer votre nom de famille" }, format: { without: /\s/, message: "ton nom ne peut pas contenir d'espace" }
         validates :email, presence: { message: "veuillez entrer votre adresse email" }
         validates :email, uniqueness: { message: "cette adresse est déjà prise" }
         validates :password, presence: { message: "veuillez entre votre mot de passe" }

end
