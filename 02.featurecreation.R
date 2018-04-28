### 03. featurecreation ------------------------------------------------

pd.df$PD_C_NM <- pd.df$PD_H_NM

# 데이터 수정
pd.df[grep("담배", pd.df$PD_M_NM),]$PD_C_NM <- "담배"
pd.df[grep("체중조절용시리얼", pd.df$PD_S_NM),]$PD_C_NM <- "헬스"
pd.df[grep("아동", pd.df$PD_S_NM),]$PD_C_NM <- "아동"
pd.df[grep("아동", pd.df$PD_M_NM),]$PD_C_NM <- "아동"
pd.df[grep("유아", pd.df$PD_S_NM),]$PD_C_NM <- "아동"
pd.df[grep("유아", pd.df$PD_M_NM),]$PD_C_NM <- "아동"
pd.df[pd.df$PD_S_NM == "서적",]$PD_C_NM <- "서적/음반"
pd.df[pd.df$PD_S_NM == "일반서적",]$PD_C_NM <- "서적/음반"
pd.df[grep("레스토랑", pd.df$PD_S_NM),]$PD_C_NM <- "FOOD COURT"
pd.df[grep("건강", pd.df$PD_S_NM),]$PD_C_NM <- "헬스"
pd.df[grep("건강", pd.df$PD_M_NM),]$PD_C_NM <- "헬스"
pd.df[grep("다이어트", pd.df$PD_S_NM),]$PD_C_NM <- "헬스"
pd.df[grep("자동차", pd.df$PD_S_NM),]$PD_C_NM <- "자동차용품"
pd.df[grep("화장품", pd.df$PD_M_NM),]$PD_C_NM <- "미용/화장품"
pd.df[grep("헤어케어", pd.df$PD_M_NM),]$PD_C_NM <- "미용/화장품"
pd.df[grep("바디케어", pd.df$PD_M_NM),]$PD_C_NM <- "미용/화장품"

