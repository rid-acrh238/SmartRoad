const db = require('../config/db');

module.exports = {
  getAdminByUsername: async (username) => {
    const query = 'SELECT * FROM admin WHERE username = ?';
    const [rows] = await db.query(query, [username]);
    return rows[0]; // Mengembalikan satu baris data admin (jika ada)
  }
};