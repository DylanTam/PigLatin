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
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i) == 'a'){
      return i;
    }
    else if(sWord.charAt(i) == 'e'){
      return i;
    }
    else if(sWord.charAt(i) == 'i'){
      return i;
    }
    else if(sWord.charAt(i) == 'o'){
      return i;
    }
    else if(sWord.charAt(i) == 'u'){
      return i;
    }
  }
	return -1;
}

public String pigLatin(String sWord)

{

	if(findFirstVowel(sWord) == -1){
		return sWord + "ay";
	}
	else if(sWord.charAt(0) == 'a' || sWord.charAt(0) == 'e' || sWord.charAt(0) == 'i' || sWord.charAt(0) == 'o' || sWord.charAt(0) == 'u'){
		return sWord + "ay";
	}
	else if(sWord.charAt(0) == 'q' && sWord.charAt(1) == 'u'){
		return sWord.substring(2,sWord.length()) + "qu" + "ay";
	}
	else if(sWord.charAt(0) != 'a' || sWord.charAt(0) != 'e' || sWord.charAt(0) != 'i' || sWord.charAt(0) != 'o' || sWord.charAt(0) != 'u'){
		return sWord.substring(1,sWord.length()) + sWord.substring(0,1) + "ay";
	}
	else
	{
		return "ERROR!";
	}

}
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1

//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord	if(findFirstVowel(sWord) == -1)
