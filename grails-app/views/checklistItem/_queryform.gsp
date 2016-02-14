<%@ page import="checklist.ChecklistItem" %>

<div class="fieldcontain  ">
	<label for="cplusplus">
		<g:message code="checklistItem.cplusplus.label" default="Cplusplus" />
		
	</label>
	<g:checkBox name="cplusplus" value="${checklistItemInstance?.cplusplus}" />
</div>

<div class="fieldcontain  ">
	<label for="java">
		<g:message code="checklistItem.java.label" default="Java" />
		
	</label>
	<g:checkBox name="java" value="${checklistItemInstance?.java}" />
</div>

<!-- 
<div class="fieldcontain   ">
	<label for="script">
		<g:message code="checklistItem.script.label" default="Script" />
		
	</label>
	<g:checkBox name="script" value="${checklistItemInstance?.script}" />
</div>

<div class="fieldcontain   ">
	<label for="application">
		<g:message code="checklistItem.application.label" default="Application" />
		
	</label>
	<g:checkBox name="application" value="${checklistItemInstance?.application}" />
</div>

<div class="fieldcontain ">
	<label for="qa">
		<g:message code="checklistItem.qa.label" default="Qa" />
		
	</label>
	<g:checkBox name="qa" value="${checklistItemInstance?.qa}" />
</div>

<div class="fieldcontain   ">
	<label for="others">
		<g:message code="checklistItem.others.label" default="Others" />
		
	</label>
	<g:checkBox name="others" value="${checklistItemInstance?.others}" />
</div>

<div class="fieldcontain   ">
	<label for="products">
		<g:message code="checklistItem.products.label" default="Products" />
		
	</label>
	<g:select name="products" from="${checklistItemInstance.constraints.products.inList}" value="${checklistItemInstance?.products}" valueMessagePrefix="checklistItem.products" noSelection="['': '']"/>
</div>

<div class="fieldcontain  ">
	<label for="subsystem">
		<g:message code="checklistItem.subsystem.label" default="Subsystem" />
		
	</label>
	<g:select name="subsystem" from="${checklistItemInstance.constraints.subsystem.inList}" value="${checklistItemInstance?.subsystem}" valueMessagePrefix="checklistItem.subsystem" noSelection="['': '']"/>
</div>

<div class="fieldcontain ">
	<label for="weight">
		<g:message code="checklistItem.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="weight" min="1" max="3" required="" value="${fieldValue(bean: checklistItemInstance, field: 'weight')}"/>
</div>

<div class="fieldcontain ">
	<label for="requirement">
		<g:message code="checklistItem.requirement.label" default="Requirement" />
		
	</label>
	<g:checkBox name="requirement" value="${checklistItemInstance?.requirement}" />
</div>

<div class="fieldcontain ">
	<label for="hld">
		<g:message code="checklistItem.hld.label" default="Hld" />
		
	</label>
	<g:checkBox name="hld" value="${checklistItemInstance?.hld}" />
</div>

<div class="fieldcontain ">
	<label for="design">
		<g:message code="checklistItem.design.label" default="Design" />
		
	</label>
	<g:checkBox name="design" value="${checklistItemInstance?.design}" />
</div>

<div class="fieldcontain ">
	<label for="designReview">
		<g:message code="checklistItem.designReview.label" default="Design Review" />
		
	</label>
	<g:checkBox name="designReview" value="${checklistItemInstance?.designReview}" />
</div>

<div class="fieldcontain ">
	<label for="designInspection">
		<g:message code="checklistItem.designInspection.label" default="Design Inspection" />
		
	</label>
	<g:checkBox name="designInspection" value="${checklistItemInstance?.designInspection}" />
</div>

<div class="fieldcontain ">
	<label for="coding">
		<g:message code="checklistItem.coding.label" default="Coding" />
		
	</label>
	<g:checkBox name="coding" value="${checklistItemInstance?.coding}" />
</div>

<div class="fieldcontain ">
	<label for="devTest">
		<g:message code="checklistItem.devTest.label" default="Dev Test" />
		
	</label>
	<g:checkBox name="devTest" value="${checklistItemInstance?.devTest}" />
</div>

<div class="fieldcontain ">
	<label for="testing">
		<g:message code="checklistItem.testing.label" default="Testing" />
		
	</label>
	<g:checkBox name="testing" value="${checklistItemInstance?.testing}" />
</div>

<div class="fieldcontain ">
	<label for="demo">
		<g:message code="checklistItem.demo.label" default="Demo" />
		
	</label>
	<g:checkBox name="demo" value="${checklistItemInstance?.demo}" />
</div>

<div class="fieldcontain ">
	<label for="contributor">
		<g:message code="checklistItem.contributor.label" default="Contributor" />
		
	</label>
	
	<g:textField name="contributor" value="${checklistItemInstance?.contributor} "/>
</div>

<g:if test="${session?.user?.admin}">
<div class="fieldcontain  ">
	<label for="approved">
		<g:message code="checklistItem.approved.label" default="Approved" />
	</label>	
    <g:checkBox name="approved" value="${checklistItemInstance?.approved}" />	
</div>
</g:if>
-->


