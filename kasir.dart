import 'dart:io';

num hitungtotal(num harga, num jumlah) {
  return harga * jumlah;
}

num hitungkembalian(num total, num bayar) {
  return bayar - total;
}

void main() {
  List<String> riwayat = [];

  print('=== kasir dart ===');

  print('masukan nama barang:');
  String barang = stdin.readLineSync()!;

  print('masukan harga barang:');
  num harga = num.parse(stdin.readLineSync()!);

  print('masukan jumlah barang:');
  num jumlah = num.parse(stdin.readLineSync()!);

  num total = hitungtotal(harga, jumlah);
  print('Total: RP$total');

  print('jumlah bayar:');
  num bayar = num.parse(stdin.readLineSync()!);

  if (bayar >= total) {
    num kembalian = hitungkembalian(total, bayar);

    String histori = 'Barang: $barang, Harga: RP$harga, Jumlah: $jumlah, Total: RP$total, Bayar: RP$bayar, Kembalian: RP$kembalian';
    riwayat.add(histori);


    print('=== Struk belanja ===');
    print('Barang: $barang');
    print('Harga: RP$harga');
    print('Jumlah: $jumlah');
    print('Total: RP$total');
    print('Bayar: RP$bayar');
    print('kembalian: RP$kembalian');

    }else {
      print('uang anda tidak cukup');
    } 

    print('=== Riwayat Transaksi ===');
    for (var item in riwayat) {
      print(item);
    }
    
  }