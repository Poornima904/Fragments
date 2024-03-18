sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bankdet/test/integration/FirstJourney',
		'bankdet/test/integration/pages/bankdetailsList',
		'bankdet/test/integration/pages/bankdetailsObjectPage',
		'bankdet/test/integration/pages/customerdetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, bankdetailsList, bankdetailsObjectPage, customerdetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bankdet') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThebankdetailsList: bankdetailsList,
					onThebankdetailsObjectPage: bankdetailsObjectPage,
					onThecustomerdetailsObjectPage: customerdetailsObjectPage
                }
            },
            opaJourney.run
        );
    }
);