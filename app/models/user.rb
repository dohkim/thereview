class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #유저가 탈퇴할 경우 리뷰에 평가를 지울것인가 말것인가.
  has_many :evaluate#, dependent: :destroy

end
