
<%@ page import="checklist.ChecklistItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'checklistItem.label', default: 'ChecklistItem')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<%--<a href="#list-checklistItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="querylist"><g:message code="checklist.query.label"/></g:link></li>
			</ul>
		</div>
		--%><div id="list-checklistItem" class="content scaffold-list" role="main">
			<%--<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			--%><g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					    <th> Index </th>
						<th> ItemInfo </th>
						<th> itemDescription </th>
						<th> Weight </th>
						<th> Contributor </th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${checklistItemInstanceList}" status="i" var="checklistItemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					    <td> ${i}</td>
						<td><g:link action="show" id="${checklistItemInstance.id}">${fieldValue(bean: checklistItemInstance, field: "itemInfo")}</g:link></td>
						<td>${checklistItemInstance.itemDescripton}</td>
						<td>${checklistItemInstance.weight}</td>
						<td>${checklistItemInstance.contributor}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${checklistItemInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
