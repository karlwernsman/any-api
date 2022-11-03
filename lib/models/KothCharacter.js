const pool = require('../utils/pool');
module.exports = class KothCharacter {
  constructor(row) {
    this.id = row.id;
    this.first_name = row.first_name;
    this.last_name = row.last_name;
    this.url = row.url;
    this.age = row.age;
  }

  static async getAll() {
    const { rows } = await pool.query('SELECT * from koth_characters');
    return rows.map((kothRow) => new KothCharacter(kothRow));
  }

  static async getById(id) {
    const { rows } = await pool.query(
      'SELECT * from koth_characters WHERE id = $1',
      [id]
    );
    return new KothCharacter(rows[0]);
  }
};
