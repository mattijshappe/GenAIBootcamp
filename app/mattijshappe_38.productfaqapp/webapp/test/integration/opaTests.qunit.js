sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'mattijshappe38/productfaqapp/test/integration/FirstJourney',
		'mattijshappe38/productfaqapp/test/integration/pages/ProductFAQList',
		'mattijshappe38/productfaqapp/test/integration/pages/ProductFAQObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductFAQList, ProductFAQObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('mattijshappe38/productfaqapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductFAQList: ProductFAQList,
					onTheProductFAQObjectPage: ProductFAQObjectPage
                }
            },
            opaJourney.run
        );
    }
);