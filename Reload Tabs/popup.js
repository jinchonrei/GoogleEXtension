
chrome.tabs.query({}, function (tabs) {
	
	const URL_PATTERN = "/suspended.html#url=";
	
	for(var i = 0; i < tabs.length; i++)
	{
		//console.log(tabs[i]);
		var nTabID = tabs[i].id;
		var sTabUrl = tabs[i].url;
		if(sTabUrl != null)
		{
			var nPos = sTabUrl.indexOf(URL_PATTERN);
			alert(nPos);
			if(nPos >= 0)
			{
				sTabUrl = decodeURIComponent(sTabUrl.substr(nPos + URL_PATTERN.length));
			}
			
			chrome.tabs.update(nTabID, {"url": sTabUrl});
		}
	}
});
