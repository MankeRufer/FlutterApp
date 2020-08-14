main(List<String> args) {
  print("Furkan EMRE11");

  String isim = "furkan";
  String soyisim = "emre";
  print(isim + " " + soyisim);
  print("Interpolation:  $isim $soyisim");
  print("isim uzunluk:  ${isim.length}");

  int en = 10;
  int boy = 61;
  print("Eni $en boyu $boy ve alanı ${en * boy}");

  sayilariYaz(61, 34);

  // try {
  //   print(12 ~/ 0);
  // } catch (e, s) {
  //   print("exception $e ,, stacktrace $s");
  // }

  //Liste tanımlamaları
  //List<int> numaralar = List(5);
  //var isimlerim = List(3);
  List<int> numbers = List();
  numbers.add(5);
  print(numbers[0]);
  // numbers.remove(5);
  //numbers.clear();

  //Set<String> cekilis = Set();
  Set<int> setNumbers = Set.from([1, 2, 3, 4, 1, 2, 3, 5, 6, 7, 1, 2, 3]);
  //list'den farkı sıralı olarak tutulmuyor ve her elemandan 1 tane olması

  numbers.addAll(setNumbers);

  //MAPLERDE KEY VALUE OLARAK SAKLANIR;

  Map<String, Object> kisiler = Map();
  kisiler["ad"] = "furkan";
  kisiler["yas"] = 571;
  kisiler["erkekMi"] = true;

  for (var key in kisiler.values) {
    print("Key Degeri => $key");
  }
}

int topla(int s1, int s2) {
  return s1 + s2;
}

int carp(int s1, int s2) => s1 * s2; //FAT ARROW

void sayilariYaz(int s1, int s2, [int s3]) {
  print(s1);
  print(s2);
  print(s3);
}