## 데이터묶기 
# 서적 : 서적/음반,서적,음반,신문
pd.df$PD_C_NM <- gsub('서적/음반','서적',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('서적','서적',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('음반','서적',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('신문','서적',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('독서,독서','서적',pd.df$PD_C_NM)
pd.df[pd.df$PD_S_NM == "문화센터",]$PD_C_NM <- "서적"

# 뷰티 : 미용/화장품 향수 색조 브랜드화장품 Beauty&Aroma 기초
pd.df$PD_C_NM <- gsub('미용/화장품','뷰티',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('향수','뷰티',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('색조','뷰티',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('브랜드화장품','뷰티',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('Beauty&Aroma','뷰티',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('기초','뷰티',pd.df$PD_C_NM)

# 간편식 : 미반  즉석 식품  가공식품 인스턴트 조리빵 간식 가공대용식 냉장조리
pd.df$PD_C_NM <- gsub('미반','간편식',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('즉석 식품','간편식',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('가공식품','간편식',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('인스턴트','간편식',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('조리빵','간편식',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('간식','간편식',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('가공대용식','간편식',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('냉장조리','간편식',pd.df$PD_C_NM)

# 패션 : 언더웨어   여성의류편집  남성의류  패션슈즈 남성의류편집 BAG & ACC  이너웨어 여성의류  여성의류브랜드 슈즈브랜드 남성의류브랜드 잡화브랜드 명품
pd.df$PD_C_NM <- gsub('언더웨어','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('여성의류편집','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('남성의류','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('패션슈즈','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('남성의류편집','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('BAG & ACC','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('이너웨어','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('여성의류','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('여성의류브랜드','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('슈즈브랜드','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('남성의류브랜드','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('잡화브랜드','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('패션편집','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('패션브랜드','패션',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('명품','패션',pd.df$PD_C_NM)
pd.df[pd.df$PD_S_NM == "5 ON THE GO",]$PD_C_NM <- "패션"
pd.df[pd.df$PD_S_NM == "멘즈셀렉샵",]$PD_C_NM <- "패션"

# 건강,헬스 : 신선건강 헬스 건강식품
pd.df$PD_C_NM <- gsub('신선건강','건강,헬스',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('헬스','건강,헬스',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('건강식품','건강,헬스',pd.df$PD_C_NM)

# 스포츠 : 스포츠브랜드 스포츠 스포츠용품 시즌스포츠 
pd.df$PD_C_NM <- gsub('스포츠브랜드','스포츠',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('스포츠용품','스포츠',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('시즌스포츠','스포츠',pd.df$PD_C_NM)

# 유아용품 : 아동 아동유아브랜드 아동유아편집
pd.df$PD_C_NM <- gsub('아동','유아용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('아동유아브랜드','유아용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('아동유아편집','유아용품',pd.df$PD_C_NM)

# 인테리어  : 인테리어 수예소품/커튼 침구
pd.df$PD_C_NM <- gsub('수예소품/커튼','인테리어',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('침구','인테리어',pd.df$PD_C_NM)

# 과일 : 국산시즌과일 오렌지과일 과일 수입베리과일 저장과일 열대과일 저장과일
pd.df[grep("과일", pd.df$PD_M_NM),]$PD_C_NM <- "과일"

# 생활용품: 일상용품 욕실용품 위생용품 청소/수납용품 가정 주방잡화 조명/보수 쿠킹&테이블웨어 구강/헤어 세제 퍼스널 가정용품
pd.df$PD_C_NM <- gsub('일상용품','생활용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('욕실용품','생활용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('위생용품','생활용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('청소/수납용품','생활용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('가정','생활용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('주방잡화','생활용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('조명/보수','생활용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('쿠킹&테이블웨어','생활용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('구강/헤어','생활용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('세제','생활용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('퍼스널','생활용품',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('가정용품','생활용품',pd.df$PD_C_NM)

# 잡화 : 계절가전 소모품 일용잡화 문구/팬시 문구 완구 생활잡화 잡화 약품/의료품
pd.df$PD_C_NM <- gsub('계절가전','잡화',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('소모품','잡화',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('일용잡화','잡화',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('문구/팬시','잡화',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('문구','잡화',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('완구','잡화',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('생활잡화','잡화',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('약품/의료품','잡화',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('담배','잡화',pd.df$PD_C_NM)

# 가전 : 정보통신가전 주방생활가전 가전
pd.df$PD_C_NM <- gsub('정보통신가전','가전',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('주방생활가전','가전',pd.df$PD_C_NM)

# 주류 : 주류 양주와인 맥주 전통주
pd.df$PD_C_NM <- gsub('양주와인','주류',pd.df$PD_C_NM)
pd.df$PD_C_NM <- gsub('맥주','주류',pd.df$PD_C_NM)

# 애완원예용품 : PD_S_NM 펫샵 애완푸드 애완용품(직배)
pd.df[pd.df$PD_S_NM == "펫샵",]$PD_C_NM <- "애완원예용품"
pd.df[pd.df$PD_S_NM == "애완푸드",]$PD_C_NM <- "애완원예용품"
pd.df[pd.df$PD_S_NM == "애완용품(직배)",]$PD_C_NM <- "애완원예용품"

# FOOD COURT : PD_S_NM 식당가 기타
pd.df[pd.df$PD_S_NM == "식당가 기타",]$PD_C_NM <- "FOOD COURT"


# 나머지 상품 식품으로 묶기
pd.nm1 <- c("서적","뷰티", "간편식", "패션", "건강,헬스", "스포츠", "유아용품", "인테리어", "자동차", "과일", "생활용품", "잡화", "가전", "아웃도어", "애완원예용품", "주류", "FOOD COURT", "테넌트")
pd.nm2 <- unique(pd.df$PD_C_NM)
pd.nm <- setdiff(pd.nm2,pd.nm1)

for (i in pd.nm){
  pd.df$PD_C_NM <- gsub(i ,'식품',pd.df$PD_C_NM)
}

pd.df[grep("식품", pd.df$PD_C_NM),]$PD_C_NM <- "식품"
pd.df[grep("미분류", pd.df$PD_C_NM),]$PD_C_NM <- "잡화"

# 148 개의 대분류 상품리스트를 18개로 묶어 파생변수 PD_C_NM를 만듦
unique(pd.df$PD_C_NM)
pd.dt$PD_C_NM <- pd.df$PD_C_NM

pd.dt$PD_S_C <- as.factor(pd.dt$PD_S_C)
pd.dt$PD_C_NM <- as.factor(pd.dt$PD_C_NM)
shop.dt$PD_S_C <- as.factor(shop.dt$PD_S_C)

# 조인으로 파생변수(PD_S_C)와 대분류명(PD_H_NM)를 구매정보shop.dt에 결합
shop.dt <- left_join(shop.dt, pd.dt[,c(1,2,5,6)], by = c("BIZ_UNIT","PD_S_C") )


head(shop.dt)
summary(shop.dt$PD_C_NM)
# shop.dt[shop.dt$PD_C_NM != "식품",] %>%
#   ggplot(aes(PD_C_NM, fill = PD_C_NM)) +
#   geom_bar() +
#   geom_density(alpha=.5)

# shop.dt <- as.data.table(shop.dt)
# 
# subset(shop.dt,PD_C_NM == "패션") %>%
#   ggplot(aes(PD_H_NM, fill=PD_H_NM)) +
#   geom_bar() +
#   geom_density(alpha=.5)
# subset(shop.dt,PD_C_NM == "생활용품") %>%
#   ggplot(aes(PD_H_NM, fill=PD_H_NM)) +
#   geom_bar() +
#   geom_density(alpha=.5)

shop.dt <- as.data.table(shop.dt)

# 업종별 이용건수(방문날짜)
# freq_a01 <- shop.dt[BIZ_UNIT == "A01", list(count = .N), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_a01 <- shop.dt[BIZ_UNIT == "A01", list(count = .N), by = "ID,DE_DT"]
freq_a01 <- freq_a01[, list(freq_a01 = .N), by = ID]
freq_a02 <- shop.dt[BIZ_UNIT == "A02", list(count = .N), by = "ID,DE_DT"]
freq_a02 <- freq_a02[, list(freq_a02 = .N), by = ID]
freq_a03 <- shop.dt[BIZ_UNIT == "A03", list(count = .N), by = "ID,DE_DT"]
freq_a03 <- freq_a03[, list(freq_a03 = .N), by = ID]
freq_a04 <- shop.dt[BIZ_UNIT == "A04", list(count = .N), by = "ID,DE_DT"]
freq_a04 <- freq_a04[, list(freq_a04 = .N), by = ID]
freq_a05 <- shop.dt[BIZ_UNIT == "A05", list(count = .N), by = "ID,DE_DT"]
freq_a05 <- freq_a05[, list(freq_a05 = .N), by = ID]

# 방문빈도, 업종별 소비금액

freq_b01 <- using.dt[BIZ_UNIT == "B01", list(freq_b01 = sum(U_CT)), by = ID]
freq_b02 <- using.dt[BIZ_UNIT == "B02", list(freq_b02 = sum(U_CT)), by = ID]
freq_b03 <- using.dt[BIZ_UNIT == "B03", list(freq_b03 = sum(U_CT)), by = ID]
freq_c01 <- using.dt[BIZ_UNIT == "C01", list(freq_c01 = sum(U_CT)), by = ID]
freq_c02 <- using.dt[BIZ_UNIT == "C02", list(freq_c02 = sum(U_CT)), by = ID]
freq_c03 <- using.dt[BIZ_UNIT == "C03", list(freq_c03 = sum(U_CT)), by = ID]
freq_d01 <- using.dt[BIZ_UNIT == "D01", list(freq_d01 = sum(U_CT)), by = ID]
freq_d02 <- using.dt[BIZ_UNIT == "D02", list(freq_d02 = sum(U_CT)), by = ID]
freq_d03 <- using.dt[BIZ_UNIT == "D03", list(freq_d03 = sum(U_CT)), by = ID]

# 카테고리별 구매 빈도수 
## 쇼핑업종 상품별 구매 빈도수와 총 소비금액
# 패션 fasion / 건강,헬스 health / 뷰티 beauty / 잡화 etc / 식품 food / 스포츠 sport / 유아용품 child     
# 생활용품 daily / 가전 home_ele / 간편식 meal / 과일 fruit / 주류 alcohol / 서적 book / 애완원예용품 pet
# 인테리어 interior / FOOD COURT foodcourt / 테넌트 tennant / 아웃도어 outdoor
freq_fashion <- shop.dt[PD_C_NM == "패션", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_fashion <- freq_fashion[, list(freq_fashion = .N, spend_fashion = sum(spend)), by = ID]

freq_health <- shop.dt[PD_C_NM == "건강,헬스", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_health <- freq_health[, list(freq_health = .N, spend_health = sum(spend)), by = ID]

freq_beauty <- shop.dt[PD_C_NM == "뷰티", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_beauty <- freq_beauty[, list(freq_beauty = .N, spend_beauty = sum(spend)), by = ID]

freq_etc <- shop.dt[PD_C_NM == "잡화", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_etc <- freq_etc[, list(freq_etc = .N, spend_etc = sum(spend)), by = ID]

freq_food <- shop.dt[PD_C_NM == "식품", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_food <- freq_food[, list(freq_food = .N, spend_food = sum(spend)), by = ID]

freq_sport <- shop.dt[PD_C_NM == "스포츠", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_sport <- freq_sport[, list(freq_sport = .N, spend_sport = sum(spend)), by = ID]

freq_child <- shop.dt[PD_C_NM == "유아용품", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_child <- freq_child[, list(freq_child = .N, spend_child = sum(spend)), by = ID]

freq_daily <- shop.dt[PD_C_NM == "생활용품", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_daily <- freq_daily[, list(freq_daily = .N, spend_daily = sum(spend)), by = ID]

freq_home_ele <- shop.dt[PD_C_NM == "가전", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_home_ele <- freq_home_ele[, list(freq_home_ele = .N, spend_home_ele = sum(spend)), by = ID]

freq_meal <- shop.dt[PD_C_NM == "간편식", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_meal <- freq_meal[, list(freq_meal = .N, spend_meal = sum(spend)), by = ID]

freq_fruit <- shop.dt[PD_C_NM == "과일", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_fruit <- freq_fruit[, list(freq_fruit = .N, spend_fruit = sum(spend)), by = ID]

freq_alcohol <- shop.dt[PD_C_NM == "주류", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_alcohol <- freq_alcohol[, list(freq_alcohol = .N, spend_alcohol = sum(spend)), by = ID]

freq_book <- shop.dt[PD_C_NM == "서적", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_book <- freq_book[, list(freq_book = .N, spend_book = sum(spend)), by = ID]

freq_pet <- shop.dt[PD_C_NM == "애완원예용품", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_pet <- freq_pet[, list(freq_pet = .N, spend_pet = sum(spend)), by = ID]

freq_interior <- shop.dt[PD_C_NM == "인테리어", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_interior <- freq_interior[, list(freq_interior = .N, spend_interior = sum(spend)), by = ID]

freq_foodcourt <- shop.dt[PD_C_NM == "FOOD COURT", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_foodcourt <- freq_foodcourt[, list(freq_foodcourt = .N, spend_foodcourt = sum(spend)), by = ID]

freq_tennant <- shop.dt[PD_C_NM == "테넌트", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_tennant <- freq_tennant[, list(freq_tennant = .N, spend_tennant = sum(spend)), by = ID]

freq_outdoor <- shop.dt[PD_C_NM == "아웃도어", list(count = .N, spend = sum(BUY_AM)), by = "ID,RCT_NO,BR_C,DE_DT,DE_HR"]
freq_outdoor <- freq_outdoor[, list(freq_outdoor = .N, spend_outdoor = sum(spend)), by = ID]

## merge all
# head(demo.dt)
# head(freq_a01)
# demo.dt <- as.data.table(demo.dt)
# freq_a01 <- as.data.table(freq_a01)
# setkey(freq_a01, ID)
# merge(demo.dt, freq_a01, all.x=TRUE)

setkey(demo.dt, ID)

merge_func <- function(table) {
  setkey(table, ID)
  demo.dt <- merge(demo.dt, table, all.x=TRUE)
  return(demo.dt)
}
demo.dt <- merge_func(freq_a01)
demo.dt <- merge_func(freq_a02)
demo.dt <- merge_func(freq_a03)
demo.dt <- merge_func(freq_a04)
demo.dt <- merge_func(freq_a05)
demo.dt <- merge_func(freq_b01)
demo.dt <- merge_func(freq_b02)
demo.dt <- merge_func(freq_b03)
demo.dt <- merge_func(freq_c01)
demo.dt <- merge_func(freq_c02)
demo.dt <- merge_func(freq_c03)
demo.dt <- merge_func(freq_d01)
demo.dt <- merge_func(freq_d02)
demo.dt <- merge_func(freq_d03)

demo.dt <- merge_func(freq_fashion)
demo.dt <- merge_func(freq_health)
demo.dt <- merge_func(freq_beauty)
demo.dt <- merge_func(freq_etc)
demo.dt <- merge_func(freq_food)
demo.dt <- merge_func(freq_sport)
demo.dt <- merge_func(freq_child)
demo.dt <- merge_func(freq_daily)
demo.dt <- merge_func(freq_home_ele)
demo.dt <- merge_func(freq_meal)
demo.dt <- merge_func(freq_fruit)
demo.dt <- merge_func(freq_alcohol)
demo.dt <- merge_func(freq_book)
demo.dt <- merge_func(freq_pet)
demo.dt <- merge_func(freq_interior)
demo.dt <- merge_func(freq_foodcourt)
demo.dt <- merge_func(freq_tennant)
demo.dt <- merge_func(freq_outdoor)

# NA값 0으로 수정
demo.dt <- data.table(sapply(demo.dt, function(x) ifelse(is.na(x),0, x)))


# head(demo.dt,10)
# dim(demo.dt)

## 총 소비금액 
# 쇼핑 업종 총 소비금액 
demo.dt[,`:=`(total_spend, spend_fashion + spend_health + spend_beauty + spend_etc + spend_food + spend_foodcourt + spend_sport + spend_child + spend_daily + spend_meal + spend_fruit + spend_alcohol + spend_pet + spend_outdoor + spend_tennant)] 

# 쇼핑 외 업종 이용 총 이용빈도
demo.dt[,`:=`(total_using_freq, freq_b01 + freq_b02 + freq_b03 + freq_c01 + freq_c02 + freq_c03 + freq_d01 + freq_d02 + freq_d03)] 

# 총 이용 빈도 
demo.dt[,`:=`(total_freq, freq_a01+freq_a02+freq_a03+freq_a04+freq_a05+freq_b01+freq_b02+freq_b03+freq_c01+freq_c02+freq_c03+freq_d01+freq_d02+freq_d03)] 

## 소비 비율 (상품별 소비금액/총 소비금액)
# divide each feature by the row total to make proportional
# 쇼핑업종 소비비율
demo.dt[,`:=`(prop_fashion, spend_fashion/total_spend)]
demo.dt[,`:=`(prop_health, spend_health/total_spend)]
demo.dt[,`:=`(prop_beauty, spend_beauty/total_spend)]
demo.dt[,`:=`(prop_etc, spend_etc/total_spend)]
demo.dt[,`:=`(prop_food, spend_food/total_spend)]
demo.dt[,`:=`(prop_foodcourt, spend_foodcourt/total_spend)]
demo.dt[,`:=`(prop_sport, spend_sport/total_spend)]
demo.dt[,`:=`(prop_child, spend_child/total_spend)]
demo.dt[,`:=`(prop_daily, spend_daily/total_spend)]
demo.dt[,`:=`(prop_meal, spend_meal/total_spend)]
demo.dt[,`:=`(prop_fruit, spend_fruit/total_spend)]
demo.dt[,`:=`(prop_alcohol, spend_alcohol/total_spend)]
demo.dt[,`:=`(prop_pet, spend_pet/total_spend)]
demo.dt[,`:=`(prop_outdoor, spend_outdoor/total_spend)]
demo.dt[,`:=`(prop_tennant, spend_tennant/total_spend)]

#쇼핑 외 업종 이용빈도 비율 
demo.dt[,`:=`(prop_b01, freq_b01/total_using_freq)]
demo.dt[,`:=`(prop_b02, freq_b02/total_using_freq)]
demo.dt[,`:=`(prop_b03, freq_b03/total_using_freq)]
demo.dt[,`:=`(prop_c01, freq_c01/total_using_freq)]
demo.dt[,`:=`(prop_c02, freq_c02/total_using_freq)]
demo.dt[,`:=`(prop_c03, freq_c03/total_using_freq)]
demo.dt[,`:=`(prop_d01, freq_d01/total_using_freq)]
demo.dt[,`:=`(prop_d02, freq_d02/total_using_freq)]
demo.dt[,`:=`(prop_d03, freq_d03/total_using_freq)]

head(demo.dt, 10)
# dim(demo.dt) # 20000    74

# 이용 건수가 3건 이하인 고객(1679건) 삭제 
Customer <- demo.dt
nrow(Customer[total_freq < 3,]) # 1679
Customer <- Customer[total_freq >= 3,] 
nrow(Customer) # 18321


# # 한번도 구매를 안한 고객(total_spend가 NA 인 고객, 1464명) 삭제
# nrow(customer[total_spend == FALSE,]) # 1464
# demo.dt <- demo.dt[total_spend != NA,]
# dim(demo.dt) # 18536    64

# # 한번도 구매를 안한 고객(total_spend가 0 인 고객, 1464명) 삭제
# nrow(Customer[total_spend == 0,]) # 1464
# Customer <- Customer[total_spend !=0,]
# dim(Customer) # 18536    64
# summary(Customer)

Customer <- data.table(sapply(Customer, function(x) ifelse(is.na(x),0, x)))

# 소비금액 변수 제거 spend_value
rm.col <- c(20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54)
Customer <- Customer[,-rm.col, with = F]
# total_freq,total_spend,total_using_freq 변수 제거 
Customer <- Customer[,-c("total_freq","total_spend","total_using_freq")]


library(corrplot)

#plot(CustomerZall$freq_a01,CustomerZall$freq_a04)
cor <- as.data.frame(Customer[,c(19,33,35,37,39)])

pairs(cor)

panel.cor <- function(x, y, digits=2, prefix="", cex.cor, ...)
{
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r <- abs(cor(x, y))
  txt <- format(c(r, 0.123456789), digits=digits)[1]
  txt <- paste(prefix, txt, sep="")
  if(missing(cex.cor)) cex.cor <- 0.8/strwidth(txt)
  text(0.5, 0.5, txt, cex = cex.cor * r)
}

# Plot #2: same as above, but add loess smoother in lower and correlation in upper
pairs(~freq_a01+freq_fashion+freq_beauty+prop_fashion+prop_beauty+prop_b03+freq_b03,data=CustomerZall,
      lower.panel=panel.smooth, upper.panel=panel.cor, 
      pch=20, main="Scatterplot Matrix")


### Todo.만들 수 있는 파생변수 
# 시간대별 소비 빈도 
# 1회 방문시 평균 사용 금액 업종별
# 연관분석과 클러스터링을 통한 파생변수 생성
# 업종별 카테고리별 구매 횟수
# 빈도수 * 비율
