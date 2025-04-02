# github 인증 방식 2가지
# 1. Oauth인증 방식(제3자 인증-웹로그인)
# 2. Personal Access Token(PAT) 인증 방식 : github에서 직접 보안키 발급
# 발급한 키를 키체인(윈도우: 자격증명,맥:키체인)에 등록

# git 프로젝트 생성 방법 2가지
# 방법1. github에서 진행중인 원격 repo를 clone
# 방법2. 로컬에서부터 이미 진행중인 프로젝트를 github에 업로드
# 해당 프로젝트 위치에 .git폴더 (repo주소, 사용자 정보 등)가 생성

git init
# 원격지 주소를 생성 및 추가
git remote add origin 레포주소
# 원격지 주소 삭제
git remote remove origin
# 원격지 주소 변경
# 가령 타인 github를 clone으로 가져(.git에 타인의 gitub주소 있음)와서 작업 후에 
# 이것을 다시 내 github에 올리고 싶을 때 사용함.
git remote set-url origin 레포주소

# git 설정정보 조회
git config --list

# 타인의 레포를 clone 받는 방법 2가지
# 1. 커밋이력 그대로 가져오기
git clone 타인 레포주소
# 해당 폴더로 이동 후 github 레포 주소 변경    
git remote set-url origin 나의레포주소
# 아래 명령 처리시 상대 브랜치 이름이 master이면 main대신 master로 변경함.
git push origin main
# 질문: 왜 1번에서는 add 그리고 commit하지 않고 push를 했나?
# 푸쉬를 한다는 건 내 로컬 컴터에 저장되어 있는 커밋이력을 푸쉬하겠다는 것이다.    
# 그런데 다른 사람의 이력을 그대로 가지고 있기 때문에 내 로컬 레포안에 커밋이력이     
# 그대로 다 들어가 있다. 그래서 add, commit을 할 필요가 없다. 
# 그런데 만약 .git폴더를 삭제를 해버렸다면 이 때는 커밋이력이 하나도 없는 것이다.     
# 따라서 커밋 이력 하나는 최초의 커밋 이력은 만들어 줘야지 소스 코드를 원격 레포지토리로 
# 푸쉬할 수 있다는 것이다.    

#2. 커밋 이력 없이 레포 가져오기
git clone 타인레포주소
# 해당 폴더 안으로 이동 후 .git폴더 삭제
git init
git remote add origin 나의레포주소
git add .
git commit -m "first"
git push origin main

# 사용자 지정 방법
# 전역적 사용자(이름, email)  지정
git config --global user.name "유저네임"
git config --global user.email "유저이메일"

# 지역적 사용자 지정
git config --local user.name "유저네임"
git config --local user.email "유저이메일"

# 사용자 정보 조회
git config user.name
git config user.email
git config --list #빠져나갈 때 q를 통해 빠져나기

# 특정 파일을 git 추적 목록에서 제외시키고 싶다면 .gitignore에 파일 목록 등록
# 이미 add, commit 되어 버린 파일을 추적목록에서 제외하고 싶다면
git rm -r --cached . 
