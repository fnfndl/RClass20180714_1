#for loop_비슷한 문장 반복
print(paste("this year is",2010))
print(paste("this year is",2011))
print(paste("this year is",2012))
print(paste("this year is",2013))
print(paste("this year is",2014))

#위의 명령문을 모두 칠 필요 없이 한번에 값을 실행 가능
for(x in c(2010:2018)){
  print(paste("this year is",x))
}

#위에서 c()를 생략해도 가능
for(x in 2010:2018){
  print(paste("this year is",x))
}

# 예제- 1부터 10까지 출
for(x in 1:10){
  print(x)
}

# 1~10까지의 합(loop의 바깥쪽에서 초기값 x를 상정하면 결과값으로 리턴함)
x <-0
for(y in 1:10){
  x=x+y
}
x

#1~10까지 짝수의 합 (x를 2로 나누었을 때 나머지가 0이면 x는 짝수) 
x<-0
for(y in 1:10){
  if(y %% 2==0)x=x+y
}
x
#벡터에 한 가지 이상의 data type을 넣었을 시, 자동으로 문자로 변환해 보여준다
x <- c("홍길동",175.6,5000,T)
x
lst <- list("홍길동",175.6,5000,T)

#벡터는 중괄호를 하나[]만 가져오지만, 리스트는 중괄호 두개[[]]를 가져온다 (벡터 안에 벡터가 있다는 뜻)
lst[[1]]
lst <- list(name="홍길동",height=176.6, Sal=5000,employee=T)
lst$name
#여기서 name/height/sal/satatus는 Attribute,홍길동/176.6/5000/T 등은 로우데이터
#메타데이터(meta data): 데이터의 데이터 (List에서의 애트리뷰트와 동일한 의미)
#애트리뷰트는 코딩 시 ""나 ''가 없음
# "$"는 리스트 안에 들어있는 애트리뷰트에 접근하는 기호



