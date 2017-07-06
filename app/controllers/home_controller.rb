class HomeController < ApplicationController
  def action_list
  	actions = ActionStore.all
  	render :json => { :data=> actions }
  end

  def create_action
  	data = params.permit!
  	ActionStore.create({json_data: data[:home].to_json})
  	render :json => { :message=> "success" }
  end
end
