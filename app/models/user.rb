class User < ActiveRecord::Base
  has_many :projects
  has_and_belongs_to_many :roles

  def self.restricted
    where('id IN (?)', Role.where(name: 'restricted').first.users.map(&:id))
  end
end
