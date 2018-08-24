# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Examples:

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User Table 시드
User.create(email: '1@1', password: 'qwerqwer', password_confirmation: 'qwerqwer')
User.create(email: '2@2', password: 'qwerqwer', password_confirmation: 'qwerqwer')
User.create(email: '3@3', password: 'qwerqwer', password_confirmation: 'qwerqwer')


# Tag Table 시드
Tag.create(name: '먼치킨')
Tag.create(name: '동양풍')
Tag.create(name: '멘붕')
Tag.create(name: '가족')
Tag.create(name: '따뜻')
Tag.create(name: '잔인')
Tag.create(name: '패션')
Tag.create(name: '우주')
Tag.create(name: '연예인')
Tag.create(name: '주체적 여성')
Tag.create(name: '여장 남자')
Tag.create(name: '외모지상주의')
Tag.create(name: '무거움')
Tag.create(name: '이세계')
Tag.create(name: '얀데레')
Tag.create(name: '뱀파이어')
Tag.create(name: '회사')
Tag.create(name: '대학교')
Tag.create(name: '범죄')
Tag.create(name: '사랑과 우정사이')
Tag.create(name: '소꿉친구')
Tag.create(name: '퇴마')
Tag.create(name: '남매')
Tag.create(name: '오타쿠')
Tag.create(name: '배틀')
Tag.create(name: '춤')
Tag.create(name: '역하렘')
Tag.create(name: '츤데레')
Tag.create(name: '요괴 및 괴물')
Tag.create(name: '야구')
Tag.create(name: '열혈')
Tag.create(name: '정치')
Tag.create(name: '감염 및 좀비')
Tag.create(name: '병맛')
Tag.create(name: '밀리터리')
Tag.create(name: '성전환')
Tag.create(name: '동물')
Tag.create(name: '미스테리')
Tag.create(name: '치유')
Tag.create(name: '학교')
Tag.create(name: '두뇌유희')
Tag.create(name: '시공이동')
Tag.create(name: '농구')
Tag.create(name: '도박')
Tag.create(name: '왕권다툼')
Tag.create(name: '서양풍')
Tag.create(name: '남장여자')
Tag.create(name: '막장')
Tag.create(name: '역사')
Tag.create(name: '철학적')
Tag.create(name: '선생님')
Tag.create(name: '현실적')
Tag.create(name: '육아')
Tag.create(name: '게임')
Tag.create(name: '슬픔')
Tag.create(name: '축구')
Tag.create(name: '자전거')
Tag.create(name: '추리')
Tag.create(name: '성장')
Tag.create(name: '복수')
Tag.create(name: '신분차이')
Tag.create(name: '나이차 큼')
Tag.create(name: '비판적')

