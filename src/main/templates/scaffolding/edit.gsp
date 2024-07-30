<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="custom" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
        <asset:stylesheet src="main.css"/>
        <asset:stylesheet src="mobile.css"/>
    </head>
    <body>
        <div class="button-bar">
            <g:link class="button" action="index">
                <img src="\${resource(dir: 'images/icons/silk', file: 'application_view_list.png')}" />&nbsp;
                <warehouse:message code="default.list.label" args="[entityName]"/>
            </g:link>
            <g:link class="button" action="create">
                <img src="\${resource(dir: 'images/icons/silk', file: 'add.png')}" />&nbsp;
                <warehouse:message code="default.add.label" args="[entityName]"/>
            </g:link>
        </div>
        <div id="edit-${propertyName}" class="box content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="\${flash.message}">
                <div class="message" role="status">\${flash.message}</div>
            </g:if>
            <g:hasErrors bean="\${this.${propertyName}}">
            <ul class="errors" role="alert">
                <g:eachError bean="\${this.${propertyName}}" var="error">
                    <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="\${this.${propertyName}}" method="PUT">
                <g:hiddenField name="version" value="\${this.${propertyName}?.version}" />
                <fieldset class="form">
                    <f:all bean="${propertyName}"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save button" type="submit" value="\${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
