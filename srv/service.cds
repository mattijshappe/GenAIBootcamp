using { S4HCP_ServiceOrder_Odata } from './external/S4HCP_ServiceOrder_Odata.cds';

using { MattijsHappe_38 as my } from '../db/schema.cds';

@path : '/service/mattijsHappe_38'
service mattijsHappe_38Srv
{
    @odata.draft.enabled
    entity CustomerMessages as
        projection on my.CustomerMessages;

    entity A_ServiceOrder as
        projection on S4HCP_ServiceOrder_Odata.A_ServiceOrder
        {
            ServiceOrder,
            ServiceOrderDescription
        };
}

annotate mattijsHappe_38Srv with @requires :
[
    'authenticated-user'
];
