<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Insert title here</title>
                <link
                      href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700, 900|Vollkorn:400i"
                      rel="stylesheet">
                <link rel="stylesheet" href="resources/fonts/icomoon/style.css">
                <link rel="stylesheet" href="resources/css/bootstrap.min.css">
                <link rel="stylesheet" href="resources/css/jquery-ui.css">
                <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
                <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
                <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
                <link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">
                <link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
                <link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">
                <link rel="stylesheet" href="resources/css/aos.css">
                <link rel="stylesheet" href="resources/css/style.css">
                <style>
                    *{ font-family: 'Gamja Flower' !important;}
                    ::placeholder{font-family: 'Gamja Flower'}
                    /*점보트론 이미지*/
                    .jumbotron{
                        background-color: white;
                    }
                    .jumbotron>img{
                        width: 100%;
                        max-height: 600px;
                    }
                    /*왼쪽 메뉴 */
                    .menu-box{width: 150px; height: 100px; color: #754F44;  font-family: 'Gamja Flower', cursive; font-size: 22px; margin-top: 50px;}
                    .menu-box>div{height: 35px;}
                    .menu-box>div:first-child{font-weight: bold; border-bottom: 1px solid #754F44; line-height: 33px; color:#B45F04; font-size:40px;}
                    .menu-box>div:not(.s-menu):hover{background-color: #FBFFB950;}
                    .menu-row{text-align: -webkit-center;}
                    a[name="s-menu"]{color: #754F44; text-decoration-line: none;}
                    a[name="s-menu"]:hover{color: #754F44; text-decoration-line: none; font-weight:bold;}
                    /*~왼쪽 메뉴 */
                    .write-btn{background-color: #EC7357; border: none; font-size: 20px; color:white; border-radius: 5px;}
                    .write-btn:hover{font-weight: bold; background-color: #f7613e;}
                </style>

            </head>
            <body data-spy="scroll" data-target=".site-navbar-target"
                  data-offset="300" id="home-section">
                <jsp:include page="/WEB-INF/views/module/menu.jsp" ></jsp:include>
                <!-- -----여기까지 고정 Header입니다----------------------------------------------------------------------------------------------------------- -->
                <div class="jumbotron px-0 pb-0">
                    <img src="/mypage/dog_1.jpg">
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-md-3 col-sm-12 col-12 menu-row">
                            <div class="row menu-box">
                                <div class="col-12 s-menu">M E N U</div>
                                <div class="col-12 "><a name="s-menu" href="toReviewList">재회 후기</a></div>
                            </div>
                        </div>
                        <div class="col-1"></div>
                        <div class="col-lg-9 col-md-8 col-sm-12 col-12 reply_wrapper">
                            <div class="row">
                                <div class="col-12 text-center">
                                    <h1>재회 후기</h1>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-5">
                                    <img class="w-100" src="review/${reviewDTO.image_path1 }">
                                </div>
                                <div class="col-7">
                                    <div class="d-flex justify-content-between"><span class="w-20">작성자 : ${reviewDTO.writer }</span><span>${reviewDTO.formed_date }</span></div>
                                    <div class="d-flex justify-content-between"><div class="w-80">제목 : ${reviewDTO.title }</div><div class="w-20">조회수 : ${reviewDTO.view_count }</div></div>
                                    <div><span>${reviewDTO.contents }</span></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <form class="text-right" action="deleteReview" method="post" onsubmit="return deleteCheck();">
                                        <c:if test="${id == reviewDTO.writer }">
	                                        <input type="button" class="btn btn-outline-warning rounded" value="수정">
	                                        <input type="hidden" value="${reviewDTO.seq }" name="seq">
	                                        <input type="submit" class="btn btn-outline-warning rounded" value="삭제">
                                        </c:if>
                                        <input type="hidden" value="${currentPage }" name="currentPage">
                                        <input id="toList" type="button" class="btn btn-outline-warning rounded" value="목록">
                                   </form>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group my-3">
                                        <input type="text" class="form-control" placeholder="댓글달기!" aria-describedby="review_reply_btn" id="review_reply_input">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary rounded py-0" type="button" id="review_reply_btn">댓글등록</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row reply_part">
                                <!-- 댓글 목록 보여주기 -->
                                <c:forEach var="list" items="${replyList }">
                                    <div class="col-12 border-bottom mb-1">
                                        <div class="d-flex justify-content-between">
                                        	<div class="font-weight-bold">${list.writer }</div>
                                        	<c:if test="${id==list.writer }">
                                        		<div>
                                        			<a role="btn" class="btn btn-outline-warning rounded p-1" href="javascript:void(0)" onclick="modifyReply(this);">수정</a>
                                        			<a role="btn" class="btn btn-outline-warning rounded p-1" href="javascript:void(0)" onclick="">삭제</a>
                                        		</div>
                                        	</c:if>
                                        </div>
                                        <div class=""><input class="reply_contents" type="text" readonly value="${list.contents }"></div>
                                        <div class="d-flex justify-content-between">
                                        	<span>${list.formed_date }</span>
                                        	<span class="likeOk_check" value="${list.likeOk}" seq="${list.seq }" writer="${list.writer }">
                                        		<span class="mr-2 reply_likes">${list.likes }</span>
                                        		<a class="click_like_btn likeOk_n" href="javascript:void(0)" onclick="clickLikeImg(this);"><img src="review/like_1.png" style="width:25px;"></a>
                                        		<a class="click_like_btn likeOk_y" href="javascript:void(0)" onclick="clickLikeImg(this);"><img src="review/like_2.png" style="width:25px;"></a>
                                        	</span>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="row reply_part">
                                <c:if test="${reply_navi.size()!=0 }">
                                    <div class="col-12">
                                        <ul class="pagination justify-content-center">
                                            <c:forEach var="navi" items="${reply_navi }">
                                                <li class="page-item reply_item" value="${navi }">
                                                   	<a class="page-link text-decoration-none reply_navi" href="#toList" onclick="clickReplyNavi(this);">${navi }</a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ----Footer부분입니다^_^---------------------------------------------------------------------------------------------------------- -->
                <jsp:include page="/WEB-INF/views/module/footer.jsp" ></jsp:include>
            </body>
            <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
            <script src="resources/js/jquery-ui.js"></script>
            <script src="resources/js/popper.min.js"></script>
            <script src="resources/js/bootstrap.min.js"></script>
            <script src="resources/js/owl.carousel.min.js"></script>
            <script src="resources/js/jquery.countdown.min.js"></script>
            <script src="resources/js/jquery.easing.1.3.js"></script>
            <script src="resources/js/aos.js"></script>
            <script src="resources/js/jquery.fancybox.min.js"></script>
            <script src="resources/js/jquery.sticky.js"></script>
            <script src="resources/js/isotope.pkgd.min.js"></script>
            <script src="resources/js/main.js"></script>
            <script>
                if(${id==null}){//아직 로그인을 하지 않았다면,
                    $("#review_reply_input").attr("placeholder","댓글을 달고 싶다면 , 로그인을 먼저 해주세요");
                    $("#review_reply_input").prop("readonly",true);
                }
                $("#review_reply_input").keyup(function(e) {
                    if (e.keyCode == 13) {
                    	$("#review_reply_btn").trigger("click");
                    }     
                });
                $("#review_reply_btn").on("click",function(){//댓글등록
                    if(${id==null}){//아직 로그인을 하지 않았다면,
                        alert("로그인을 먼저 해주세요.");
                        $(".login-btn").trigger("click");
                        return;
                    }
                    var reply = $("#review_reply_input").val();
                    if(reply==""){
                        alert("댓글을 입력해주세요.");
                        $("#review_reply_input").focus();
                        return;
                    }
                    //ajax로 table에 insert하기.
                    $.ajax({
                        url : "insertReviewComment",
                        type : "post",
                        data : {
                            review_seq : "${reviewDTO.seq}",
                            writer : "${id}",
                            contents : reply
                        }
                    }).done(function(resp){
                        //console.log("댓글달기성공->"+resp);
                        $(".reply_part").remove();
                        $(".reply_wrapper").append(resp);
                        likeOkCheck();//좋아요 클릭한것만 빨강하트
                        $("#review_reply_input").val("");
                    })
                });
                //좋아요클릭했을때,
                function clickLikeImg(param){
                	var id = "${id}";
                	var writer = $(param).parents(".likeOk_check").attr("writer");
                	if(${id==null}){//아직 로그인을 하지 않았다면,
                		alert("좋아요 기능은 로그인 한 사람만 가능합니다.");
                		return false;
                	}
                	else if(id==writer){
                		alert("본인의 댓글에 '좋아요'를 누를수 없습니다.");
                		return false;
                	}
                	
                	// insert 누른사람 / 몇번seq의 댓글에 좋아요누른건지(리뷰코멘트라이크 테이블) //// 몇번seq의 댓글의  dto의 좋아요 수 update (리뷰코멘트)
                	var reply_seq = $(param).parents(".likeOk_check").attr("seq");
                	if($(param).hasClass("likeOk_y") == true){ //만약 해당댓글에 이미 좋아요를 눌렀다면, 좋아요 취소
                		$.ajax({
							url : "reviewCommentsLikeCancel",
							type : "post",
							data : {
								id : id,
								r_comments_seq : reply_seq
							}
						}).done(function(resp){
							if(resp==2){//트랜잭션처리 2
								var like = $(param).siblings(".reply_likes");
								$(like).text(parseInt($(like).text())-1);
							}
						});
                	}else{	//만약 해당댓글에 좋아요를 누르지 않았다면, like+1 && like 테이블 insert  
						$.ajax({
							url : "reviewCommentsLikeClick",
							type : "post",
							data : {
								id : id,
								r_comments_seq : reply_seq
							}
						}).done(function(resp){
							if(resp==2){
								var like = $(param).siblings(".reply_likes");
								$(like).text(parseInt($(like).text())+1);
							}
						});
                	}
                	$(param).toggle();
                	$(param).siblings(".click_like_btn").toggle();
                }
                function likeOkCheck (){
                	$(".likeOk_check").each(function(i,item){
                    	if($(item).attr("value")!=""){//좋아요를 누른상태
                    		$(item).children(".likeOk_n").hide();
                    	}else{
                    		$(item).children(".likeOk_y").hide();
                    	}
                    });
                }
                likeOkCheck();
                function clickReplyNavi(param){//댓글 navi 클릭했을때,
                	var currentPage = $(param).text();
                	if(currentPage=="<이전"){
                		var prev =  $(param).parent().next().attr("value");
                		currentPage = parseInt(prev) - 1 ;
                	}else if(currentPage=="다음>"){
                		var next  = $(param).parent().prev().attr("value");
                		currentPage = parseInt(next) + 1 ;
                	}
                	$.ajax({
                        url : "clickReplyNavi",
                        type : "post",
                        data : {
                            seqStr : "${reviewDTO.seq}",
                            currentPageStr : currentPage
                        }
                    }).done(function(resp){
                        $(".reply_part").remove();
                        $(".reply_wrapper").append(resp);
                        likeOkCheck();//좋아요 클릭한것만 빨강하트
                    })
                }
                //삭제버튼눌렀을때,
                function deleteCheck(){
                	if(!confirm("글을 삭제하시겠습니까?")){
                		return false;
                	}
                };
              //목록으로 돌아가기
                $("#toList").on("click",function(){
                	var form = $(this).parent();
                	$(form).attr("action","toReviewList");
                	$(form).attr("onsubmit",false);
                	$(form).submit();
                });
              //댓글수정
               function modifyReply(param){
            	  
              };
            </script>
        </html>