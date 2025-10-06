CREATE TABLE nilai (
    id SERIAL PRIMARY KEY,
    siswa_id INT REFERENCES siswa(id),
    mata_pelajaran VARCHAR(100),
    nilai INT
);