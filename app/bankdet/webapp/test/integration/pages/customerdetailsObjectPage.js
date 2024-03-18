sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'bankdet',
            componentId: 'customerdetailsObjectPage',
            contextPath: '/bankdetails/bank_cus_rel'
        },
        CustomPageDefinitions
    );
});