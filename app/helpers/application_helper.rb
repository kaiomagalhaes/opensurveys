# frozen_string_literal: true
module ApplicationHelper
  def set_title(survey_title = '')
    default_title = "Open Surveys"
    if survey_title.empty?
      default_title
    else
      survey_title
    end
  end
end
