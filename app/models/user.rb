class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :profile_picture, :field_of_study, :degree_program, :participant_role, :university, :participant_month, :participant_year, :linkedin, :portfolio, :participant_team, :company, :twitter

  validates_presence_of :email
  validates_presence_of :name

end
