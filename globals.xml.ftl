<?xml version="1.0"?>
<globals>
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />

     <global id="baseDir" value="${projectOut}/src/main/java"/>
     <global id="activityBind" value="Activity${frameName}Binding" />
     <global id="basePresenter" value="<#if isMvp>${presenterName}<#else>BasePresenter</#if>" />
     <global id="contractImp" value="<#if isMvp>implements ${contractName}.UiView</#if>" />
</globals>
