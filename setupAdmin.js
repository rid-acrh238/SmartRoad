const bcrypt = require('bcrypt');
const db = require('./config/db'); // Sesuaikan dengan lokasi db.js Anda

async function createAdmin() {
  const username = 'admin';
  const plainPassword = 'admin123';
  
  try {
    // Proses hashing password (10 adalah salt rounds, standar keamanan normal)
    const hashedPassword = await bcrypt.hash(plainPassword, 10);
    
    // Simpan ke database
    const query = 'INSERT INTO admin (username, password) VALUES (?, ?)';
    await db.query(query, [username, hashedPassword]);
    
    console.log(`Berhasil! Akun dengan username '${username}' telah dibuat.`);
    console.log(`Password Hash yang tersimpan: ${hashedPassword}`);
    process.exit(0);
  } catch (error) {
    console.error('Gagal membuat admin:', error.message);
    process.exit(1);
  }
}

createAdmin();