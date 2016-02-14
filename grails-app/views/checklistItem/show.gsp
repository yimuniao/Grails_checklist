
<%@ page import="checklist.ChecklistItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'checklistItem.label', default: 'ChecklistItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-checklistItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="querylist"><g:message code="checklist.query.label"/></g:link></li>
			</ul>
		</div>
		<div id="show-checklistItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list checklistItem">
			
				<li class="fieldcontain">
					<span id="cplusplus-label" class="property-label"><g:message code="checklistItem.cplusplus.label" default="Cplusplus" /></span>
					
						<span class="property-value" aria-labelledby="cplusplus-label"><g:formatBoolean boolean="${checklistItemInstance?.cplusplus}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="java-label" class="property-label"><g:message code="checklistItem.java.label" default="Java" /></span>
					
						<span class="property-value" aria-labelledby="java-label"><g:formatBoolean boolean="${checklistItemInstance?.java}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="script-label" class="property-label"><g:message code="checklistItem.script.label" default="Script" /></span>
					
						<span class="property-value" aria-labelledby="script-label"><g:formatBoolean boolean="${checklistItemInstance?.script}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="application-label" class="property-label"><g:message code="checklistItem.application.label" default="Application" /></span>
					
						<span class="property-value" aria-labelledby="application-label"><g:formatBoolean boolean="${checklistItemInstance?.application}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="qa-label" class="property-label"><g:message code="checklistItem.qa.label" default="Qa" /></span>
					
						<span class="property-value" aria-labelledby="qa-label"><g:formatBoolean boolean="${checklistItemInstance?.qa}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="others-label" class="property-label"><g:message code="checklistItem.others.label" default="Others" /></span>
					
						<span class="property-value" aria-labelledby="others-label"><g:formatBoolean boolean="${checklistItemInstance?.others}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="products-label" class="property-label"><g:message code="checklistItem.products.label" default="Products" /></span>
					
						<span class="property-value" aria-labelledby="products-label"><g:fieldValue bean="${checklistItemInstance}" field="products"/></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="subsystem-label" class="property-label"><g:message code="checklistItem.subsystem.label" default="Subsystem" /></span>
					
						<span class="property-value" aria-labelledby="subsystem-label"><g:fieldValue bean="${checklistItemInstance}" field="subsystem"/></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="itemInfo-label" class="property-label"><g:message code="checklistItem.itemInfo.label" default="Item Info" /></span>
					
						<span class="property-value" aria-labelledby="itemInfo-label"><g:fieldValue bean="${checklistItemInstance}" field="itemInfo"/></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="itemDescripton-label" class="property-label"><g:message code="checklistItem.itemDescripton.label" default="Item Descripton" /></span>
					
						<span class="property-value" aria-labelledby="itemDescripton-label"><g:fieldValue bean="${checklistItemInstance}" field="itemDescripton"/></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="weight-label" class="property-label"><g:message code="checklistItem.weight.label" default="Weight" /></span>
					
						<span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${checklistItemInstance}" field="weight"/></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="requirement-label" class="property-label"><g:message code="checklistItem.requirement.label" default="Requirement" /></span>
					
						<span class="property-value" aria-labelledby="requirement-label"><g:formatBoolean boolean="${checklistItemInstance?.requirement}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="hld-label" class="property-label"><g:message code="checklistItem.hld.label" default="Hld" /></span>
					
						<span class="property-value" aria-labelledby="hld-label"><g:formatBoolean boolean="${checklistItemInstance?.hld}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="design-label" class="property-label"><g:message code="checklistItem.design.label" default="Design" /></span>
					
						<span class="property-value" aria-labelledby="design-label"><g:formatBoolean boolean="${checklistItemInstance?.design}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="designReview-label" class="property-label"><g:message code="checklistItem.designReview.label" default="Design Review" /></span>
					
						<span class="property-value" aria-labelledby="designReview-label"><g:formatBoolean boolean="${checklistItemInstance?.designReview}" /></span>
					
				</li>
				<li class="fieldcontain">
					<span id="designInspection-label" class="property-label"><g:message code="checklistItem.designInspection.label" default="Design Inspection" /></span>
					
						<span class="property-value" aria-labelledby="designInspection-label"><g:formatBoolean boolean="${checklistItemInstance?.designInspection}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="coding-label" class="property-label"><g:message code="checklistItem.coding.label" default="Coding" /></span>
					
						<span class="property-value" aria-labelledby="coding-label"><g:formatBoolean boolean="${checklistItemInstance?.coding}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="devTest-label" class="property-label"><g:message code="checklistItem.devTest.label" default="Dev Test" /></span>
					
						<span class="property-value" aria-labelledby="devTest-label"><g:formatBoolean boolean="${checklistItemInstance?.devTest}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="testing-label" class="property-label"><g:message code="checklistItem.testing.label" default="Testing" /></span>
					
						<span class="property-value" aria-labelledby="testing-label"><g:formatBoolean boolean="${checklistItemInstance?.testing}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="demo-label" class="property-label"><g:message code="checklistItem.demo.label" default="Demo" /></span>
					
						<span class="property-value" aria-labelledby="demo-label"><g:formatBoolean boolean="${checklistItemInstance?.demo}" /></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="example-label" class="property-label"><g:message code="checklistItem.example.label" default="Example" /></span>
					
						<span class="property-value" aria-labelledby="example-label"><g:fieldValue bean="${checklistItemInstance}" field="example"/></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="contributor-label" class="property-label"><g:message code="checklistItem.contributor.label" default="Contributor" /></span>
					
						<span class="property-value" aria-labelledby="contributor-label"><g:fieldValue bean="${checklistItemInstance}" field="contributor"/></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="moreaction-label" class="property-label"><g:message code="checklistItem.moreaction.label" default="Moreaction" /></span>
					
						<span class="property-value" aria-labelledby="moreaction-label"><g:fieldValue bean="${checklistItemInstance}" field="moreaction"/></span>
					
				</li>
			
				<li class="fieldcontain">
					<span id="approved-label" class="property-label"><g:message code="checklistItem.approved.label" default="Approved" /></span>
					
						<span class="property-value" aria-labelledby="approved-label"><g:formatBoolean boolean="${checklistItemInstance?.approved}" /></span>
					
				</li>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${checklistItemInstance?.id}" />
					<g:link class="edit" action="edit" id="${checklistItemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
