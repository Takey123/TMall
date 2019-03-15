<!--竖状分类菜单右侧的推荐产品列表-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--循环遍历map中的list-->
<div style="position: relative;left:0;top: 0 ">
    <c:forEach items="${categoryList}" var="category">
        <div class="productAsideCategory" cid="${category.id}">
           <c:forEach items="${category.productsByRow}" var="productsByRow">
               <div class="row ">
                   <c:forEach items="${productsByRow}" var="product">
                       <c:if test="${!empty product.subTitle}">
                           <a href="getProductDetail.do?cid=${category.id}&pid=${product.id}">
                               <!--获取商品副标题中的相关字符串-->
                               <!--表示去该产品子标题中以空格隔开的第一个字符串-->
                           </a>
                       </c:if>
                   </c:forEach>
                   <div class="seperator"></div>
               </div>
           </c:forEach>

        </div>
    </c:forEach>
</div>


