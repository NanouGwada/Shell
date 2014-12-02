#!/bin/sh
for i in $(find ./ -name "*f*");
  	do countLine=$(cat $i | wc -l) ; 
		echo $countLine ; 
		if [ $countLine -gt 10 ] ; 
		then  
			echo $i;  
 			mv $i $(echo $i | sed 's/f/g/g') ;
			resultLine=$(find -name "*f*");
		fi;
 	done;

