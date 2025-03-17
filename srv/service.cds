using { MattijsHappe_38 as my } from '../db/schema.cds';

@path: '/service/mattijsHappe_38'
@requires: 'authenticated-user'
service mattijsHappe_38Srv {
  @odata.draft.enabled
  entity CustomerMessages as projection on my.CustomerMessages;
}