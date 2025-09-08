String angkaBiner(int n) {
  if (n < 0) {
    throw ArgumentError('Input tidak boleh negatif');
  }
  return n.toRadixString(2);
}

void main() 
{
  int angka = 42;
  
  print('Angka desimal: $angka');
  print('-' * 25);
  
  String biner = angkaBiner(angka);
  print('Biner (Basis 2)       : $biner'); 
  
  String oktal = angka.toRadixString(8);
  print('Oktal (Basis 8)       : $oktal'); 
  
  String heksadesimal = angka.toRadixString(16);
  print('Heksadesimal (Basis 16) : $heksadesimal'); 
}
