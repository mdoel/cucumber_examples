class JokeStats
  attr_reader :likes, :dislikes

  def initialize(params)
    @params = params
    @likes = @params[:likes].to_i || 0
    @dislikes = @params[:dislikes].to_i || 0
    assess_new_likes
    assess_new_dislikes
  end

  private

  def assess_new_likes
    new_like = @params[:like] == 'yes' ? 1 : 0
    @likes += new_like
  end

  def assess_new_dislikes
    new_dislike = @params[:like] == 'no' ? 1 : 0
    @dislikes += new_dislike
  end
end
