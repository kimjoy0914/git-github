# git add .은 모든 변경(추가)사항을 staging area 이동
git add .

# git commit은 staging area의 변경사항을 확정짓고 commitID 생성
git commit -m "first commit"

# 원격 repo에 main브랜치 변경사항(commitID)을 업로드 
git push origin main

# 현재 working directory, staging area의 상태 조회
git status

# 특정 파일만 add할 경우
git add  특정 파일(위치 포함)

# local repository에 커밋이력 생성
git commit -m "메시지타이틀" -m "메시지 내용"

# vi에디터 모드에서 작성 : 첫줄에는 제목, 두번째 줄 부터는 내용
git commit

# add와 commit을 동시에
git commit -am "add와 커밋메시지 동시에"

# local repo의 commit 이력 조회
git log --oneline

# git 로그를 그래프형식으로 조회
git log --graph

# main브랜치 뿐아니라 전체 commit 이력 조회
git log --all

# 충돌 무시하고 강제 푸쉬할 때
git push origin main --force

# 특정 commit ID로 전환(소스코드를 과거의 특정 버전으로 되돌릴 때)
git checkout 커밋ID

# 다시 현재의 브랜치의 commit 되돌아 올 때
git checkout 현재 브랜치명(main)

# git pull은 원격의 변경 사항을 local로 내려  받는 것(working directory까지 반영)
# git pull = git fetch + git merge 
git pull origin 브랜치명

# 원격에 변경 사항을 local에 가져오되 병합은 하지 않은 것
git fetch origin main

# git 작업 취소
# commit 이후의 취소
git reset head~1
git reset head^

# staging area로 까지만 취소
git reset --soft head~1

# push 이후이 취소 -> commit 메시지 작성 vi화면으로 이동 -> :wq엔터
git revert 기존의커밋IDㄹ