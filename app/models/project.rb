class Project < ActiveRecord::Base
  has_one :project_administration
  belongs_to :user

  def self.restricted
    where('user_id IN (?)', User.restricted.map(&:id))
  end
end
