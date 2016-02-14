<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'checklistItem.label', default: 'ChecklistItem')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<a href="#create-checklistItem" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="list">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="list" action="querylist">
					<g:message code="checklist.query.label" />
				</g:link></li>
		</ul>
	</div>
	<div id="create-checklistItem" class="content scaffold-create"
		role="main">
		<g:hasErrors bean="${checklistItemInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${checklistItemInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>

		<g:form action="querymain">
			<fieldset class="form">
				<div class="fieldcontain">
					<label for="cplusplus"> <g:message
							code="checklistItem.cplusplus.label" default="Cplusplus" />

					</label>
					<g:checkBox name="cplusplus"
						value="${checklistItemInstance.cplusplus}" />

					<label for="java"> <g:message
							code="checklistItem.java.label" default="Java" />

					</label>
					<g:checkBox name="java" value="${checklistItemInstance.java}" />

					<label for="script"> <g:message
							code="checklistItem.script.label" default="Script" />
					</label>
					<g:checkBox name="script" value="${checklistItemInstance.script}" />

					<label for="application"> <g:message
							code="checklistItem.application.label" default="Application" />
					</label>
					<g:checkBox name="application"
						value="${checklistItemInstance.application}" />

					<label for="qa"> <g:message code="checklistItem.qa.label"
							default="Qa" />
					</label>
					<g:checkBox name="qa" value="${checklistItemInstance.qa}" />

					<label for="others"> <g:message
							code="checklistItem.others.label" default="Others" />
					</label>
					<g:checkBox name="others" value="${checklistItemInstance.others}" />
				</div>

				<div class="fieldcontain   "></div>

				<div class="fieldcontain  ">
					<label for="products"> <g:message
							code="checklistItem.products.label" default="Products" />
					</label>
					<g:select name="products"
						from="${checklistItemInstance.constraints.products.inList}"
						valueMessagePrefix="checklistItem.products" noSelection="['': '']"
						value="${checklistItemInstance.products}" />

					<label for="subsystem"> <g:message
							code="checklistItem.subsystem.label" default="Subsystem" />
					</label>
					<g:select name="subsystem"
						from="${checklistItemInstance.constraints.subsystem.inList}"
						valueMessagePrefix="checklistItem.subsystem"
						noSelection="['': '']" value="${checklistItemInstance.subsystem}" />
				</div>

				<div class="fieldcontain ">
					<label for="keyWord"> <g:message
							code="checklistItem.keyWord.label" default="keyWord" />
					</label>
					<g:textField name="keyWord" value="${checklistItemInstance.keyWord}" />
					<label for="weight"> <g:message
							code="checklistItem.weight.label" default="Weight" />
					</label>
					<g:field type="number" name="weight" min="1" max="3"
						value="${checklistItemInstance.weight}" />
				</div>

				<div class="fieldcontain "></div>

				<div class="fieldcontain ">
					<label for="requirement"> <g:message
							code="checklistItem.requirement.label" default="Requirement" />
					</label>
					<g:checkBox name="requirement"
						value="${checklistItemInstance.requirement}" />

					<label for="hld"> <g:message code="checklistItem.hld.label"
							default="Hld" />
					</label>
					<g:checkBox name="hld" value="${checklistItemInstance.hld}" />

					<label for="design"> <g:message
							code="checklistItem.design.label" default="Design" />
					</label>
					<g:checkBox name="design" value="${checklistItemInstance.design}" />

					<label for="designReview"> <g:message
							code="checklistItem.designReview.label" default="Design Review" />
					</label>
					<g:checkBox name="designReview"
						value="${checklistItemInstance.designReview}" />

					<label for="designInspection"> <g:message
							code="checklistItem.designInspection.label"
							default="Design Inspection" />
					</label>
					<g:checkBox name="designInspection"
						value="${checklistItemInstance.designInspection}" />
					<label for="coding"> <g:message
							code="checklistItem.coding.label" default="Coding" />
					</label>
					<g:checkBox name="coding" value="${checklistItemInstance.coding}" />
				</div>

				<div class="fieldcontain "></div>

				<div class="fieldcontain "></div>

				<div class="fieldcontain ">
					<label for="devTest"> <g:message
							code="checklistItem.devTest.label" default="Dev Test" />

					</label>
					<g:checkBox name="devTest" value="${checklistItemInstance.devTest}" />
					<label for="testing"> <g:message
							code="checklistItem.testing.label" default="Testing" />

					</label>
					<g:checkBox name="testing" value="${checklistItemInstance.testing}" />
					<label for="demo"> <g:message
							code="checklistItem.demo.label" default="Demo" />

					</label>
					<g:checkBox name="demo" value="${checklistItemInstance.demo}" />
					<label for="contributor"> <g:message
							code="checklistItem.contributor.label" default="Contributor" />

					</label>

					<g:textField name="contributor"
						value="${checklistItemInstance.contributor}" />

					<g:if test="${session?.user?.admin}">
						<label for="approved"> <g:message
								code="checklistItem.approved.label" default="Approved" />
						</label>
						<g:checkBox name="approved"
							value="${checklistItemInstance.approved}" />
					</g:if>
				</div>

				<div class="fieldcontain "></div>

			</fieldset>

			<fieldset class="buttons">
				<g:submitButton name="query" value="Query" />
			</fieldset>

		</g:form>
	</div>
</body>
</html>
