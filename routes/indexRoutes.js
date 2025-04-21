const express = require('express');
const router = express.Router();
const indexController = require('../controller/indexController');

// Show data from database
router.post('/addUtangBtn', indexController.addUtangController);
router.post('/payUtang', indexController.payUtang);


router.get('/', indexController.showUtangList);

// Add data to database

module.exports = router;
