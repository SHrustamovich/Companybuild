
const PG = require('../../lib/postgres')

class Rooms extends PG {
    getRooms(complexID) {
        return this.fetchAll(
            `
            SELECT 
              * 
            FROM
              rooms
              WHERE
              complex_id = $1
            `,complexID
        )
    }
   
}
module.exports = new Rooms()