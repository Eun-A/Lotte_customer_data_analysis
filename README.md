# Lotte_customer_data_analysis
제 4회 L.POINT BigData Competition "Be the L.BA"
> 고객의 니즈와 취향에 맞는 맞춤형 콘텐츠 제안


- **기간** :  2017. 12. 11 ~ 2018. 1. 26

- **분석 주제** : 고객의 1년간의 상품 구매 패턴 및 이용 업종 데이터를 활용하여
   - 고객의 성향 및 라이프 스타일 파악
   - 고객의 니즈와 취향에 맞는 상품 및 서비스 등 맞춤형 콘텐츠 제안
- **팀인원** : 1명 (개인)   
- **Process.**
    1) 구매 데이터의 상품 분류 후 테이블 merge
    2) 파생변수 생성 후 Association rule 로 유용한 규칙,변수 찾기 : Rule에 들어가는 변수 중 support 많고, lift값이 1이 아닌 것
    3) Feature scaling 후 PCA 로 차원축소
    4) cluster analysis

- **데이터 설명**
  - 분석 대상 : 1년간 롯데그룹의 14개의 계열사에서 구매한 고객
  - 제공 범위 : 롯데그룹의 14개 계열사의 구매 및 이용 이력 (상세 : 데이터 목록 참고)
