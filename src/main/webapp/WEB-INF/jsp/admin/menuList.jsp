<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>관리페이지</title>
  <script type ="text/javascript">
    function showPopup(prdNo){
    	alert(prdNo);
    }
    </script>
    
</head>

<body class="animsition">
    <div class="page-wrapper">
    <%@ include file="/WEB-INF/jsp/admin/include/header.jsp" %>
        

        <!-- PAGE CONTENT-->
        <div class="page-content--bgf7">
            <!-- BREADCRUMB-->
            <section class="au-breadcrumb2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="au-breadcrumb-content">
                                <div class="au-breadcrumb-left">
                                    <ul class="list-unstyled list-inline au-breadcrumb__list">
                                        <li class="list-inline-item active">
                                            <a href="#">Admin</a>
                                        </li>
                                        <li class="list-inline-item seprate">
                                            <span>/</span>
                                        </li>
                                        <li class="list-inline-item">메뉴관리</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END BREADCRUMB-->

            <!-- WELCOME-->
            <section class="welcome p-t-10">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="title-4">메뉴관리
                            </h1>
                            <hr class="line-seprate">
                        </div>
                    </div>
                </div>
            </section>
            <!-- END WELCOME-->
            <!-- DATA TABLE-->
            <section class="p-t-20">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="title-5 m-b-35">메뉴목록</h3>
                            <div class="table-data__tool">
                                <div class="table-data__tool-left">
                                    <input type="text" placeholder="메뉴번호" class="au-btn-filter">
                                    <input type="text" placeholder="메뉴명" class="au-btn-filter">
                                </div>
                                <div class="table-data__tool-right">
                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small" data-toggle="modal" data-target="#largeModal">
                                        <i class="zmdi zmdi-plus"></i>메뉴 추가</button>
                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <i class="fa  fa-search"></i>검색</button>
                                </div>
                            </div>
                            <div class="table-responsive table-responsive-data2">
                                <table class="table table-data2">
                                    <thead>
                                        <tr>
                                            <th>메뉴번호</th>
                                            <th>메뉴명</th>
                                            <th>단가</th>
                                            <th>메뉴설명</th>
                                            <th>메뉴재고</th>
                                            <th>전시여부</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="tr-shadow" onclick='showPopup(1)'  data-toggle="modal" data-target="#largeModal">
                                            <td>2</td>
                                            <td>춘천 국물 닭갈비 떡뽁이</td>
                                            <td>2,000</td>
                                            <td class="desc">닭갈비와 떡볶이의 오묘한 조화</td>
                                            <td>100</td>
                                            <td>전시</td>
                                        </tr>
                                        <tr class="spacer"></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END DATA TABLE-->
            
            <!-- modal large -->
			<div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="largeModalLabel">메뉴등록/수정</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="card-body card-block">
                                        <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">메뉴번호</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <p class="form-control-static" id="menuNm" name="menuNm">1</p>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="menuNm" class=" form-control-label">메뉴 명</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="menuNm" name="menuNm" placeholder="메뉴 명" class="form-control">
                                                    <small class="form-text text-muted"></small>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="price" class=" form-control-label">단가</label>
                                                </div>
                                                <div class="col-3 col-md-3">
                                                    <input type="number" id="price" name="price" placeholder="단가" class="form-control">
                                                    <small class="help-block form-text"></small>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="menuDesc" class=" form-control-label">메뉴 설명</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <textarea name="menuDesc" id="menuDesc" rows="3" placeholder="메뉴 설명..." class="form-control"></textarea>
                                                    <small class="help-block form-text"></small>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="menuStock" class=" form-control-label">메뉴 재고</label>
                                                </div>
                                                <div class="col-3 col-md-3">
                                                    <input type="number" id="menuStock" name="menuStock" placeholder="재고" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="textarea-input" class=" form-control-label">전시여부</label>
                                                </div>
                                                <div class="col-12 col-md-9">
													<input type="checkbox" checked data-toggle="toggle" data-size="lg">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="file-input" class=" form-control-label">메뉴 이미지</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="file" id="file-input" name="file-input" class="form-control-file">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary">저장</button>
						</div>
					</div>
				</div>
			</div>
			<!-- end modal large -->
			
             <%@ include file="/WEB-INF/jsp/admin/include/footer.jsp" %>   
    </div>
</body>
</html>