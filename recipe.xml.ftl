<?xml version="1.0"?>
<recipe>

    <#if isMvp>
        <instantiate from="root/src/app_package/PureContract.java.ftl"
    		 to="${escapeXmlAttribute(srcOut)}/${contractName}.java" />
    	<instantiate from="root/src/app_package/PurePresenter.java.ftl"
    		 to="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />
    </#if>

    <#if isActivity>
         <merge from="root/AndroidManifest.xml.ftl"
                 to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
         <instantiate from="root/src/app_package/PureActivity.java.ftl"
     		    to="${escapeXmlAttribute(srcOut)}/${activityName}.java" />
         <instantiate from="root/res/layout/layout_pure.xml.ftl"
                to="${escapeXmlAttribute(resOut)}/layout/${activityLayout}.xml" />                
    </#if>

    
</recipe>
