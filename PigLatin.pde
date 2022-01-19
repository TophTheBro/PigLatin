public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord){
  int returnValue = 99999;
  int[] VowelIndex = new int[5];
  VowelIndex[0] = sWord.indexOf("a");
  VowelIndex[1] = sWord.indexOf("e");
  VowelIndex[2] = sWord.indexOf("i");
  VowelIndex[3] = sWord.indexOf("o");
  VowelIndex[4] = sWord.indexOf("u");
  for(int i = 0; i < VowelIndex.length; i++){
    if(VowelIndex[i] < returnValue && VowelIndex[i] != -1){
      returnValue = VowelIndex[i];
    }
  }
  if(returnValue == 99999){
    returnValue = -1;
  }
  return returnValue;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0){
    return sWord + "way";
  }
  else if(sWord.substring(0,2).equals("qu")){
   return sWord.substring(2) + "quay"; 
  }
  else if(findFirstVowel(sWord) >= 1){
   return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay"; 
  }
  else{
    return "ERROR!";
  }
  }
