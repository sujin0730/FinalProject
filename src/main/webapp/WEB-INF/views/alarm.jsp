<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 12. 1.      작성자명      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<title>Insert title here</title>
</head>
<body>
<script>

    let  sjSocket = new WebSocket("ws://localhost/alarm2");

    // 소케 연결시  실행
    const fSocOpen = () => {
        console.log("연결되었음");
        sjSocket.send("나 수진이당!");
    }

    // 서버에서 메세지가 왔을 때
    const fSocMsg = () => {
        console.log("서버에서 온 메세지" + event.data);
    }

    sjSocket.onopen = fSocOpen;
    sjSocket.onmessage = fSocMsg;
</script>
</body>
</html>