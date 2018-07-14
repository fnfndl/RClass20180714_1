##  문자열에서 필요한 값 추출하기
# substr("문자열", 시작인덱스, 끝인덱스) 인덱스 시작은 1
# 아래 - 부분도 한자리로 인식함
stu <- "800101-1"
sub <- substr(stu, 8,8)
sub
# 실행하면 1이 찍힘
# 이것을 통해서 주민번호를 통한 성별 추출이 가능함
# 1, 3 남자  2, 4 여자 5, 6 은 외국인...그외는 잘못된 값
# 문제
# 위 문법을 이용해서 주민번호를 입력하면
# 남, 여, 외 이렇게 출력되는 객체(함수)를 완성하시오


#function_name <- function(arg_1, arg_2, ...) {
#  Function body
#}

#genderchecker<-function(x){
#  return(남)}

#switch 구문
genderchecker<- function(X){
    return(switch(substr(X,1,1),
             "1"="남",
             "3"="남",
             "2"="여",
             "4"="여",
             "5"="외",
             "6"="외",
             "error"))}
genderchecker(1889717)

#if-else 구문
genderchecker<- function(X){
  b<-substr(X,1,1)
  return(
    if(b=="1"||b=="3")"남" else
      if(b=="2"|b="4")"여" else
"외")}
genderchecker(2889717)

