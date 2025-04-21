const pool = require('../db');

async function addUtangModel(name, amount) {
    try{
        const [results] = await pool.execute('INSERT INTO utang(name, amount) VALUES(?,?)', [name, amount]);
        return results; // Return the ID of the newly inserted order
        
    }catch(e){
        console.log("Error:", e);
    }
}

async function getUtangList(){
    try {
        const [rows] = await pool.execute('SELECT * from utang');
        return rows;
    } catch (error) {
        console.log(`Error: `, error);
    }
}

async function payUtang(name, amount){
    try {
        const [results] = await pool.execute('UPDATE utang SET amount = ? WHERE name = ? ', [amount , name]);
        return results;
    } catch (error) {
        console.error(error);
    }
}

async function payerName(name) {
    try {
        const [rows] = await pool.execute('SELECT amount FROM utang where name = ?' ,[name])
        return rows[0].amount;
    } catch (error) {
        console.error("Error:", error);
    }
    
}

module.exports = {addUtangModel, getUtangList, payUtang, payerName};