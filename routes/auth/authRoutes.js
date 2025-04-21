// routes/authRoutes.js

const express = require('express');
const router = express.Router();
const authController = require('../../controllers/authController');

router.get('/', authController.login);
router.get('/login', authController.login);
router.post('/login', authController.handleLogin);
router.get('/signup', authController.signup);
router.post('/signup', authController.handleSignup);

module.exports = router;
