class Kendaraan {
  String brand;
  String model;
  int tahun;

  
  Kendaraan(this.brand, this.model, this.tahun);


  void displayInfo() {
    print("Brand Kendaraan: $brand");
    print("Model Kendaraan : $model");
    print("Tahun: $tahun");
  }
}


class Mobil extends Kendaraan {
  int seats;

  Mobil(String brand, String model, int tahun, this.seats) : super(brand, model, tahun);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Jumlah kursi: $seats");
  }
}


class Motor extends Kendaraan {
  bool moge;

  Motor(String brand, String model, int tahun, this.moge) : super(brand, model, tahun);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Jenis Moge: ${moge ? 'Ya' : 'Bukan'}");
  }
}

void main() {
  // membuat objek mobil
  var mobil = Mobil("Toyota", "Camry", 2020, 4);
  mobil.displayInfo();

  print("\n");

  // membuat objek motor
  var motor = Motor("Harley Davidson", "Street 750", 2019, true);
  motor.displayInfo();
}
