
const PG = require('../../lib/postgres')

class Complex extends PG {
    getComplex(companyID) {
        return this.fetchAll(
            `
            SELECT 
              * 
            FROM
              complex
              WHERE
               company_id = $1
            `,companyID
        )
    }
}
module.exports = new Complex()