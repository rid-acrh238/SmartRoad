const mysql = require('mysql2');

// Buat koneksi pool (lebih optimal untuk banyak request)
const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',      // Sesuaikan dengan user MySQL kamu
  password: '',      // Sesuaikan dengan password MySQL kamu
  database: 'smartroad_db',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

// Gunakan versi promise agar bisa pakai async/await
const promisePool = pool.promise();

module.exports = promisePool;