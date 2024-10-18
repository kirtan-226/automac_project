const express = require('express');
const bodyParser = require('body-parser');
const productRoutes = require('./routes/productRoutes');
const calibrationRoutes = require('./routes/calibrationRoutes');
const certificateRoutes = require('./routes/certificateRoutes');
const companiesRoutes = require('./routes/companiesRoutes');

const app = express();
const port = 3000;

// Middleware
app.use(bodyParser.json());

// Product routes
app.use('/api/products', productRoutes);
app.use('/api/calibration', calibrationRoutes);
app.use('/api/certificates', certificateRoutes);
app.use('/api/company', companiesRoutes);

// Start the server
app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});

