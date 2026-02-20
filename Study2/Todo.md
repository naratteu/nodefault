php, cgi 를 지원하는 web server에 bun.js 까지 인스톨해둔 컨테이너를 구성.

tsx를 지원하는 bun을 사용하는 cgi 웹서버를 구성함으로써

.php 로 작성된 웹서버를 .tsx로 점진적 마이그레이션을 도모하는 템플릿을 제시.

현시점에서 구현된 사항: bun으로 동적html 생성

```bash
bun i
bun print.tsx ./hello.tsx
<div><div>hello 나라뚜!</div><div>hello 자스!</div><div>hello 번!</div></div>
```

고민

- cgi안쓰고 php에서 bun을 호출해 출력?
- tsx를 동적html 출력용으로 작성한다고 해서 레거시SSR서버를 웹앱으로 마이그레이션 하는데 도움이 되는가?