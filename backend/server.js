const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const productRoutes = require('./routes/productRoutes');
const calibrationRoutes = require('./routes/calibrationRoutes');
const certificateRoutes = require('./routes/certificateRoutes');
const companiesRoutes = require('./routes/companiesRoutes');

const app = express();
const port = 3000;

app.use(cors());
app.use(bodyParser.json());
app.use(cors({ origin: 'http://localhost:3001' }));
app.use('/api/products', productRoutes);
app.use('/api/calibration', calibrationRoutes);
app.use('/api/certificates', certificateRoutes);
app.use('/api/company', companiesRoutes);

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});

