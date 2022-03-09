const PG = require('../../lib/postgres')

class Company extends PG {
    getCompany() {
        return this.fetchAll(
            `
            SELECT 
              * 
            FROM
              company
            `
        )
    }
}
module.exports = new Company()