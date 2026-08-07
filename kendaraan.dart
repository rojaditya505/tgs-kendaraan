class kendaraan {
  String _warna = "";
  String _merk = "";
  int _tahun = 0;

  String get merk => _merk;
  String get warna => _warna;
  int get tahun => _tahun;

  set merk(String merk) {
    _merk = merk;
  }
  set warna(String warna) {
    _warna = warna;
  }
  set tahun(int tahun) {
    _tahun = tahun;
  }

  void info() {
    print('Merk: $_merk');
    print('Warna: $_warna');
    print('Tahun: $_tahun');
  }

}



class mobil extends kendaraan {
  int _jumlahPintu = 0;

  int get jumlahPintu => _jumlahPintu;

  set jumlahPintu(int jumlahPintu) {
    _jumlahPintu = jumlahPintu;
  }

  void bukaBagasi() {
    print('Bagasi berhasil dibuka');
  }

}

class motor extends kendaraan {
  String _tipeMotor = "";

  String get tipeMotor => _tipeMotor;

  set tipeMotor(String tipeMotor) {
    _tipeMotor = tipeMotor;
  }

  void standar() {
    print('Standar motor diturunkan');

  }

}

void main () {
  mobil mbl = mobil();

  mbl.merk = 'lexus';
  mbl.warna = 'Hitam';
  mbl.tahun = 2020;
  mbl.jumlahPintu = 4;

  motor mtr = motor();
  mtr.merk = 'yamaha';
  mtr.warna = 'Putih';
  mtr.tahun = 2021;
  mtr.tipeMotor = 'Sport';

  print("=== DATA MOBIL ===");
   print("Merk: ${mbl.merk}");
  print("Warna: ${mbl.warna}");
  print("Tahun: ${mbl.tahun}");
  print("Jumlah Pintu: ${mbl.jumlahPintu}");
  mbl.bukaBagasi();

  print('');

  print("=== DATA MOTOR ===");
  print("Merk          : ${mtr.merk}");
  print("Warna         : ${mtr.warna}");
  print("Tahun         : ${mtr.tahun}");
  print("Tipe Motor    : ${mtr.tipeMotor}");
  mtr.standar();

}