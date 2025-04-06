### backup 작업을 위해 git stash  활용 가능
* git stash는 작업중인 변경 사항을 임시로 저장하고 나중에 다시 적용할 수 있게 해주는 명령어
* git stash는 워킹 디렉토리의 변경 사항을 임시로 저장하는데 사용
* git stash list - 작업 저장 목록
* git stash show -p 인덱스 : 상세조회
* git stash pop - 가장 최근 작업목록에서 제거하면서 저장사항 적용
* git stash apply 
    - 가장 최근 작업목록에서 해당 stash 는 놔둔채 저장 사항 적용
    - git stash apply stash 인덱스 번호(0부터 시작)
    - git stash는 stack구조로서 마지막에 stash한 내역이 0번째 index에 저장
* git stash clear
    - 전체 stash 목록 지우기