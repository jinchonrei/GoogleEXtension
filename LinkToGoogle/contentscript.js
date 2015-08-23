
chrome.tabs.query({}, function(tabs)
	{
		var Page = [];
		var Voc = [];
		var Level = [];
		var Visible = [];
		$.getJSON('https://spreadsheets.google.com/feeds/list/1VFL7BMl1NitT0C--OF_en9RoQXtHUtnzKsmZ7KO3MLA/od6/public/values?alt=json', function (data) 
		{
			for(var i = 0; i < data.feed.entry.length; i++)
			{
				Page[i] = data.feed.entry[i].gsx$page.$t;
				Voc[i] = data.feed.entry[i].gsx$vocabulary.$t;
				Level[i] = data.feed.entry[i].gsx$level.$t;
				Visible[i] = data.feed.entry[i].gsx$visible.$t;
				if(Visible[i] == 1)
					$('#producttable').append("<tr><td>" + Page[i] + "</td><td>" + Voc[i] + "</td><td>" + Level[i] + "</dt></tr>");				
			}
		});
	});