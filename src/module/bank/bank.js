const model = require('./model')
module.exports ={
    BANK:  async(req,res) => {
        try{
            const {value} = req.body 
            const bankInfo = await model.getBank(duration = value)
            // const AllComplex = await Complex.getComplex()
            res.send(bankInfo)
        }catch(err){
            res.status(500).json({
                message: err.message
            })
        }
    }
}