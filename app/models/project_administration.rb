class ProjectAdministration < ActiveRecord::Base
  belongs_to :project

  def self.restricted
    where('project_id IN (?)', Project.restricted.map(&:id))
  end

end
