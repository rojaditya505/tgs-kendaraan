import 'dart:io';

void main() {
  // Input
  print('Masukkan Nama :');
  String nama = stdin.readLineSync()!;

  print('Masukkan NIM :');
  String nim = stdin.readLineSync()!;

  print('Masukkan Jurusan :');
  String jurusan = stdin.readLineSync()!;

  print('Masukkan Semester :');
  int semester = int.parse(stdin.readLineSync()!);

  print('Masukkan IPK :');
  double ipk = double.parse(stdin.readLineSync()!);

  //menentukan status kelulusan
  String status;

  if (ipk >= 3.5) {
    status = "Cumlaude";
  } else if (ipk >= 2.75) {
    status = "Lulus";
  } else {
    status = "Tidak Lulus";
  }

  // Output
  print('Nama : $nama');
  print('NIM : $nim');
  print('Jurusan : $jurusan');
  print('Semester : $semester');
  print('IPK : $ipk');
  print('Status Kelulusan : $status');

}