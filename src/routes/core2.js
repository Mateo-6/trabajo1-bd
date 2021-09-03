const express = require('express');
const router = express.Router();

const { punto2 } = require('../controllers/core2');

router.get('/:nino', punto2);

module.exports = router;