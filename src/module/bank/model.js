const PG = require('../../lib/postgres')

class Bank extends PG {
    getBank(duration) {
        return this.fetchAll(
            `
            SELECT 
            bank_name AS Bank_name,
            bank_duration AS muddat,
            bank_service AS servis,
            MAX(b_money) AS kridit
          FROM 
            bank
         GROUP BY
           Bank_name,
           muddat,
           servis
         HAVING
           bank_duration = $1; 
            `,duration
        )
    }
}
module.exports = new Bank()