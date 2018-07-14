# R 언어에는 객체타입 대표 6로
# Vector, List, Matrix, Array, Factor, Data Frame
# 이 있고... 이들은 Vector 가 확장합니다.
# Vector 는 다시 6개 기본타입에 따라 
# Logical(T,F), Numeric(실수), Integer(정수), 
# Complex (허수), Character (문자열), Raw (주소값)
# 로 종류가 나뉘는데 보통은 
# Logical, Numeric, Character 세가지가 쓰입니다

## 월요일 문제
# 체질량 지수(體質量指數, Body Mass Index, BMI)는 인간의 비만도를 나타내는 지수로, 
# 체중과 키의 관계로 계산된다.
# 키가 t 미터, 체중이 w 킬로그램일 때, BMI는 다음과 같다.
# (키의 단위가 센티미터가 아닌 미터임에 유의해야 한다.)
# 공식은 https://ko.wikipedia.org/wiki/%EC%B2%B4%EC%A7%88%EB%9F%89_%EC%A7%80%EC%88%98
# 가면 구할 수 있습니다.
# 이 BMI 지수를 구하는 Function 객체를 구하시오
# 이 문제는 스위치버전은 구할수 없고 if-else 버전만 가능합니다.

# '정상' 으로 나오도록 코드를 완성하시오

#고도 비만 : 35 이상
#중등도 비만 (2단계 비만) : 30 - 35
#경도 비만 (1단계 비만) : 25 - 30
#과체중 : 23 - 24.9
#정상 : 18.5 - 22.9
#저체중 : 18.5 미만

#bmi <- function(t,w){res<-"정상"return(res)}

bmi <- function(t,w){
x<-w/((t*t)/10000)
            return (if(x>=30)"고도비만"else
              if(x>=30&x<35)"중증도 비만"else
                if(x>=25&x<30)"경도 비만"else
                  if(x>=23&x<25)"과체중"else
                    if(x>=18.5&x<23)"정상"else
                      "저체중")
            }
bmi(180,70)




