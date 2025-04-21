//app.js
const express = require('express');
const bodyParser = require('body-parser');
const session = require('express-session');
const app = express(); 
const router = express.Router();
const path = require('path');
const flash = require('connect-flash');
// const routes = require('./routes');
// app.use('/api', routes);

app.set('view engine', 'ejs');
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static('public'));
app.set('views', path.join(__dirname, 'views'));
app.use(express.static(path.join(__dirname, 'public')));
app.set('view engine', 'ejs');
app.use(session({ secret: 'your_secret_key', resave: false, saveUninitialized: true }));
app.use(flash());

app.use(session({
  secret: 'your-secret-key',
  resave: false,
  saveUninitialized: true
}));
// Make flash messages available in all views
app.use((req, res, next) => {
  res.locals.error = req.flash('error');
  res.locals.success = req.flash('success');
  res.locals.messages = req.flash('messages');

  next();
});


// ----------------------------------------------------------HOME---------------------------------------------------------//
const indexRoutes = require('./routes/indexRoutes');
const mainRoutes = require('./routes/indexRoutes');
app.use('/main', mainRoutes); 


app.use('/',indexRoutes);
app.use('/home', indexRoutes);



const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
