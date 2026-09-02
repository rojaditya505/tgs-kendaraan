import 'dart:io';

String cekStatus(double nilai) {
  if (nilai >= 75) {
    return "Lulus";
  } else {
    return "Belum Lulus";
  }
}

void main() {
  print("APLIKASI DATA SISWA SEDERHANA\n");

  List<Map<String, dynamic>> daftarSiswa = [];
  bool lanjutInput = true;

  while (lanjutInput) {
    print("Input Data Siswa:");
    
    stdout.write("Nama: ");
    String nama = stdin.readLineSync() ?? "";

    stdout.write("Umur: ");
    int umur = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

    stdout.write("Kelas: ");
    String kelas = stdin.readLineSync() ?? "";

    stdout.write("Nilai: ");
    double nilai = double.tryParse(stdin.readLineSync() ?? "0") ?? 0.0;

    String status = cekStatus(nilai);
    bool isLulus = nilai >= 75;

    Map<String, dynamic> siswa = {
      'nama': nama,
      'umur': umur,
      'kelas': kelas,
      'nilai': nilai,
      'status': status,
      'isLulus': isLulus
    };

    daftarSiswa.add(siswa);

    print("\nData berhasil disimpan.");
    stdout.write("Tambah data lagi? (y/n): ");
    String? jawaban = stdin.readLineSync()?.toLowerCase();
    
    if (jawaban != 'y') {
      lanjutInput = false;
    }
    print("");
  }

  print("\nREKAP BIODATA SISWA");

  if (daftarSiswa.isEmpty) {
    print("Belum ada data siswa.");
  } else {
    for (int i = 0; i < daftarSiswa.length; i++) {
      var s = daftarSiswa[i];
      print("\nData Siswa ${i + 1}:");
      print("Nama: ${s['nama']}");
      print("Umur: ${s['umur']} tahun");
      print("Kelas: ${s['kelas']}");
      print("Nilai: ${s['nilai']}");
      print("Status: ${s['status']}");
    }
  }

  print("\nSelesai. Terima kasih!");
}

