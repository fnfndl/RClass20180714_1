#엑셀 파일 불러오기
#엑셀 파일 불러오기 기능을 제공하는 패키지 "readxl"을 설치하고 실행함
install.packages("readxl")
library(readxl)
# 불러올 파일 위치/명을 입력함 (슬래시 하나(/)대신 역슬래시 두개(\\)를 쳐도 됨)
df_exam <-read_excel("C:/Users/Administrator/Desktop/excel_exam.xlsx")
#출력
df_exam
#특정 과목의 평균 구하기
mean(df_exam$english)
mean(df_exam$math)

#애트리뷰트 명이 없는 파일 불러오기 (col_name=F 파라미터 활용)
df_exam_1 <-read_excel("C:\\R\\Project180714\\excel_exam_novar.xlsx")
df_exam_1
#위의 방법대로 했을 시, 제일 처음 행의 데이터 속성값으로 전환되어 데이터가 왜곡됨
df_exam_1 <-read_excel("C:\\R\\Project180714\\excel_exam_novar.xlsx",col_names=F)
df_exam_1
#위의 방법대로 했을 시, 애트리뷰트 명이 "X_숫자"형태로 지정되고 제일 처음 행의 데이터가 사라지지 않음

