const model = require('./model')
const companyComplex = require('../complex/model')
module.exports ={
    COMPANY: async(req,res) => {
        try{
            res.send(await model.getCompany()) 
        }catch(err){
            res.status(500).json({
                message: err.message
            })
        }
    }
}