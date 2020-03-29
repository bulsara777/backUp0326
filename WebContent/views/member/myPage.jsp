<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.member.model.vo.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	

 
body {
  color: #666;
  background: #f5f6f7;
}   
.jb-container {
  width: 1000px;
  height: 900px;
  margin: 0px auto;
  margin-top:30px;
  padding: 20px;
  border: none;
}
.jb-header {
  padding: 20px;
  margin-bottom: 20px;
  border: 1px solid #bcbcbc;
  height: 220px;
  border-radius: 20px;
  background: -webkit-linear-gradient(18deg, rgb(208, 207, 200), rgb(255, 255, 255));
  background: linear-gradient(18deg, rgb(208, 207, 200), rgb(255, 255, 255));
  border-bottom: 10px solid; 
}
.userTitle {
    margin-top: 30px;
    text-align: center;
	
    
}
.userTitle h1 {
	font-size:35px;
	font-weight:bold;
}
.userTitle h3 {
	font-size:25px;
	font-weight:bold;
	padding:30px;	
}
.userInfo{
    font-size: 16px;
    text-align: left;
    letter-spacing: 3px;
    word-spacing: 12px;
    width: 500px;
    margin: 0px auto;
    font-weight:bold;
	padding:6px;
	padding-left:250px;
	line-height:1.6em;
}

.btn_info{
    float: right;
    width: 200px;
    margin-top: -65px;
    margin-right: 20px;
}

.go_info {
	width: 200px;
	height: 50px;
	background-color: #ff6b1b;
	color: #fff;
	letter-spacing: -1px;
	font-size: 15px;
	padding: 0;
	text-align: left;
    padding-left: 20px;
    border-radius: 10px;
}
.go_info em {
	margin-left: 10px;
	position: absolute;
	font-size: 26px;
	transform: scale(0.5, 1);
	font-weight: 100;
	margin-top: -3px;
}



.jb-content {
  width: 500px;
  padding: 20px;
  margin-bottom: 70px;
  float: left;
  height:300px;
  margin-top:40px;
}
.jb-content h2 {
  font-size:25px;
  margin-top: -10px;
  text-align: center;
}
.jb-sidebar {
  width: 350px;
  padding: 20px;
  margin-bottom: 70px;
  float: right;
  height:300px;
  margin-top:40px;
}
.jb-sidebar h2 {
  margin-top: -10px;
  text-align: center;
  font-size:25px;  
}
.jb-sidebar h3 {
  text-align: center;
  font-size: 20px;
}
.pick {
  margin-top: 20px;
  width: 170px;
  height: 210px;
  float: left;
  cursor: pointer;
}
.pick h3 {
  margin-bottom: 30px;
}
.watched {
  margin-top: 20px;
  width: 170px;
  height: 210px;
  float: right;
  cursor: pointer;
}
.watched h3 {
  margin-bottom: 30px;
}
.rsv_picture {
  width: 240px;
  height: 270px;
  float: left;
  border: 1px solid #bcbcbc;
  margin-top:20px;

}
.rsv_detail {
  width: 240px;
  height: 240px;
  float: right;
  margin-top:20px;
  
}
.rsv_detail h3 {
  margin-top: 5px;
}
.rsv_detail p {
  letter-spacing: 2px;
  word-spacing: 4px;  
  font-weight:bold;
  text-align: left;
  line-height:1.9em
}

.go_reserve {
    width: 70px;
	height: 25px;
	background-color: #22272be1;
	color: #fff;
    border: 1px solid #bcbcbc;
    margin-left: 50%;
    font-size: 12px;
    border-radius: 7px;
    margin: 7px;
}
.jb-footer {
  clear: both;
  padding: 20px;
  text-align: center;
  margin-top:400px;
}
.btn_Question {
	width: 70px;
	height: 25px;
	background-color: #22272be1;
	color: #fff;
    border: 1px solid #bcbcbc;
    margin-left: 50%;
    font-size: 12px;
    border-radius: 7px;
    margin: 15px;
}
.question h2{
  font-size:25px;
  margin-bottom:25px;
}
.question_tb th {
  font-size:20px;
  font-weight:bold;
  padding-bottom:17px;
  padding-top:10px;
}
.question_tb td {
  font-size:15px;
}
</style>
</head>
<body>

    <%@ include file="../member/myPagebar.jsp"%>
		
	

  <div class="jb-container">
        <div class="jb-header">
            <div class="userTitle">
                <h1><%= loginUser.getName() %>님 반갑습니다!</h1>
                <h3>회원님의 현재 등급은 '<%= loginUser.getGrade() %>' 입니다</h3>
            </div>
            <div class="userInfo">
                <p> 아이디 : <%= loginUser.getId() %></p>
                <p> 이름    : <%= loginUser.getName() %></p>
                <p> 이메일 : <%= loginUser.getEmail() %></p>
                <p> 휴대폰번호 : <%= loginUser.getPhone() %></p>
            </div>
            <div class="btn_info">
                <button class="go_info" onclick="moveMyinfo();" type="button">회원정보수정 바로가기<em>&gt;</em></button>
            </div>
        </div>
        <div class="jb-content" style="text-align: center;">
          <h2>예약정보</h2>
            <div class="rsv_picture" onclick="location.href='';">
                <%-- <img src="<%=request.getContextPath()%>/?/?/<%= %>"> --%>
            </div>
            <div class="rsv_detail">
              <h3>예약정보</h3>
              <br>
              <p>영화명 : </p>
              <p>일시 : </p>
              <p>상영관 : </p>
              <p>예매번호 : </p>
              <p>인원 : </p>
              <p>좌석 : </p>
              <p>금액 : </p>
            </div>
            <button class="go_reserve" onclick="" type="button">더보기</button>
        </div>
        <div class="jb-sidebar">
          <h2>My 영화</h2>
            <div class="pick" onclick="location.href='pickMovie.do'">
              <h3>내가 찜한 영화</h3>
              <img src="<%=contextPath%>/resources/images/choice.png" style="max-width: 100%; height: 100%; alt="" />
            </div>
            <div class="watched" onclick="location.href='watchedMovie.do'">
              <h3>내가 본 영화</h3>
              <img src="<%=contextPath%>/resources/images/watched.png" style="max-width: 100%; height: 100%; alt="" />
            </div>
        </div>
        
        <div class=jb-footer>
        <div class="question">
		    <h2>1:1 문의 내역</h2>
		    <hr style="border:1px solid#878787; height: 2px !important; display: block !important;"/>
	        <table class="question_tb">
	    		<thead>
			    	<tr>
			        	<th width="650">제목</th>
			        	<th width="150">등록일</th>
			        	<th width="150">상태</th>
			    	</tr>
			    	<tr>
			        	<td width="650"><%= loginUser.getName() %></td>
			        	<td width="150"><%= loginUser.getName() %></td>
			        	<td width="150"><%= loginUser.getName() %></td>  <%-- <%= q.getReplyStatus() %> --%>
                    </tr>
	    		</thead>
	  		</table>
	    		<button class="btn_Question" onclick="" type="submit">더보기</button>
	  		</div>
  		</div>
      </div>
      <script>
          	function moveMyinfo() {
        location.href = "<%=contextPath%>/infoForm.me"
         }
      </script>
</body>
</html>