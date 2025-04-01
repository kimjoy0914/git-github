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



