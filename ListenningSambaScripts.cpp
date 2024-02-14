#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <Windows.h>

struct timer
{
	double startTime;
	double currentTime;
};

int main()
{
	timer update;
	double updateNow = 180000; // refresh de 60 em 60 segundos
	int exitCondition = 0;
	update.startTime = GetTickCount(); // Get the current system time as the start time
	while( true )
	{
		update.currentTime = GetTickCount() - update.startTime; // update the current time each loop
		if( update.currentTime > updateNow )
		{
			std::cout << "\n\n listenning SAMBA .\n\n";
			system("chamaAtalho.bat");
			system("chamaAtalho2.bat");
			system("chamaAtalho3.bat");
			system("chamaAtalho4.bat");
			std::cout << "\n\n\n\nlistenning SAMBA.\n\n\n";
			++exitCondition; // Increment. Just so we can exit the infinite loop
			update.startTime = GetTickCount(); // reset the start time, so you can count back up to 'updateNow'
		}
		//if( exitCondition >= 5 )
			//break;
	}
	return 0;
}
