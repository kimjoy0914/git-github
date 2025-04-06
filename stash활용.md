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

#### git stash stack구조확인 실습 - stack은 후입선출구조임
1. 로컬 레포에서 test1.txt에 수정사항 발생시킴.    
2. git stash
3. 1. 로컬 레포에서 test1.txt에 수정사항 발생시킴.  
4. git stash
5. 1. 로컬 레포에서 test1.txt에 수정사항 발생시킴.  
6. git stash
7. git stash list
8. git stash show -p 0 엔터 -> 0번째에 저장된 내용확인가능
9. git stash pop 하면 가장 마지막에 저장했던 내용이 working directory에 나타남.
10. 9번에서 만일 1번 또는 2번을 적용하고 싶을 때는 git stash apply 1 또는 2
또는 3 으로 원하는 번호를 정해서 적용이 가능하다 
이때 apply와 pop의 차이점은 pop은 없어지는데 반해 apply는 반영되고 없어지지 않음.
11. 만일 지금까지 저장한 사항을 지우려면 git stash clear 한다 