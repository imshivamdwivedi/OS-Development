#include "include/screen.h"
#include "include/kb.h"
#include "include/string.h"
void kmain()
{
	
	clearScreen();
	print("Welcome to VS operating system\nPlease enter a command\n");
        while(1)
        {
              print("\nVS>");
              string ch = readStr();
              if(strEql(ch,"cmd"))
              {
                 print("\n You are already in cmd\n"); 
              }
              else if(strEql(ch,"clear"))
              {
                 clearScreen(); 
              }
              else(strEql(ch,"cmd"))
              {
               print("\nBad command\n"); 
              }
        
             print("\n");
        }
}
