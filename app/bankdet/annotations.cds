using MyService as service from '../../srv/service';

annotate service.bankdetails with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'bank_id',
            Value : bank_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'bank_name',
            Value : bank_name,
        },
    ]
);
annotate service.bankdetails with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'customer details',
            ID : 'customerdetails',
            Target : 'bank_cus_rel/@UI.LineItem#customerdetails',
        },
    ]
);
annotate service.customerdetails with @(
    UI.LineItem #customerdetails : [
        {
            $Type : 'UI.DataField',
            Value : cus_name,
            Label : 'cus_name',
        },{
            $Type : 'UI.DataField',
            Value : cus_id,
            Label : 'cus_id',
        },{
            $Type : 'UI.DataField',
            Value : cus_dob,
            Label : 'cus_dob',
        },{
            $Type : 'UI.DataField',
            Value : bank_id,
            Label : 'bank_id',
        },]
);
annotate service.bankdetails with @(
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View',
    }
);
