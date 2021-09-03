const express = require('express');
const router = express.Router();

const { test, getMenuData, getTipoGuarderia } = require('../controllers/core');

router.get('/', getTipoGuarderia);
router.get('/:menu', getMenuData);
router.get('/test/test', getMenuData);

module.exports = router;