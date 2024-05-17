class Mahasiswa {
  String nama;
  String nim;

  Mahasiswa({required this.nama, required this.nim});

  factory Mahasiswa.fromJson(Map<String, dynamic> json) {
    return Mahasiswa(
      nama: json['nama'],
      nim: json['nim'],
    );
  }
}

List<Mahasiswa> listMahasiswa = [
  Mahasiswa(nama: 'Reza Yuli Santosa', nim: 'STI202102480'),
  Mahasiswa(nama: 'Virda Romadani', nim: 'STI202102493'),
  Mahasiswa(nama: 'Muhammad Rifki', nim: 'STI202102498'),
  Mahasiswa(nama: 'Septi Aprilia Wulandari', nim: 'STI202102504'),
  Mahasiswa(nama: 'Fatin Nurmalaningrum', nim: 'STI202102505'),
];
