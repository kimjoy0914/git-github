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

* 주의 - 소스트리 사용시 auto fetch가 일어난다 