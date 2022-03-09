const model = require('./model')
const Company = require('../company/model')
module.exports ={
    COMPLEX:  async(req,res) => {
        try{
           const {value} = req.body 
        //    console.log(value);
           const complex = await model.getComplex(companyID = value)
           const AllCompany = await Company.getCompany()
           res.send(complex)
        }catch(err){
            res.status(500).json({
                message: err.message
            })
        }
    }
}   