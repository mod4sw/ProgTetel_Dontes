// Ez egy komment, ez nem hajtódik végre!
// class: ez az OSZTÁLY, ez a prototípus, minden autós kártya így fog működni
static class CarCard{
  // gyártó
  public String manufacturer;
  // modell
  public String model;
  // teljesítmény lóerőben
  public int performance;
  // végsebesség km/h-ban
  public int terminalVelocity;
  // lökettérfogat köbcentiben
  public int volume;
  // átlagfogyasztás l/100km-ben
  public double averageConsumption;
  
  // konstruktor, ez építi meg az új PÉLDÁNYt
  public CarCard(String manufacturer, 
             String model, 
                 int performance, 
                 int terminalVelocity, 
                 int volume, 
                 double averageConsumption){
    // this: ennek az új példánynak a változója
    this.manufacturer = manufacturer;
    this.model = model;
    this.performance = performance;
    this.terminalVelocity = terminalVelocity;
    this.volume = volume;
    this.averageConsumption = averageConsumption; 
  }
  
  // függvény, ami csak a CarCard osztályon működik
  public void printFullName(){
    println(manufacturer + " " + model);
  }
  
}

// generátor, segédosztály, ennek segítségével gyártunk egy sor beírásával 32 autós kártyát
static class CarCardGenerator{

  static CarCard[] getCarCards(){
    // létrehoz egy új tömböt, amibe 32 kártya fér el
    CarCard[] carCards = new CarCard[32];
    // és egyenként feltölti
    // tudjuk, hogy az első paraméter a gyártó, a második a modell, és így tovább
    carCards[0] = new CarCard("Audi", "TTS Roadster", 272, 250, 1984, 8.0);
    carCards[1] = new CarCard("Daihatsu", "Copen", 87, 180, 1298, 6.0);
    carCards[2] = new CarCard("Pontiac", "G6 GT Convertible", 230, 200, 3880, 10.2);
    carCards[3] = new CarCard("VW", "Eos", 250, 247, 3189, 9.2);
    carCards[4] = new CarCard("Alfa", "159 Sportwagon", 260, 248, 3195, 11.6);
    carCards[5] = new CarCard("Audi", "A6 Avant", 233, 242, 2967, 8.1);
    carCards[6] = new CarCard("Citroen", "C5 Break", 215, 230, 2946, 9.4);
    carCards[7] = new CarCard("Renault", "Clio Grandtour", 100, 184, 1149, 5.8);
    carCards[8] = new CarCard("Audi", "A5", 240, 250, 2967, 7.2);
    carCards[9] = new CarCard("Mercedes", "CLS 63 AMG", 514, 250, 6208, 14.5);
    carCards[10] = new CarCard("Nissan", "350Z", 313, 250, 2498, 11.7);
    carCards[11] = new CarCard("Peugeot", "407 Coupe", 204, 230, 2720, 8.5);
    carCards[12] = new CarCard("Citroen", "C4 Pallas", 109, 192, 1560, 4.7);
    carCards[13] = new CarCard("Dacia", "Logan", 105, 183, 1598, 7.1);
    carCards[14] = new CarCard("Fiat", "Linea", 90, 170, 1248, 4.9);
    carCards[15] = new CarCard("Opel", "Astra Sedan", 140, 207, 1796, 7.4);
    carCards[16] = new CarCard("Audi", "A8 W12 Quattro", 450, 250, 5998, 14.7);
    carCards[17] = new CarCard("BMW", "760Li", 445, 250, 5972, 13.6);
    carCards[18] = new CarCard("Jaguar", "XJR", 395, 250, 4196, 12.1);
    carCards[19] = new CarCard("Mercedes", "S600", 517, 250, 5513, 14.3);
    carCards[20] = new CarCard("Fiat", "500", 100, 182, 1368, 6.3);
    carCards[21] = new CarCard("Peugeot", "1007", 109, 190, 1587, 6.6);
    carCards[22] = new CarCard("Smart", "Fortwo", 84, 145, 999, 4.9);
    carCards[23] = new CarCard("Suzuki", "Splash", 86, 175, 1242, 5.6);
    carCards[24] = new CarCard("BMW", "M3", 420, 250, 3999, 12.4);
    carCards[25] = new CarCard("Ford", "Focus ST", 225, 241, 2522, 9.3);
    carCards[26] = new CarCard("Mazda", "RX-8", 231, 235, 1308, 11.2);
    carCards[27] = new CarCard("Opel", "GT", 264, 230, 1998, 9.2);
    carCards[28] = new CarCard("BMW", "X6", 407, 250, 4395, 12.5);
    carCards[29] = new CarCard("Chery", "Tiggo", 125, 175, 2350, 8.9);
    carCards[30] = new CarCard("Citroen", "C-Crosser", 156, 200, 2179, 7.3);
    carCards[31] = new CarCard("Suzuki", "Jimny", 86, 140, 1328, 7.2);
    // "visszatér" az autós kártyák tömbjével
    return carCards;
  }
}