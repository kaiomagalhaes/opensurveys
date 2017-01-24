# This migration comes from rapidfire (originally 20170120173401)
class CreateRapidfireSurveySettings < ActiveRecord::Migration
  def change
    create_table :rapidfire_survey_settings do |t|
      
      t.timestamps null: false
    end
  end
end
