class Game {
int win=0;
int draw=0;
int lose=0;
String getJankenResult(String hand) {
 String cpuHand = this.desideCpuHand();

 if (hand.equals("Gu") && cpuHand.equals("Gu") 
   || hand.equals("Choki") && cpuHand.equals("Choki") 
   || hand.equals("Pa") && cpuHand.equals("Pa")) {
     draw++;
     return "Draw";
   }else if (hand.equals("Gu") && cpuHand.equals("Choki")
   || hand.equals("Choki") && cpuHand.equals("Pa")
   || hand.equals("Pa") && cpuHand.equals("Gu")) {
     win++;
     return "You Win!";
   }else if (hand.equals("Gu") && cpuHand.equals("Pa")
   || hand.equals("Choki") && cpuHand.equals("Gu")
   || hand.equals("Pa") && cpuHand.equals("Choki")) {
     lose++;
     return "CPU Win!";
   }

 return null;
}

String desideCpuHand() {
 int cpuHandNum = (int)random(3);
 if (cpuHandNum == 0) return "Gu";
 else if (cpuHandNum == 1) return "Choki";
 else return "Pa";
}
}
