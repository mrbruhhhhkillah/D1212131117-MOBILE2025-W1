import 'dart:math';

int faktorialInt(int n) {
  if (n < 0) throw ArgumentError('Input tidak boleh negatif');
  if (n == 0) return 1;
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

BigInt faktorialBigInt(int n) {
  if (n < 0) {
    throw ArgumentError('Input tidak boleh negatif');
  }
  if (n == 0) {
    return BigInt.one;
  }
  BigInt result = BigInt.one;
  for (int i = 1; i <= n; i++) {
    result *= BigInt.from(i);
  }
  return result;
}

void main() {
  int angka = 21;

  print('Menghitung faktorial dari $angka...');
  print('-' * 40);

  try {
    int hasilInt = faktorialInt(angka);
    print('Hasil menggunakan int    : $hasilInt (salah!)');
  } catch (e) {
    print('Gagal menghitung dengan int: $e');
  }
  

  print('Batas maks tipe data int : ${pow(2, 63) - 1}');
  print('');

  BigInt hasilBigInt = faktorialBigInt(angka);
  print('Hasil menggunakan BigInt : $hasilBigInt (benar)');
  print('Jawaban seharusnya       : 51090942171709440000');
}