# Webtoon table 시드
Webtoon.create(name: '죽음에 관하여', writer:'시니/혀노', platform: '네이버', genre: '판타지', intro:'삶과 죽음의 경계선, 그 곳엔 누가 있을까.', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=703845', thumbnail: '/uploads/죽음에 관하여.jpg', finished: false)
Webtoon.create(name: '갓 오브 하이스쿨', writer: '박용제', platform: '네이버', genre: '액션', intro:'전국, 전세계 고등학생 중 가장 쎈 녀석을 뽑는 대회가 열린다.허구 100% 막장 액션의 끝!! 기대하시라!!!', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=318995', thumbnail: '/uploads/갓 오브 하이스쿨.jpg', finished: false)
Webtoon.create(name: '대학일기', writer:'자까', platform: '네이버', genre: '일상', intro: '로망이 꽃피는 캠퍼스는 없다. 극사실주의에 기반한 너무나 현실적인 우리의 대학일기', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=679519', thumbnail: '/uploads/대학일기.jpg', finished: false)
Webtoon.create(name: '신의 탑', writer: 'SIU', platform: '네이버',genre: '판타지', intro: '자신의 모든 것이었던 소녀를 쫓아 탑에 들어온 소년\n그리고 그런 소년을 시험하는 탑', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=183559', thumbnail: '/uploads/신의 탑.jpg', finished: false)
Webtoon.create(name: '오늘도 형제는 평화롭다', writer: 'GIMS', platform: '네이버', genre: '개그', intro: '돈독한 형제들의 이야기, 사건의 중심엔 늘 그들이 있다.', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=692510', thumbnail: '/uploads/오늘도 형제는 평화롭다.jpg', finished: true)
Webtoon.create(name: '외모지상주의', writer: '박태준', platform: '네이버', genre: '판타지', intro:'어느날 그에게 일어난 기적같은 일', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=641253', thumbnail: '/uploads/외모지상주의.jpg', finished: false)
Webtoon.create(name: '이태원 클라쓰', writer: '광진', platform: '다음', genre: '드라마', intro:'각자의 가치관이 어우러지는 이 곳, \'이태원\'. 이 거리를 살아가는 그들의 이야기', link: 'http://webtoon.daum.net/webtoon/view/ItaewonClass', thumbnail: '/uploads/이태원 클라쓰.jpg', finished: true)
Webtoon.create(name: '트레이스', writer: '고영훈', platform: '다음', genre: '판타지', intro:'트레이스, 트러블, 인간.. 그들의 생존을 건 싸움', link: 'http://webtoon.daum.net/webtoon/view/trace2', thumbnail: '/uploads/트레이스.jpg', finished: false)
Webtoon.create(name: '헬퍼 2', writer: '삭', platform: '네이버', genre: '액션', intro:'역시는 역시 역시군.킬베로스 트라이브의 대장 장광남이 펼치는 스트릿 액션 만화.', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=670143', thumbnail: '/uploads/헬퍼 2.jpg', finished: false)
Webtoon.create(name: '호랑이 형님', writer: '이상규', platform: '네이버', genre: '판타지', intro:'신비한 힘을 가진 아이를 이용하여 세상을 지배하려는 반인반수 흰눈썹!\n그리고 얼떨결에 아이의 보호자가 된 괴물호랑이 빠르와 착호갑사 지망생 가우리!\n이제 힘을 합쳐 흰눈썹으로부터 아이와 세상을 지켜라!!!', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=650305', thumbnail: '/uploads/호랑이 형님.jpg', finished: false)
Webtoon.create(name: '고양이 마마님', writer:'마루', platform: '다음', genre: '판타지', intro:'지금의 당신에게 소중한 시간은 언제인가요? 300년만에 다시 시작된 인연과 악연의 굴레.', link: 'http://webtoon.daum.net/webtoon/view/CatQueen', thumbnail: '/uploads/고양이 마마님.png', finished: false)
Webtoon.create(name: '놈들의 도시', writer:'유들/라떼', platform: '다음', genre: '드라마', intro:'지구 상 모든 여성이 사라졌다! 인류의 유일한 여성 ‘나오’가 남성만 있는 도시에서 무사히 살아남을 수 있을까?', link: 'http://webtoon.daum.net/webtoon/view/MenCity', thumbnail: '/uploads/놈들의 도시.JPG', finished: false)
Webtoon.create(name: '우리 남매의 일상은', writer: '손달섭', platform: '다음', genre: '일상', intro: '대한민국 어디에나 있을법한 남매들의 화려한 일상!', link: 'http://webtoon.daum.net/webtoon/view/brothersister', thumbnail: '/uploads/우리 남매의 일상은.png',  finished: false )
Webtoon.create(name: '여탕보고서', writer: '마일로', platform: '네이버', genre: '개그', intro: '금남의 공간 신비의 세계 여탕 가본 자가 알려주는 그곳의 진실', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=639604', thumbnail: '/uploads/여탕보고서.jpg',  finished: true)
Webtoon.create(name: '이런 영웅은 싫어', writer: '삼촌', platform: '네이버', genre: '판타지', intro: '실존하는 수많은 영물들과 싸우는 히어로, 스푼(SPOON)의 대활약 이야기!', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=400742', thumbnail: '/uploads/이런 영웅은 싫어.jpg', finished: true )
Webtoon.create(name: '치즈인더트랩 1~3부', writer: '순끼', platform: '네이버', genre: '드라마', intro: '평범한 여대생 홍설, 그리고 어딘가 수상한 선배 유정.미묘한 관계의 이들이 펼쳐나가는 이야기.', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=186811', thumbnail: '/uploads/치즈인더트랩 1~3부.jpeg', finished: true )
Webtoon.create(name: '치즈인더트랩 4부', writer: '순끼', platform: '네이버', genre: '드라마', intro: '평범한 여대생 홍설, 그리고 어딘가 수상한 선배 유정.미묘한 관계의 이들이 펼쳐나가는 이야기.', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=662162', thumbnail: '/uploads/치즈인더트랩 4부.jpg', finished: true )
Webtoon.create(name: '가담항설', writer: '랑또', platform: '네이버', genre: '판타지', intro: '이번 주인공은 돌이다! 돌이지만 동료도 모으고 악당도 물리친다! 랑또 작가표 동양 판타지 소년만화', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=670144&weekday=thu', thumbnail: '/uploads/가담항설.jpeg', finished: false )
Webtoon.create(name: '오늘도 사랑스럽개', writer: '이혜', platform: '네이버', genre: '로맨스', intro: '새벽마다 개로 변하는 저주를 풀기 위한 여자와 개가 무서운 남자의 밀고 당기는 로맨스!', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=699658&weekday=sun', thumbnail: '/uploads/오늘도 사랑스럽개.jpg', finished: false )
Webtoon.create(name: '유미의 세포들', writer: '이동건', platform: '네이버', genre: '로맨스', intro: '유미와 그녀의 우당탕탕 세포들 이야기.', link: 'https://comic.naver.com/webtoon/list.nhn?titleId=651673&weekday=wed', thumbnail: '/uploads/유미의 세포들.jpeg', finished: false )
Webtoon.create(name: '어쩌다 발견한 7월', writer: '무류', platform: '다음', genre: '로맨스', intro: '할 수 있는 게 이것 밖에 없었어. 단지 너를 만나러 가는 것.', link: 'http://webtoon.daum.net/webtoon/view/findjuly', thumbnail: '/uploads/어쩌다 발견한 7월.jpg', finished: false )
Webtoon.create(name: '실', writer: '보리', platform: '다음', genre: '로맨스', intro: '다시 돌아가는 거야, 당신에게로!', link: 'http://webtoon.daum.net/webtoon/view/destiny_line', thumbnail: '/uploads/실.jpg', finished: true )


# #Webtoon.create(name: '', writer: '', platform: '', genre: '', intro: '', link: '', thumbnail: '/uploads/.jpg', finished: )
# 웹툰 시드 넣을 때 윗줄 복사해서 넣으면 됨

Mp.create(name: '크로우즈 제로',writer: '미이케 다카시', subject: '영화', genre: '액션', intro: '품성 제로, 초특급 사고뭉치 불량학생들이 모인 악명 높은 스즈란 고등학교. 정상을 차지하기 위한 거칠 것 없는 학생들의 세력다툼은 잠시도 그치질 않고, 지금가지 스즈란을 완전히 평정한 일인자는 아무도 없었다. 현재 스즈란 고교의 최강 세력은 3학년 세리자와 타마오(야마다 타카유키). 
 어느 날 도저히 불가능하다는 스즈란 고교 완전 제패를 꿈꾸며 겁없는 전학생 타키야 겐지(오구리 슌)가 나타나고, 또 다른 강자의 등장으로 스즈란 고교는 폭풍전야에 빠져든다. 
 이제 스즈란 고교 정상의 자리를 두고, 최후의 결전이 펼쳐지게 되는데...', thumbnail: '/uploads/크로우즈 제로.jpg')
Mp.create(name: '어벤져스', writer: '조스 웨던', subject: '영화', genre: '액션', intro: '지구의 안보가 위협당하는 위기의 상황에서 슈퍼히어로들을 불러모아 세상을 구하는, 일명 [어벤져스] 작전. 
 에너지원 ‘큐브’를 이용한 적의 등장으로 인류가 위험에 처하자 국제평화유지기구인 쉴드 (S.H.I.E.L.D)의 국장 닉 퓨리(사무엘 L.잭슨)는 [어벤져스] 작전을 위해 전 세계에 흩어져 있던 슈퍼히어로들을 찾아나선다. 아이언맨(로버트 다우니 주니어)부터 토르(크리스 헴스워스), 헐크(마크 러팔로), 캡틴 아메리카(크리스 에반스)는 물론, 쉴드의 요원인 블랙 위도우(스칼렛 요한슨), 호크 아이(제레미 레너)까지, 최고의 슈퍼히어로들이 [어벤져스]의 멤버로 모이게 되지만, 각기 개성이 강한 이들의 만남은 예상치 못한 방향으로 흘러가는데… 
 지구의 운명을 건 거대한 전쟁 앞에 [어벤져스] 작전은 성공할 수 있을까?', thumbnail: '/uploads/어벤져스.jpg')
Mp.create(name: '트랜스포머', writer: '마이클 베이', subject: '영화', genre: '액션', intro: '인류보다 월등히 뛰어난 지능과 파워를 지닌 외계 생명체 ‘트랜스포머’. 정의를 수호하는 ‘오토봇’ 군단과 악을 대변하는 ‘디셉티콘’ 군단으로 나뉘는 ‘트랜스포머’는 궁극의 에너지원인 ‘큐브’를 차지하기 위해 오랜 전쟁을 벌여왔다. 하지만 행성 폭발로 우주 어딘가로 사라져버린 ‘큐브’. 그들은 오랜 전쟁의 종지부를 찍기 위해 ‘큐브’를 찾아 전 우주를 떠돈다.
  인류의 미래를 좌우할 에너지원인 ‘큐브’는 우주를 떠돌다 지구에 떨어지고 디셉티콘 군단의 끈질긴 추적 끝에 ‘큐브’가 지구에 있다는 사실을 알아낸다. 그들은 최후의 전쟁의 무대로 지구를 택하고, 아무도 모르게 지구로 잠입한다. 어떤 행성이든지 침입해 그 곳에 존재하는 기계로 변신, 자신의 존재를 숨길 수 있는 트랜스포머는 자동차, 헬기, 전투기 등의 다양한 형태로 변신해 인류의 생활에 깊숙이 침투한다. 그리고 그들은 큐브의 위치를 찾는데 결정적인 열쇠를 지닌 주인공 ‘샘’의 존재를 알게 된다.
  이 모든 사실을 전혀 모른 채 살아가던 ‘샘’은 어느 날 밤, 자신의 낡은 자동차가 거대한 로봇으로 변신하는 놀라운 현장을 목격한다. 그의 자동차는 ‘트랜스포머’ 중 정의를 수호하는 ‘오토봇’ 군단의 ‘범블비’로 큐브를 차지하기 위해 음모를 꾸미는 ‘디셉티콘’ 군단에 맞서 샘을 보호하기 위해 파견된 트랜스포머. 우주의 질서를 수호하기 위해 반드시 샘을 지켜야만 하는 범블비는 자신이 형제들인 ‘오토봇’ 군단을 지구로 불러모으기 시작하는데..
  거대 에너지원 ‘큐브’가 디셉티콘의 손에 들어가는 것만은 막아야 한다. 샘을 찾아내 큐브를 손에 쥐어 지구를 지배하려는 악의 ‘디셉티콘’ 군단과 지구를 지키려는 정의의 ‘오토봇’ 군단의 인류의 운명을 건 숨막히는 대결이 펼쳐진다.', thumbnail: '/uploads/트랜스포머.jpg')
Mp.create(name: '반지의 제왕: 반지 원정대 ', writer: '', subject: '영화', genre: '액션', intro: '모든 힘을 지배할 악의 군주 ‘사우론’의 절대반지가 깨어나고
 악의 세력이 세상을 지배해가며 중간계는 대혼란에 처한다. 
 
 호빗 ‘프로도’와 그의 친구들, 엘프 ‘레골라스’, 인간 전사 ‘아라곤’과 ‘보로미르’ 
 드워프 ‘김리’ 그리고 마법사 ‘간달프’로 구성된 반지원정대는 
 평화를 지키기 위해 절대반지를 파괴할 유일한 방법인 
 반지가 만들어진 모르도르를 향해 목숨을 건 여정을 떠난다.
 
 한편, 점점 세력을 넓혀온 사우론과의 피할 수 없는 전쟁을 앞둔
 반지원정대는 드디어 거대한 최후의 전쟁을 시작하는데...', thumbnail: '/uploads/반지의 제왕.jpg')
Mp.create(name: '리틀 포레스트', writer: '', subject: '영화', genre: '일상', intro: '시험, 연애, 취업… 뭐하나 뜻대로 되지 않는 일상을 잠시 멈추고
 고향으로 돌아온 혜원은 오랜 친구인 재하와 은숙을 만난다
  
 남들과는 다른, 자신만의 삶을 살기 위해 고향으로 돌아온 ‘재하’, 
 평범한 일상에서의 일탈을 꿈꾸는 ‘은숙’과 함께
 직접 키운 농작물로 한끼 한끼를 만들어 먹으며
 겨울에서 봄, 그리고 여름, 가을을 보내고 다시 겨울을 맞이하게 된 혜원.
  
 그렇게 특별한 사계절을 보내며 고향으로 돌아온 진짜 이유를 깨닫게 된 혜원은 
 새로운 봄을 맞이하기 위한 첫 발을 내딛는데…', thumbnail: '/uploads/리틀 포레스트.jpg') 
Mp.create(name: '클래식', writer: '', subject: '영화', genre: '로맨스', intro: '같은 대학에 다니는 지혜(손예진 분)와 수경(이수인 분)은 연극반 선배 상민(조인성 분)을 좋아한다. 하지만 호들갑스런 수경이 상민에게 보낼 편지의 대필을 부탁하고, 지혜는 수경의 이름으로 상민을 향한 자신의 감정을 고백한다. 지혜의 편지로 맺어진 수경과 상민이 가까워지면서 지혜는 괜한 죄의식에 상민을 멀리 하려 하지만, 우연하게도 자꾸만 마주치게 된다.
  한편, 아빠를 일찍 여읜 지혜는 지금은 해외 여행 중인 엄마 주희와 단둘이 살다. 엄마의 빈자리를 털기 위해 다락방을 청소하던 지혜는 우연히 엄마의 비밀 상자를 발견하게 된다. 주희의 첫사랑의 기억이 고스란히 담겨있는 비밀 상자를 보면서 지혜는 엄마의 클래식한 사랑을 조금씩 알게 된다.
  1968년 여름... 방학을 맞아 시골 삼촌댁에 간 준하(조승우 분)는 그곳에서 성주희(손예진 분)를 만나, 한눈에 그녀에게 매료된다. 그런 주희가 자신에게만 은밀하게 \'귀신 나오는 집\'에 동행해줄 것을 부탁해온다. 흔쾌히 수락한 준하는 흥분된 마음을 가까스로 누르며 주희와의 약속 장소에 나간다. 그런데 갑작스런 소나기를 만나 배가 떠내려가면서 귀가 시간이 늦어지고, 이 일로 주희는 집안 어른에게 심한 꾸중을 듣고 수원으로 보내진다. 작별 인사도 못하고 헤어진 주희를 향한 준하의 마음은 안타깝기만 하다. 그렇게 방학이 끝나고 학교로 돌아온 준하는 친구 태수에게 연애편지의 대필을 부탁받는데, 상대가 주희란 사실에 깜짝 놀란다. 하지만 태수에게 그 사실을 말하지 못하고, 태수의 이름으로 자신의 마음을 담아 주희에게 편지를 쓴다.
  편지를 대신 써주며 사랑이 깊어간 엄마와 자신의 묘하게도 닮은 첫사랑. 이 우연의 일치에 내심 의아해하는 지혜는 상민에 대한 생각이 더욱 깊어만 간다. 하지만 이미 친구의 연인이 되어버린 그를 포기하기로 마음먹는데...', thumbnail: '/uploads/클래식.jpg')  
Mp.create(name: '화이트 칙스', writer: '', subject: '영화', genre: '개그', intro: '위장술 하나는 끝내주지만 정작 사건 해결은 못해본 FBI 명물 콤비 마커스(말론 웨이언스)와 케빈(숀 웨이언스)은 순간의 착각으로 거물급 마약상을 놓치는 일대 실수를 저지르고 만다. FBI에서 퇴출 위기에 몰린 둘은 얼떨결에 자선파티 참석을 위해 LA에 오는 호텔재벌 윌슨가 자매의 모두가 꺼려하는 경호를 떠맡게 된다. 하지만 첫날부터 호틀갑 자매의 귀하신 얼굴에 상처를 내는 대형사고(?)를 치고 마는데...
  길길이 날뛰는 자매 앞에 이들이 살아남는 방법은 딱 하나! \'뽕 넣고 찍어 발라서라도\' 그녀들로 변신, 그녀들 대신 사교계를 휘어잡는 것! 이제 풍만한 가슴에 쭉빠진 바디라인의 금발미녀가 된 그들, 아니 그녀들은 알고보면 첩보전을 능가하는 칵테일 파티와 총격전보다 살벌한 패션쇼 등 재벌계의 엄청난 사생활에 말려들기 시작하는데...?!', thumbnail: '/uploads/.jpg')  
Mp.create(name: '', writer: '', subject: '', genre: '드라마', intro: '', thumbnail: '/uploads/.jpg')   

Mp.create(name: '바람의 검심', writer: '', subject: '만화', genre: '액션', intro: '메이지 시대로의 전개 과정에서 수많은 목숨을 베어야 했던 \'칼잡이 발도제\' 켄신이 떠돌이 무사가 되어 고통과 눈물 속에서 살아가는 민중들의 편에 서서 사람을 헤치지 않는 역날검을 들고 방랑길에 오르며 겪게 되는 스토리이다. 켄신은 자신의 검에 사라진 생명들에 대해 씻을 수 없는 깊은 상처를 안고 살아가지만, 방랑생활을 통해 자신을 필요로 하는 더 많은 사람들을 구하며 곁에 항상 머물러 주는 친구들과의 우정과 사랑을 통해 조금이나마 그 무게를 줄여나간다.
', thumbnail: '/uploads/바람의 검심.jpg')  
Mp.create(name: '이누야샤', writer: '', subject: '만화', genre: '판타지', intro: '히구라시 신사의 장녀 카고메(한국 : 유가영)는 중학교 3학년으로 평범한 나날을 보내고 있다. 하지만, 그녀의 15번째 생일날. 사당 안에 있는 우물에서 나타난 지네요괴에게 붙잡혀 우물 안을 통해 시공을 초월하여 약 500년 전 전국시대로 오게 되고, 신성한 나무에 봉인되어 잠들어 있는 반요 이누야샤를 만나게 된다. 자신이 떨어진 우물 근처에는 이누야샤를 봉인한 키쿄우(한국 : 금강)라는 죽은 무녀의 동생 카에데(한국 : 금사매)가 살고 있었는데, 카에데는 카고메를 보고 자신의 언니 키쿄우의 환생일 것이라고 예상한다.

그 날 저녁, 우물 속에서 봤던 지네요괴가 다시 마을을 습격해서 카고메는 지네요괴를 유인하기 위해 이누야샤가 있던 숲으로 도망을 가고, 지네요괴에게 공격받는 순간 그녀 속에 잠재되어 있는 무녀 키쿄우의 힘으로 이누야샤의 봉인을 풀어 위기를 면한다. 또한 사혼의 구슬이 자신의 몸속에 있어, 자신이 구슬을 빼앗으려 하는 요괴들의 표적이 되고 있음을 알게 된다.

집으로 돌아가기 위해 우물이 있는 곳으로 가던 도중 또 다른 요괴의 습격을 받아 결국 사혼의 구슬을 빼앗기게 된 카고메는 날아가는 요괴를 겨냥하여 화살을 당겨보지만, 요괴의 발을 단 화살이 구슬을 한 번에 맞추는 바람에 사혼의 구슬은 공중에서 산산조각으로 깨어진 채 사방으로 흩어진다. 사혼의 구슬 조각이 악한 요괴의 손에 들어가 세상이 어지러워 질 것을 염려한 이누야샤와 카고메는 흩어진 사혼의 구슬 조각을 모으기 위해 머나먼 여정 길에 오른다. 나중에는 산고랑 미륵이랑 싯포도 같이!', thumbnail: '/uploads/이누야샤.jpg')  
Mp.create(name: '케이온!', writer: '', subject: '만화', genre: '일상', intro: '꽃 피는 4월은 입학의 시기이자 신입생들이 활동할 클럽을 고르는 시기. 타이나카 리츠는 초등학생 시절부터 친하게 지내던 소꿉친구 아키야마 미오를 데리고 경음악부에 견학을 간다. 그러나 경음악부는 부원 전원이 졸업을 해 버린지라, 부원이 4명 이상 다시 모이지 않으면 그대로 폐부될 위기.

리츠는 문예부에 들 예정이던 미오를 꼬드기고, 코토부키 츠무기라는 멤버까지 모은 뒤 마지막 멤버를 찾는다. 이 때 경음악부를 \'휘파람같은 가벼운 음악을 하는 곳\'이라고 착각한 초심자 히라사와 유이가 나타나면서 경음악부를 살리기 위한 모든 퍼즐이 맞춰지고, 이야기는 시작되는데….

사쿠라 여자 고등학교 경음부, 방과후 티타임입니다!', thumbnail: '/uploads/케이온!.jpg')
Mp.create(name: '키드갱', writer: '', subject: '만화', genre: '개그', intro: '건달과 아기가 동거에 들어갔다?!
복수를 위해 한 형사의 아기를 납치하러 찾아간 대봉. 그러나 갑작스러운 가스 폭발로 한 형사 부부는 사망하고, 납치된 덕에 아기 혼자만 살아남게 되는데… 이제 어쩐다?? 복수는 뭐고 생뚱맞은 아이만 달고 왔으니 이걸 키워야 되는 거야? 그런 거야? 대봉과 피의 화요일파의 요절복통 육아일기!!', thumbnail: '/uploads/키드갱.jpg')
Mp.create(name: '너에게 닿기를', writer: '', subject: '만화', genre: '로맨스', intro: '', thumbnail: '/uploads/너에게 닿기를.jpg')
Mp.create(name: '늑대아이', writer: '', subject: '만화', genre: '드라마', intro: '내가 사랑하게 된 사람은… 늑대인간이었습니다. 평범한 여대생 \'하나\'는 강의실에서 우연히 만나게 된 \'그\'에게 반하게 되고, 곧 사랑에 빠지게 된다. 하지만 \'그\'는 평범한 사람이 아닌 늑대인간이었다. 너희가 늑대아이라는 것은 모두에게 비밀이야! 늑대인간과의 동화 같은 사랑 후에 남은 것은 두 아이뿐... 눈 내리는 날에 태어난 누이 \'유키\', 비 내리는 날 태어난 동생 \'아메\'. 두 아이에게는 커다란 비밀이 있는데...바로 흥분(!)하면 귀가 쫑긋! 꼬리가 쏘옥~ 나오는 늑대아이라는 것! 남들과 조금 다른 육아, 남들과 살짝 다른 고민! 신비로운 운명을 살아가는 남매와 특별한 두 아이를 키우는 엄마의 이야기가 시작됩니다!', thumbnail: '/uploads/늑대아이.jpg')

Mp.create(name: '원펀맨', writer: '', subject: '애니', genre: '액션', intro: '다양한 괴수가 나타나기 시작한 현대 도시. 
혼란에 빠진 세상을 구하기 위해 나타난 한 남자가 있었으니,
어떤 적이든 일격에 끝장내 버리는 초강력 히어로 사이타마였다!
하지만 너무나도 순식간에 적을 끝장내버리는 바람에 아무도 그의 활약을 눈치 채지 못하는데….
세상을 지키고도 인기를 얻기는커녕 보답조차 받지 못해 생활고에 시달리는,
최고로 서민적인 히어로의 지구 수호 활약기!', thumbnail: '/uploads/원펀맨.jpg')
Mp.create(name: '도쿄구울', writer: '', subject: '애니', genre: '판타지', intro: '먹이사슬이 정점에 있는 인간, 그 중에서도 가장 상위에 위치한 최정점의 존재-인간을 먹이로 삼는 그들의 이름은 ‘구울’. 인간과 바로 그 ‘구울’이 뒤섞여 사는 세상에서 대학생 카네키는 그 존재를 실감하지 못한 채 평범한 나날을 보내고 있었다. 죽을 목숨이었으나 놀랍게도 살아난 카네키. 그날부터 그는 ‘반 인간, 반 구울’ 상태의 돌연변이가 되어 인간의 날고기 외에는 식욕을 느끼지 못하고 모두 토해버리는 끔찍한 괴물이 되어버리는데...
청년이 괴인과 다시 만났을 때, 기구한 운명의 수레바퀴가 돌기 시작한다-!
이제 인간을 먹지 않고선 살아갈 수가 없다?!
평범한 대학생에서 구울로 다시 태어난 카네키 켄!
인간과 구울이라는 절대 교차할 수 없는 관계…
고뇌하는 청년의 숙명이 지금 시작된다…!!', thumbnail: '/uploads/도쿄구울.jpg')
Mp.create(name: '워킹!', writer: '', subject: '애니', genre: '일상', intro: '패밀리 레스토랑 ‘와그나리아’에 어서오세요~
새끼 고양이, 강아지, 물벼룩 등 ‘작은 것’을 좋아할 뿐 절대 변태나 롤리콤은 아닌 주인공 타카나시 소타는 추운 겨울, 자신의 취향에 직격인 스몰사이즈의 여자아이에게 알바 스카우트를 당한다. 패밀리 레스토랑에서 일해보지 않겠냐는 그녀의 제안을 덥석 물기는 했지만 ‘와그나리아’ 사람들은 하나같이 평범하지 않은데?. 훗카이도 모처에 존재하는 패밀리 레스토랑 ‘와그나리아’에서 유일한 ‘보통 사람’이라 주장하는 타카나시와 개성강한 알바생들의 알바 이야기, 그리고 개성 풍부한 멤버들 틈에서 피어난 근사한(?) 사랑의 행방은...?
미묘하게 일하는 패밀리 레스토랑 아르바이트!!', thumbnail: '/uploads/워킹.jpg')
Mp.create(name: '사카모토입니다만?', writer: '', subject: '애니', genre: '개그', intro: '스타일리시한 등교, 화려한 지각 회피, 스마트한 런치 타임… 
사카모토, 그의 엣지 넘치는 행동거지 하나하나가 여학생들의 마음을 두근거리게 만든다. 
이런 사카모토가 꼴 보기 싫은 학교 일진들은 그를 골탕 먹이려 하지만, 
어느새 그의 쿨-함에 교화되고 동성애의 눈마저 뜨고 마는데..!', thumbnail: '/uploads사카모토입니다만/.jpg')
Mp.create(name: '목소리의 형태', writer: '', subject: '애니', genre: '로맨스', intro: '나는 네가 정말 싫었다.
너를 다시 만나기 전까진…
따분한 게 질색인 아이, 이시다 쇼야. 
간디가 어떤 사람인지, 인류의 진화과정이라든지, 알게뭐람. 
어느 날 쇼야의 따분함을 앗아갈 전학생이 나타났다. 니시미야 쇼코. 그 아이는 귀가 들리지 않는다고 한다. 
쇼야의 짓궂은 장난에도 늘, 생글생글 웃고만 있다. 짜증난다. 
그의 괴롭힘에 쇼코는 결국 전학을 갔고, 이시다 쇼야는 외톨이가 되었다. 

6년 후, 더 이상 이렇게 살아봐야 의미가 없음을 느낀 쇼야는 마지막으로 쇼코를 찾아간다. 
처음으로 전해진 두 사람의 목소리. 두 사람의 만남이 교실을, 학교를, 
그리고 쇼야의 인생, 쇼코의 인생을 바꾸기 시작한다.

소년 그리고 소녀. 실타래처럼 뒤엉켜가는 청춘의 이야기.', thumbnail: '/uploads/목소리의 형태.jpg')
Mp.create(name: '4월은 너의 거짓말', writer: '', subject: '애니', genre: '드라마', intro: '신동 피아니스트라 불리던 아리마 코세이는 어머니의 죽음을 계기로 몇 년 전부터 피아노를 칠 수 없게 되었다. 그리고 이런 코세이의 눈에 비치는 세상은 모노톤의 단조로운 풍경이었는데.

그런데 어느 날, 친구의 소개팅 자리에 인원수 맞추기로 나가게 된 코세이는 개성 넘치는 소녀 바이올리니스트 미야조노 카오리를 만나게 된다.
그리고 그녀와 교류하면서 코세이의 무채색 일상은 큰 변화를 맞이하게 되는데.', thumbnail: '/uploads/4월은 너의 거짓말.jpg')
