void setup(){
  CarCard[] cards = CarCardGenerator.getCarCards();
  int N = cards.length;
  int i;
  
  // T1: van-e olyan elem, aminek a gyártója Ferrari?
  String T1 = "Ferrari";
  
  // T2: van-e olyan elem, aminek a gyártója Opel?
  String T2 = "Opel";
     
  // T3: mindegyik fogyasztása 20 liter alatt van?
  double T3 = 20.0;
  
  // T4: mindegyik fogyasztása 10 liter alatt van?
  double T4 = 10.0;
  
  // T5: egyik teljesítménye se kevesebb mint 10 LE?
  int T5 = 10;
  
  // T6: egyik teljesítménye se kisebb, mint 100 LE?
  int T6 = 100;
  
  //////////////////////////////////////////////////
  
  for(i = 0; ((i < N) && cards[i].manufacturer != T1); i++){
    print(".");
  }
  if(i < N){
    println("Van " + T1 + " a kártyák között!");
  }
  else{
    println("Nincs " + T1 + " a kártyák között!");
  }
  
  for(i = 0; ((i < N) && cards[i].averageConsumption < T3); i++){
    print(".");
  }
  if(i == N){
    println("Mindegyik fogyasztása " + T3 + " alatt van!");
  }
  else{
    println("Van olyan autó aminek a fogyasztása nem kisebb " + T3 + " l/100km-nél!");
  }
  
  for(i = 0; ((i < N) && cards[i].performance > T5); i++){
    print(".");
  }
  if(i == N){
    println("Mindegyik teljesítménye " + T5 + " felett van!");
  }
  else{
    println("Van olyan autó aminek a teljesítménye nem nagyobb mint " + T5 + " LE!");
  }

}