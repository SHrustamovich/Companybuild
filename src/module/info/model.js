const PG = require('../../lib/postgres')

class Price extends PG {
    getPrice(price) {
        return this.fetchAll(
            `
            SELECT 
            room_id AS id,
            b_square AS metrkv,
            b_square_price AS kvprice,
            b_address AS addres,
            SUM(room_number * b_square * b_square_price) AS price
          FROM 
            rooms
           GROUP BY
           id,
           metrkv,
           kvprice,
           addres
           HAVING
             room_id = $1;
            `,price
        )
    }
}
module.exports = new Price()