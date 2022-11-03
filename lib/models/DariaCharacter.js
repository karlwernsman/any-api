const pool = require('../utils/pool');
module.exports = class DariaCharacter {
  constructor(row) {
    this.id = row.id;
    this.first_name = row.first_name;
    this.last_name = row.last_name;
    this.url = row.url;
    this.episode_count = row.episode_count;
  }

  static async getAll() {
    const { rows } = await pool.query('SELECT * from daria_characters');
    return rows.map((dariaRow) => new DariaCharacter(dariaRow));
  }
};
