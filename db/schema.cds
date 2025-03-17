namespace MattijsHappe_38;
using { cuid } from '@sap/cds/common';

@assert.unique: { customerMessageID: [customerMessageID] }
entity CustomerMessages : cuid {
  customerMessageID: Integer @mandatory;
  titleEnglish: String(40);
  customerName: String(40);
  productName: String(100);
  summaryEnglish: String(1000);
  messageCategory: String(100);
  messageUrgency: String(100);
  messageSentiment: String(100);
  titleCustomerLanguage: String(40);
  customerId: String(36);
  productId: String(36);
  summaryCustomerLanguage: String(1000);
  originatingCountry: String(25);
  sourceLanguage: String(25);
  fullMessageCustomerLanguage: String(5000);
  fullMessageEnglish: String(5000);
  suggestedResponseEnglish: String(5000);
  suggestedResponseCustomerLanguage: String(5000);
}

