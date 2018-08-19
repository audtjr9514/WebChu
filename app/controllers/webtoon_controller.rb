class WebtoonController < ApplicationController
  # before_action :is_signed_in, except: :input
  
  # 취향저격
  def recommend
    @webtoons = Webtoon.all
    @user = current_user
  end

  # 웹툰찾기
  def finder
    @user = current_user
    # ["판타지", "액션"]
    # @genre = params[:genre]
    if (params[:genre] == nil) && (params[:tag] == nil) && (params[:platform] == nil)   # 체크 X
      @webtoons = Webtoon.all
      
    elsif(params[:genre] != nil) && (params[:tag] == nil) && (params[:platform] == nil) # 장르만 체크
      @webtoons = Webtoon.where({ genre: params[:genre]})
      
    elsif(params[:genre] == nil) && (params[:tag] != nil) && (params[:platform] == nil) # 태그만 체크
      arr = Array.new
      params[:tag].each do |tag|
        t = Tag.find_by name: tag
        arr << t.webtoons.all
      end # 태그마다의 웹툰이 들어갈 배열 _ 배열의 각 인덱스마다 태그에 해당하는 웹툰들이 들어감
      
      if arr.length == 1
        @webtoons = arr[0]
      else
        arr.each_with_index do |w,i|
          arr[0] = arr[0] & arr[i]
        end
        @webtoons = arr[0]
      end
    elsif(params[:genre] == nil) && (params[:tag] == nil) && (params[:platform] != nil) # 플랫폼만 체크
      @webtoons = Webtoon.where({ platform: params[:platform]})
    
    elsif(params[:genre] != nil) && (params[:tag] != nil) && (params[:platform] == nil) # 장르 & 태그 체크
      arr = Array.new
      params[:tag].each do |tag|
        t = Tag.find_by name: tag
        arr << t.webtoons.all
      end # 태그마다의 웹툰이 들어갈 배열 _ 배열의 각 인덱스마다 태그에 해당하는 웹툰들이 들어감
      
      if arr.length == 1
        @webtoons = arr[0].where({ genre: params[:genre] })
      else
        arr.each_with_index do |w,i|
          arr[0] = arr[0] & arr[i]
        end
        @webtoons = arr[0].where({ genre: params[:genre] })
      end
    
    elsif(params[:genre] != nil) && (params[:tag] == nil) && (params[:platform] != nil) # 장르 & 플랫폼 체크
      @webtoons = Webtoon.where({ genre: params[:genre], platform: params[:platform] })
   
     # 태그 & 플랫폼 체크
      arr = Array.new
      params[:tag].each do |tag|
        t = Tag.find_by name: tag
        arr << t.webtoons.all
      end 
      
      if arr.length == 1
        @webtoons = arr[0].where({ platform: params[:platform] })
      else
        arr.each_with_index do |w,i|
          arr[0] = arr[0] & arr[i]
        end
        @webtoons = arr[0].where({ platform: params[:platform] })
      end
  
    elsif(params[:genre] != nil) && (params[:tag] != nil) && (params[:platform] != nil)  # 모두 다 체크
      arr = Array.new
      params[:tag].each do |tag|
        t = Tag.find_by name: tag
        arr << t.webtoons.all
      end
      
      if arr.length == 1
        @webtoons = arr[0].where({ genre: params[:genre], platform: params[:platform]})
      else
        arr.each_with_index do |w,i|
          arr[0] = arr[0] & arr[i]
        end
        @webtoons = arr[0].where({ genre: params[:genre], platform: params[:platform]})
      end
    end
  end

  # 명작추천
  # 현재 로그인되어 있는 유저가 본 별표가 4.0이상의 웹툰의 장르에 맞는 명작을 추천
  def suggest
    @user = cuurent_user
    @watched = Watched.where({ user_id: current_user.id})
    @webtoons = Webtoon.where({ id: @watched.web_id})
  end
  
  # 웹툰 저장 (관람)
  def save
    user_id = params[:user_id]
    webtoon_id = params[:web_id]
    rate = params[:rate]
    
    # 웹툰을 저장 시 이미 저장했던 웹툰일 때 
    if Watched.exists?(:user_id => user_id, :web_id => webtoon_id)
      w = Watched.find_by(:user_id => user_id, :web_id => webtoon_id)
      w.user_id = user_id
      w.web_id = webtoon_id
      w.rate = rate
      w.save
    else
      w = Watched.new
      w.user_id = user_id
      w.web_id = webtoon_id
      w.rate = rate
      w.save
    end
    
    redirect_to :back
  end
  
  def mp_input
  end
  
  def mp_save
    mp = Mp.new
    mp.name = params[:mp_name]
    mp.writer = params[:mp_writer]
    mp.subject = params[:mp_subject]
    mp.genre = params[:mp_genre]
    mp.intro = params[:mp_intro]
    
    uploader = ImguploaderUploader.new
    uploader.store!(params[:img])
    mp.thumbnail = uploader.url
    
    mp.save
    
    redirect_to '/mp_input'
  end
  
  def create
    webtoon = Webtoon.new
    webtoon.name = params[:webtoon_name]
    webtoon.writer = params[:webtoon_writer]
    webtoon.platform = params[:webtoon_platform]
    webtoon.genre = params[:webtoon_genre]
    webtoon.intro = params[:webtoon_intro]
    webtoon.link = params[:webtoon_link]
    tags = params[:tag].split(',')
    tags.each do |t|
      ta = Tag.find_or_create_by(name: t.delete('#'))
      ta.save
      webtoon.tags << ta
    end
    
    webtoon.finished = params[:webtoon_finished]
    
    uploader = ImguploaderUploader.new
    uploader.store!(params[:img])
    webtoon.thumbnail = uploader.url
    
    webtoon.save
    
    redirect_to '/webtoon/input'
  end
  
  def wish
    user_id = params[:user_id]
    webtoon_id = params[:web_id]
    
    # 웹툰을 저장 시 이미 저장했던 웹툰일 때 
    if Wish.exists?(:user_id => user_id, :web_id => webtoon_id)
      w = Wish.find_by(:user_id => user_id, :web_id => webtoon_id)
      w.destroy
    else
      w = Wish.new
      w.user_id = user_id
      w.web_id = webtoon_id
      w.save
    end
    
    redirect_to :back
  end
  
  def comment
    c = Comment.new
    c.user_id = params[:user_id]
    c.webtoon_id = params[:web_id]
    c.comment = params[:comment]
    c.save
    redirect_to :back
  end
  
  private
    def is_signed_in
      unless user_signed_in?
        redirect_to '/users/sign_in', notice: '이 기능은 로그인해야 사용가능 합니다.'
      end
    end
end
