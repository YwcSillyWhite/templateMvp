<?xml version="1.0"?>
<recipe>

    <#if isActivity>
         <instantiate from="root/src/app_package/MainActivity.java.ftl"
     		    to="${escapeXmlAttribute(srcOut)}/MainActivity.java" />

         <merge from="root/AndroidManifest.xml.ftl"
                to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <#if>

    
</recipe>
