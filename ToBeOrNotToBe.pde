String idealString = "To be or not to be";
int generation = 0;
float mutationRate = 0.02;
float elitism = 0.1;
int populationSize = 100;
Population Sentences = new Population();

void setup(){
  size(640, 640);
  Sentences.init();
}

void draw(){
  background(0);
  generation++;
  Sentences.calcFitness(idealString);
  Sentences.calcElite();
  text(new String((Sentences.getElite(1))[0].chromosome), width/2, height/2);
  text(generation, width/2, height);
  Sentences.reproduce();
}