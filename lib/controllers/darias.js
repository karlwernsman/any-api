const { Router } = require('express');
const DariaCharacter = require('../models/DariaCharacter');

module.exports = Router()
  .get('/', async (req, res) => {
    const darias = await DariaCharacter.getAll();
    const filtered = darias.map(({ id, first_name }) => ({ id, first_name }));
    res.json(filtered);
  })
  .get('/:id', async (req, res) => {
    const daria = await DariaCharacter.getById(req.params.id);
    res.json(daria);
  });
