const express = require('express');
const app = express();
app.use(express.static('.'));
app.get('/api/health', (req, res) => res.json({ status: 'HEALTHY', pipeline: 'AWS EKS + RDS' }));
app.listen(3000, () => console.log('CloudBite backend running on port 3000'));
