<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<jsp:include page="include/header-head.jsp"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/journal.js?version=${service.version}"></script>
	<title>Kanban: journal</title>
</head>

<body>
    <jsp:include page="include/header.jsp"/>
    <div>
        <a href="#" id="add-entry-button">Add entry</a>    
    </div>
    <c:forEach items="${kanbanJournal}" var="item">
        <div id="journal-entry-${item.id}" class="journal-entry">
            <div class="ui-widget-header" style="position: relative;">
                <span id="journal-header-${item.id}">${item.userName} wrote on ${item.dateStr}</span>
                <a href="remove-journal-entry?id=${item.id}" style="top: 2px; right: 5px; position: absolute;">
                    <span class="ui-icon ui-icon-closethick">close</span>
                </a>
                
            </div>
            <div id="journal-text-${item.id}" class="ui-widget-content journal-text">${item.text}</div>
        </div>
    </c:forEach>

    <div id="journal-add-dialog" title="Add journal item" style="display: none;">
        <p>Entry date</p>
        <input name="journal-date" type="text" id="journal-date" value="${journal-date}"/>
        <p>Journal text:</p>
        <textarea name="journal-text" id="journal-text" rows="5" cols="30"></textarea>
        <div id="validation-error" class="error"></div>
    </div>
</body>
</html>
