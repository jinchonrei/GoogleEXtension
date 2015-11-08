function show() {
	var time = /(..)(:..)/.exec(new Date());		 // The prettyprinted time.
	var hour = time[1] % 12 || 12;							 // The prettyprinted hour.
	var period = time[1] < 12 ? 'a.m.' : 'p.m.'; // The period of the day.
	new Notification(hour + time[2] + ' ' + period, {
		icon: 'icon_128.png',
		body: 'Time to make the toast.'
	});
}
	
	// Conditionally initialize the options.
if (!localStorage.isInitialized) {
	localStorage.isActivated = true;	 // The display activation.
	localStorage.frequency = 1;				// The display frequency, in minutes.
	localStorage.isInitialized = true; // The option initialization.
}
	
	// Test for notification support.
if (window.Notification) {
	// While activated, show notifications at the display frequency.
	if (JSON.parse(localStorage.isActivated)) { show(); 
	chrome.tts.speak('Hello, world.');
	}
	
	var interval = 0; // The display interval, in minutes.
	
	setInterval(function() {

			show();

	}, 60000);
}