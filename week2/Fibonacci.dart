
void main() {
  int angka = 10;
  
  int hasil = fibonacci(angka);
  
  print('Angka Fibonacci ke-$angka adalah: $hasil');
}
int fibonacci(int n) {
  if (n < 0) {
    throw ArgumentError('Input tidak boleh negatif');
  }
  if (n <= 1) {
    return n;
  }

  int a = 0;
  int b = 1;
  int result = 0;

  for (int i = 2; i <= n; i++) {
    result = a + b;
    a = b;
    b = result;
  }
  return b;
}