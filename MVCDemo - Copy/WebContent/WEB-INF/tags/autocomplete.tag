<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="name" type="java.lang.String" required="true" %>
<%@ attribute name="list" type="java.lang.String" required="true" %>
<%@ attribute name="data" type="java.lang.String" required="true" %>
<input list="${list}" name="${name }" autofocus="autofocus" >
<datalist id="${list}">
<%
String array[] = data.split(",");
%>
<%
for(String d : array){
%>
 <option value="<%=d %>" label="<%=d %>"/>
<%
}
%>
  <!-- <option value="Java" label="Sun Java"/>
  <option value=".NET" label="Micorsoft"/>
  <option value="ClearCase" label="IBM"/> -->
  
  
  
</datalist>
