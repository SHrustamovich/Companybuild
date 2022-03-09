const model = require('./model')
module.exports ={
    PRICE:  async(req,res) => {
        try{
            const {value} = req.body 
            const totalPrice = await model.getPrice(price = value)
            // const AllComplex = await Complex.getComplex()
            res.send(totalPrice)
        }catch(err){
            res.status(500).json({
                message: err.message
            })
        }
    }
}