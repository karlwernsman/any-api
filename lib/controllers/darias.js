const { Router } = require('express');
const DariaCharacter = require('../models/DariaCharacter');

module.exports = Router().get('/', async (req, res) => {
  const darias = await DariaCharacter.getAll();
  const filtered = darias.map(({ id, first_name }) => ({ id, first_name }));
  res.json(filtered);
});
