# sample(1:3,1,replace = TRUE) 하면 1부터 3까지 중에서 랜덤숫자 하나를 반환합니다. 
#1:3 이 범위고, 1이 갯수, replace = TRUE 는 한번 뽑은
# 숫자를 다시 출력할지 여부인데 True를 주면 다시 뽑힐 수 있습니다. 즉 2가 랜덤으로 나왔어도 다음 회차에서 다시 2가 나올 수 있습니다.
#가위(1)바위(2)보(3) 로직
#a-b가 
#0 비김
#1 or -2 A가 이김
#-1 or 2 B가 이김

# 이를 이용해서 가위바위보 를 함수로 생성하세요.
# 예제는 아래와 같습니다.
# comVal <- sample(1:3,1,replace = TRUE) 
# myVal <- 2
# rps <- function(comVal, myVal)
# 이김 

#기본 형식
#rps<-function(a){return("이김")}
#rps(3)

#switch
rps<-function(x){
  return(switch(toString(
    sample(1:3,1,replace=TRUE)-x),
         "0"="tie",
         "1"="win",
         "-2"="win",
         "-1"="lose",
         "2"="lose",
        "error"))}
rps(2)

#if-else
rps<-function(x){com <-sample(1:3,1,replace=TRUE)
  res<-
    if(com-x==0)"Tie"else
      if(com-x==1||com-x==-2)"Win"else
        if(com-x==-1||com-x==2)"Lose"else 
          "error"
  return(res)}
rps(3)