json.array!(@project_administrations) do |project_administration|
  json.extract! project_administration, :id, :project_id, :hours, :status
  json.url project_administration_url(project_administration, format: :json)
end
