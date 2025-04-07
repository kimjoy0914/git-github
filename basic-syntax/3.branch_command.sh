# 브랜치 생성
# 현재 checkout하고 있는 브랜치를 기준으로 브랜치 생성
git branch 브랜치명

# 해당 브랜치로 전환
git checkout 브랜치명

# 브랜치 생성과 동시에 전환
git checkout -b 브랜치

# 브랜치 목록 조회 및 현재 checkout된 나의 브랜치 조회
git branch

# 브랜치 삭제 -> 로컬브랜치만 삭제 -> 원격브랜치는 github에서 main브랜치>View all branches에서 삭제
git branch -D 브랜치명

# 모든 브랜치 이력사항까지 clone
git clone --mirror 원격레포주소

# 새로운 repo에 기존 repo 모든 브랜치 포함하여 push 할 때
git remote set-url origin 새원격레포주소
git push --mirror 