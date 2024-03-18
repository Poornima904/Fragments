using namesp as nm from '../db/schema';
service MyService {
    @odata.draft.enabled
  entity bankdetails as projection on nm.bank;
  entity customerdetails as projection on nm.customer;

}