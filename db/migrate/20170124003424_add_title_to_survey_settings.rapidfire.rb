# This migration comes from rapidfire (originally 20170123213616)
class AddTitleToSurveySettings < ActiveRecord::Migration[5.0]
  def change
    add_column :rapidfire_survey_settings, :title, :string, :default => "Survey"
  end
end
