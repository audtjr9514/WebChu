class MainController < ApplicationController
  before_action :is_signed_in, only: :mypage
  def index
  end

  def mypage
    @user = User.find(params[:user_id])
    @follower = UserConnection.where({ :user_er_id => params[:user_id] }).all
    @following = UserConnection.where({ :user_ing_id => params[:user_id] }).all
    
    platform = Hash.new
    starrate = Hash.new
    genre = Hash.new
    writer = Hash.new
    tag = Hash.new
    
    @user.watcheds.each do |watched|
      web = Webtoon.find(watched.web_id)
      plat = web.platform
      rate = watched.rate
      genr = web.genre
      writ = web.writer
      
      web.tags.each do |tagg|
        if tag.has_key? tagg.name
          tag[tagg.name] = tag[tagg.name] + 1
        else
          tag[tagg.name] = 1
        end
      end
      
      # 플랫폼 수집
      if platform.has_key? plat
        platform[plat] = platform[plat] + 1
      else
        platform[plat] = 1
      end
      
      # 별점 수집
      if starrate.has_key? rate
        starrate[rate] = starrate[rate] + 1
      else
        starrate[rate] = 1
      end
      
      # 장르 수집
      if genre.has_key? genr
        genre[genr] = genre[genr] + 1
      else
        genre[genr] = 1
      end
      
      # 작가 수집
      if writer.has_key? writ
        writer[writ] = writer[writ] + 1
      else
        writer[writ] = 1
      end
      
      
    end
    
    @my_platform = platform
    @my_starrate = starrate
    @my_genre = genre
    @my_writer = writer
    @my_tag = tag
  end
  
  def mypage_watched
    @user = User.find(params[:user_id])
    @follower = UserConnection.where({ :user_er_id => params[:user_id] }).all
    @following = UserConnection.where({ :user_ing_id => params[:user_id] }).all
  end
  
  def mypage_wish
    @user = User.find(params[:user_id])
    @follower = UserConnection.where({ :user_er_id => params[:user_id] }).all
    @following = UserConnection.where({ :user_ing_id => params[:user_id] }).all
  end
  
  def mypage_comment
    @user = User.find(params[:user_id])
    @follower = UserConnection.where({ :user_er_id => params[:user_id] }).all
    @following = UserConnection.where({ :user_ing_id => params[:user_id] }).all
  end

  def following
    @flwing_user = User.find(params[:user_id])
    @flwer_user = User.find(params[:fol_id])
    
    @flwing_user.users << @flwer_user
    
    redirect_to '/mypage/' + current_user.id.to_s
  end
  
  def unfollowing
    @flwing_user = User.find(params[:user_id])
    @flwer_user = User.find(params[:fol_id])
    
    UserConnection.find_by(user_er_id: params[:user_id].to_i, user_ing_id: params[:fol_id].to_i).destroy
    
    redirect_to '/mypage/' + current_user.id.to_s
  end
  
  def follower
  end
  
   private
    def is_signed_in
      unless user_signed_in?
        redirect_to '/users/sign_in', notice: '이 기능은 로그인해야 사용가능 합니다.'
      end
    end
    
end
