class User < ActiveRecord::Base
	has_many :user_projects
	has_many :projects, through: :user_projects
	has_many :tasks
	validates_presence_of :full_name, message:"El nombre es requerido"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
