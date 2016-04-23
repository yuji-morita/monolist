class RankingController < ApplicationController
  def have
     @have_ranks = Have.limit(10).group(:item_id).order('count_all desc').count
  end

  def want
     @want_ranks = Want.limit(10).group(:item_id).order('count_all desc').count
  end
end
