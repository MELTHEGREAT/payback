const indexModel = require('../model/utangModel');

async function addUtangController(req, res){
    const {people,utang } = req.body ;
    console.log(req.body);


    try {
        const addUtangInput = await indexModel.addUtangModel(people , utang);
        console.log("Added Successfully", addUtangInput);
        res.redirect('main');
    } catch (error) {
        console.log('Error:', error);
    }

}

async function showUtangList(req, res) {
    try {
        const data = await indexModel.getUtangList();
        res.render('index', { utangList: data });
    } catch (error) {
        console.error("Error:", error)
    }
    
}

async function payUtang(req, res) {
    try {
        const {name, amount} = req.body;
        // const amount = parseFloat(req.body.amount);
        // const oldAmount = parseFloat(await indexModel.payerName(name));

        const oldAmount = await indexModel.payerName(name)
        console.log("Payer Name:", name);
        if(amount <= oldAmount && amount >= 0){
            let newAmount = oldAmount - amount;
            console.log("Amount: ", newAmount);

            const payment = await indexModel.payUtang(name,newAmount);
            req.flash('messages', 'Payment messages.');
            req.flash('success', 'Payment completed.');


            // return payment;
            res.redirect('/');
            
            // console.error("Error:",res.redirect('/') )
        }else{
            req.flash('error', 'Invalid amount entered.');
            return res.redirect('/');
        }
       
    } catch (error) {
        console.error(error)
        return res.status(500).send("Something went wrong.");
    }
}



module.exports = {addUtangController, showUtangList, payUtang};