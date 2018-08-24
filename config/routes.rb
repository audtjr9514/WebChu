Rails.application.routes.draw do
  devise_for :users
  
  root 'main#index'
  
  get 'main/index'

  # 마이페이지 ^^
  get '/mypage/:user_id' => 'main#mypage'
  get '/mypage/:user_id/watched' => 'main#mypage_watched'
  get '/mypage/:user_id/wish' => 'main#mypage_wish'
  get '/mypage/:user_id/comment' => 'main#mypage_comment'

  get '/following/:user_id&:fol_id' => 'main#following'

  get '/unfollowing/:user_id&:fol_id' => 'main#unfollowing'
  
  get 'main/follower'
  
  # 웹툰 데이터 넣기
  get 'webtoon/input'
  post '/create' => 'webtoon#create'
  
  # 작품 저장 (watched)
  get '/webtoon/save' => 'webtoon#save'
  
  # 작품 추천
  get '/recommend' => 'webtoon#recommend'

  #  작품 찾기
  get '/finder' => 'webtoon#finder'
  get '/finder/:genre&:tag&:platform' => 'webtoon#finder'

  # 명작 데이터 넣기
  get '/mp_input' => 'webtoon#mp_input'
  post '/mp_save' => 'webtoon#mp_save'
  
  # 명작 추천
  get '/suggest' => 'webtoon#suggest'
  
  # 보고싶어요 저장
  get '/webtoon/wish' => 'webtoon#wish'
  
  # 한줄평
  get '/comment/:user_id&:web_id' => 'webtoon#comment'
  
  # 명석님 : 웹툰 데이터 추가(webtoon/input) + 태그 관계설정 + 컨트롤러 수정
  # > 작품 찾기(webtoon/finder) > 명작 추천?
  
  # 혜성님 : 팔로우(main/mypage) > 명작 넣기 > 작품 추천(webtoon/recommend)
  # > 마이페이지에 봤어요 > 보고싶어요 > 댓글 > 내가쓴댓글 > 취향분석
  # > 내가 쓴 댓글......
  
  
  # 08.20 해야될 것 !!!
  # 별점을 0점으로 설정 시, 본 웹툰을 안본 상태로 만들기
  # 안보고 코멘트를 남겼을 때, 본 걸로 설정되는 버그 (단순 오류일 수 있으니 디비 드랍해보자 !!)
  
  
  # 백 + 프론트 합칠 때 ~.~
  # 혜성님 : 취향저격
  # 명석님 : 명작추천
  # 희승님 : 메인 페이지 
  # 다은님 : 마이페이지(보고싶, 봤어, 댓글) 
  # 1등으로 끝낸 사람 : 작품찾기
  
  # rake db:drop > migrate
  # rake db:seed
  # bundle exec rails db < tags_webtoons.sql
end
