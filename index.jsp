<!-- 
Licensed under LGPLv3
Created by Backsun Sim
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="jquery-1.11.2.min.js"></script>
<title>PasteYourDownload - Paste your URL to create a download link</title>
<script type='text/javascript'>
	$(function() {
		$("#dnLink").click(function(event)
		{
			var tagData = '';
			tagData += "<a href=\"" 
			tagData += $("#urlArea").val();
			tagData += "\">Download Link(Save As)</a>"
			$("#outputArea").html(tagData);
		});
		
		$('#dnBrowser').click(function(event){
		    var location = $("#urlArea").val();
		    top.location.href = location;
		});
	});
</script>
<style type="text/css">
.uLine {
    text-decoration: underline;
}

/* Support for mobile-devices plan */
@media screen 
  and (device-width: 320px) 
  and (device-height: 640px) 
  and (-webkit-device-pixel-ratio: 3) {/* TBD */}
</style>
</head>
<body>
	<div id="logoArea">
		<img style="cursor:pointer;" title="PasteYourDownload" onclick="location.reload()" src="pastelogo.png">
	</div>
	<div id="mainArea">
		<h3>PasteYourDownload is a free online service that converts your URL into a hyperlink.</h3>
		<div><b>Note:</b></div>1. In order to create a link you must specify the protocol at the beginning of the link, such as <span class="uLine">http://</span>, <span class="uLine">https://</span>, <span class="uLine">ftp://</span> etc.)<br/>
		2. If the website you are trying to download a file from does not allow leeching(by checking referrer or cookies etc.), downloading attempt from this site may not work.<br/>
		 
		<br/>
		URL:&nbsp;<input type="text" id="urlArea" size="100">
		<button id="dnLink">Create Download Link</button>
		<button id="dnBrowser">Start Download</button>
	</div>
	<div id="outputArea"></div>
	<br/>
	<img src="lgplv3.png" style="cursor:pointer;" title="GNU Lesser General Public License version 3" onclick="window.open('https://www.gnu.org/licenses/lgpl.html')"><br/>
	Created by Backsun Sim, licensed under <a title="GNU Lesser General Public License version 3" href="https://www.gnu.org/licenses/lgpl.html">LGPLv3</a>. You may get complete source <a href="https://github.com/thehighestend/pasteyourdownload">here</a>.
</body>
</html>