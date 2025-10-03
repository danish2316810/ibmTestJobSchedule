using app.dan.ibm.db as db from '../../db';

service XrefService {
    entity contract as projection on db.Contracts;
}