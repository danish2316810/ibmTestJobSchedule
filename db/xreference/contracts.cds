namespace app.dan.ibm.db;

using {managed} from '@sap/cds/common';
using app.dan.ibm.db.types as Types from '../index.cds';
 

entity Contracts:managed{
    key terminalNo             :Types.TerminalNo;
    key stkhld                 :Types.StkhldNo;
    key custNo                 :Types.CustNo;
    key contractNo             :Types.ContractNo;
        contractCustNo         :String(10) not null;
        contractDescription    :String(40);
        contractOrg            :ContractOrganisation not null;
        contract               :ContractType not null;
        valuation              :ValuationType not null;
        exchangeNo             :String(10);
        effectiveDate          :DateTime;
        };

type ContractOrganisation   : Association to one ContractOrganisations;
entity ContractOrganisations{
    key no          :String(4);
        description :Types.Description;
};

type ContractType : Association to one ContractTypes;
entity ContractTypes {
    key type        :String(1);
        description :Types.Description;
};

type ValuationType : Association to one ValuationTypes;
entity ValuationTypes {
    key type        :String(4);
        description :Types.Description;
};