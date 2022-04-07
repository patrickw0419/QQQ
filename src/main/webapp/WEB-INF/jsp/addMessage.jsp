<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<jsp:include page="layout/default.jsp" />


<div class="container">
	<p />
	<div class="row justify-content-center">
		<div class="col-9">
			<div class="card">
				<div class="card-header">新增訊息</div>
				<div class="card-body">

					<form:form class="form" method="POST" modelAttribute="workMessages">

						<!-- form:errors  bindingResult 回傳的物件 -->
						
						<form:errors path="text" />
						
						
						
						
						<div class="input-group">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<input type="text" class="form-control" placeholder="*請輸入名字">
						</div>
						
						
						<div class="input-group">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<input type="email" class="form-control" placeholder="*請輸入信箱">
						</div>



						<div class="input-group">
						<label for="exampleDataList" class="form-label"></label>
			
						<input class="form-control" list="datalistOptions"
							id="exampleDataList" placeholder="*請輸入問題">
						<datalist id="datalistOptions">
							<option value="San Francisco">
							
							<option value="New York">
  
							<option value="Seattle">
  
							<option value="Los Angeles">
  
							<option value="Chicago">

						</datalist>
						</div>
						
						
						
						
						<div class="input-group">
									<form:textarea path="text" class="form-control"
										placeholder="*請輸入訊息"></form:textarea>
						</div>

						<input type="submit" name="submit" value="送出">
					
							</form:form>


				</div>
			</div>
		</div>
	</div>

	<div class="row justify-content-center">
		<div class="col-9">
			<div class="card">
				<div class="card-header">
					最新訊息(時間) <span><fmt:formatDate
							pattern="yyyy-MM-dd HH:mm:ss EEEE" value="${lastMessage.added}" /></span>
				</div>
				<div class="card-body">
					<c:out value="${lastMessage.text}" />



				</div>
			</div>
		</div>
	</div>


</div>