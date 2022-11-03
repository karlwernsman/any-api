const { Router } = require('express');
const KothCharacter = require('../models/KothCharacter');

module.exports = Router()
  .get('/', async (req, res) => {
    const koths = await KothCharacter.getAll();
    const filtered = koths.map(({ id, first_name }) => ({ id, first_name }));
    res.json(filtered);
  })
  .get('/:id', async (req, res) => {
    const koth = await KothCharacter.getById(req.params.id);
    res.json(koth);
  });
