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
      return {
        id: daria.id,
        first_name: daria.first_name,
      };
    });
    expect(res.body).toEqual(expected);
  });

  it('/darias/:id should return character detail', async () => {
    const res = await request(app).get('/darias/1');
    const daria = {
      id: '1',
      first_name: 'Daria',
      last_name: 'Morgendorffer',
      url: 'https://static.wikia.nocookie.net/daria/images/e/eb/Dariacropped1.png/revision/latest?cb=20200815015432',
      episode_count: 65,
    };
    expect(res.body).toEqual(daria);
  });

  afterAll(() => {
    pool.end();
  });
});
