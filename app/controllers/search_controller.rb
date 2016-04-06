class SearchController < ApplicationController
  before_action :require_login
  def index
    @result = nil
    subjects = Subject.all
    @showSub = {}
    subjects.each do |s|
      @showSub[s.s_name] = s.s_id
    end
  end

  def search_result
    if params[:coursename] != "" && params[:coursename] != nil
      if params[:subjectid] != ""
        #@result = Csrelation.where(c_name: params[:coursename], s_id: params[:subjectid])
        @result = Csrelation.where("c_name LIKE :prefix AND s_id = :subject", prefix: "#{params[:coursename]}%", subject: params[:subjectid])
      else
        #@result = Csrelation.where(c_name: params[:coursename])
        @result = Csrelation.where("c_name LIKE :prefix", prefix: "#{params[:coursename]}%")
      end
    elsif params[:subjectid] != "" && params[:subjectid] != nil
      @result = Csrelation.where(s_id: params[:subjectid])
    end
    respond_to do |format|
      format.js {}
    end
  end

end
