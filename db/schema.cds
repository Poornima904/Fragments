namespace namesp;

entity bank
{
    key bank_id : Int16;
    bank_name : String;
    bank_cus_rel :Composition of many customer on bank_cus_rel.bank_id = bank_id;
}

entity customer
{
    key cus_id : Int16;
    cus_name : String;
    cus_dob : Date;
    bank_id : Int16;
    bank_f : Association to one bank;
}
