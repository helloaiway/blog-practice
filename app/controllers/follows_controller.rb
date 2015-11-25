class FollowsController < ApplicationController

  def follow
  	mircopost = Mircopost.find_by(:id => params[:m_id])
  	follow = Follow.new(user: current_user, mircopost: mircopost)
  	mircopost.followers += 1
  	# respond_to do |format|
  		# if follow.save
  			# mircopost.save
  			#debugger
  			# format.json { status: 'success', location: mircopost }.to_
  		# else
  			# format.json { render :follow, status: :error, location: mircopost }
  		# end
  	# end
  	if follow.save
  		mircopost.save
  		render json: {status: 'success', content: mircopost.followers}
  	else
  		render json: {status: 'error'}
  	end
  	
  end

  def unfollow
  end
end
