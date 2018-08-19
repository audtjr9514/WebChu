# 웹툰 추천 서비스 _ 멋쟁이 사자처럼 6기 중앙 해커톤
## WEB CHU

### Controller
* Main controller
    * index action
    * mypage action
    * following action
    * follower action
    
* Webtoon controller
    * recommend action
    * finder action
    * suggest action
     
### model
* devise user (회원)
* webtoon (웹툰)
* watched (내가 평가한 웹툰) (1:n)
* wish (보고싶어요) (1:n)
* comment (댓글) (1:n)
* tag
#### migrate (m:n)
* create_follower_following (팔로우)
* create_tag_webtoon (세분화된 장르 _ 태그)
* create_comment_user (좋아요)
