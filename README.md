# D1212131117-MOBILE2025-W1
NAMA : SYAHRUL MUBARAQ
NIM : D121231117

def faktorial(n):
    if  n == 0:
        return 1
    else:
      hasil = 1
    for i in range(1, n + 1):
      hasil *= i
    return hasil
while True:
  try:
    bilangan = int(input("masukkan sebuah bilangan bulat : "))
    if bilangan < 0:
      print("sorry, input harus berupa bilangan non negatif.")
    else:
      hasil_faktorial = faktorial(bilangan)
      print(f"faktorial dari {bilangan} adalah {hasil_faktorial}")
      break
  except ValueError:
    print("inputnya tidak valid. kasi masuki bilangan bulat.")
