### git tag
* main 브랜치에서 tag붙여 버전을 명시
* 일반적으로 release(특정 버전의 소프트웨어를 배포하거나 배포 준비가 완료된 상태)를 하고자     
할 때 tag 사용     
* 관련 명령어 
    - git tag 버전명(v1.0)
        - 마지막 커밋을 대상으로 tag설정
        - github 레포지토리 선택시 화면 오른쪽에 Releases 목록에 tag내용이 추가될 것임.  
        - 실습순서
            - git tag v1.0
            - git log로 확인
            - git push origin v1.0
    - git tag -a v1.0 -m "메시지"
        - tag에 메시지 기록
    - git push origin 버전명(v1.0)
        - 소스 코드 변경사항에 대한 commit, push와는 상관없이 별개로 진행
    - git tag
        - 태그 목록 조회
* github에 checkout된 branch기준으로 tag별 release가 생성되고, release에는 source코드가    
압축 파일로 생성     