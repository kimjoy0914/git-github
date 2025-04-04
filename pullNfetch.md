### pull과 fetch의 차이
* pull을 하면 working directory 까지 변경 된다.
* fetch를 하면 local storage까지만 변경된다.  working directory는 변경되지 않는다.    
* 즉 변경 이력은 가져오되 merge가 일어나지 않은 것이 fetch이다 

#### 실습 시나리오
1. 웹레포에 가서 test1.txt에 새로운 한줄을 입력한다
2. 웹레포에서 커밋메시지 입력 후 커밋 처리한다
3. 로컬 레포에서 git fetch origin main 엔터 한다.
4. 3번에서 pull이 아닌 fetch를 했으므로 local repo까지만 변경된다.
5. 즉 working directory에 변경 내용이 반영되지 않는 다는 것이다.
6. 웹레포와 로컬 레포를 동기화 하려면 git merge origin/main 엔터 하거나     
git pull origin main 엔터 한다.    
7. 결론적으로 pull 안에는 fetch와 merge가 들어있는 것이다. 

#### 실습 시나리오 두번째
1. merge와 fetch를 나누어서 실습해 보기
2. git merge origin/main 엔터한다. 이 때는 로컬에 있는 origin/main과 머지이므로     
origin과 main사이에 슬래쉬를 쓴다.    
3. pull을 할 때는 origin과 main을 띄어쓰기 한다. 나는 origin에 있는 main을 pull할거야     
라는 의미로 띄어쓴다      
4. git merge origin/main 한다는 건 그 전에 git fetch origin main 했다는 것을 전제로 한다      
5. 결국 git fetch origin main했을 때 변경이력에 대해서는 알고 있고 다만 working directory에      
변경이 안된 것이므로 로컬에 있는 origin/main에 변경사항을 적용하는 명령이 merge인 것이다.      
6. origin/main은 로컬에 이미 들어와 있는 브랜치 이름인 것이다.     
* 주의 - 소스트리 사용시 auto fetch가 일어난다 