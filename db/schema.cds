namespace MattijsHappe_38;

using { S4HCP_ServiceOrder_Odata } from '../srv/external/S4HCP_ServiceOrder_Odata.cds';

using { cuid } from '@sap/cds/common';

entity CustomerMessages : cuid
{
    customerMessageID : Integer
        @mandatory;
    titleEnglish : String(40);
    customerName : String(40);
    productName : String(100);
    summaryEnglish : String(1000);
    messageCategory : String(100);
    messageUrgency : String(100);
    messageSentiment : String(100);
    titleCustomerLanguage : String(40);
    customerId : String(36);
    productId : String(36);
    summaryCustomerLanguage : String(1000);
    originatingCountry : String(25);
    sourceLanguage : String(25);
    fullMessageCustomerLanguage : String(5000);
    fullMessageEnglish : String(5000);
    suggestedResponseEnglish : String(5000);
    suggestedResponseCustomerLanguage : String(5000);
    S4HCP_ServiceOrder : Association to one S4HCP_ServiceOrder_Odata.A_ServiceOrder;
}

annotate CustomerMessages with @assert.unique :
{
    customerMessageID : [ customerMessageID ],
};

entity ProductFAQ
{
    key ID : Integer;
    issue : LargeString;
    question : LargeString;
    answer : LargeString;
    embedding : Vector(1536);
}
