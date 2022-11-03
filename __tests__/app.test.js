const pool = require('../lib/utils/pool');
const setup = require('../data/setup');

const request = require('supertest');
const app = require('../lib/app');

const { darias } = require('../lib/daria-data.js');

// describe('backend-express-template routes', () => {
//   beforeEach(() => {
//     return setup(pool);
//   });
//   it('example test - delete me!', () => {
//     expect(1).toEqual(1);
//   });
//   afterAll(() => {
//     pool.end();
//   });
// });

describe('daria routes', () => {
  beforeEach(() => {
    return setup(pool);
  });
  it('/darias should return a list of characters', async () => {
    const res = await request(app).get('/darias');
    const expected = darias.map((daria) => {
      return { id: daria.id, name: daria.first_name };
    });
    expect(res.body).toEqual(expected);
  });
});
