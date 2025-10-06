SELECT * 
FROM siswa;

SELECT nama 
FROM siswa
WHERE jurusan = 'IPA';

SELECT s.nama, AVG(n.nilai) AS rata_nilai
FROM siswa s
JOIN nilai n ON s.id = n.siswa_id
GROUP BY s.nama;


