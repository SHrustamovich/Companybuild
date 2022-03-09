const model = require('./model')
const Complex = require('../complex/model')
module.exports ={
    ROOMS:  async(req,res) => {
        try{
            const {value} = req.body 
            const rooms = await model.getRooms(complexID = value)
            const AllComplex = await Complex.getComplex()
            res.send(rooms)
        }catch(err){
            res.status(500).json({
                message: err.message
            })
        }
    }
}