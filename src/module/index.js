const express = require('express')
const router = express.Router()

const Company = require('./company/company')
const Complex = require('./complex/complex')
const Rooms = require('./rooms/rooms')
const Price = require('./info/info')
const Bank = require('./bank/bank')
router
  .get('/company',Company.COMPANY)
  .post('/complex',Complex.COMPLEX)
  .post('/rooms',Rooms.ROOMS)
  .post('/cal',Price.PRICE)
  .post('/bank',Bank.BANK)
module.exports = router