#include "include/kb.h"
int kmain()
{
       isr_install();
       clearScreen();
       print("Hi and Welcome to my operating system\nPlease enter a command");
       printch('\n');
       print("OS> ");
       while(1)
       {
                string ch = readStr();
                print("\n");
                //print(ch);
                if(strEql(ch,"cmd"))
                {
                        print("\nYou are already in cmd\n");
                }
                else if(strEql(ch,"clear"))
                {
                        clearScreen();
                        print("OS> ");
                }
                else
                {
                        print("\nBad command!\n");
                }    
		print("OS> ");
       }
        
}
