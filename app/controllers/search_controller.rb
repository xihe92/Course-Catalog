class SearchController < ApplicationController
  before_action :require_login
  def index
    @result = nil
    subjects = Subject.all
    @showSub = {}
    subjects.each do |s|
      @showSub[s.s_name] = s.s_id
    end
    if params[:coursename] != "" && params[:coursename] != nil
      if params[:subjectid] != ""
        @result = Csrelation.where(c_name: params[:coursename], s_id: params[:subjectid])
        return
      else
        @result = Csrelation.where(c_name: params[:coursename])
        return
      end
    end
    if params[:subjectid] != "" && params[:subjectid] != nil
      @result = Csrelation.where(s_id: params[:subjectid])
      return
    end
  end
end
