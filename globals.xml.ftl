<?xml version="1.0"?>
<globals>
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />

     <global id="baseDir" value="${projectOut}/src/main/java"/>

     <global id="basePresenter" value="<#if isMvp>${presenterName}<#else>BasePresenter</#if>" />
     <global id="contractImp" value="<#if isMvp>implements ${contractName}.UiView</#if>" />


     <global id="activityBind" value="Activity${frameName}Binding" />
     <global id="fragmentBind" value="Fragment${frameName}Binding" />

     <global id="activityPackageName" value="${filePackageName}<#if !isFile>.activity</#if>" />
     <global id="fragmentPackageName" value="${filePackageName}<#if !isFile>.fragment</#if>" />
     <global id="presenterPackageName" value="${filePackageName}<#if !isFile>.presenter</#if>" />
     <global id="contractPackageName" value="${filePackageName}<#if !isFile>.contract</#if>" />
</globals>
