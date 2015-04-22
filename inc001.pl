#!/usr/bin/perl

while(<>){
	chomp;
	$current = $_;

	if($last){

		@lparms = split(/\s/,$last);
		@cparms = split(/\s/,$current);
	
		if($lparms[0] != $cparms[0]){
			print $lparms[0], " 001   L ", $lparms[0], "\n";
		}
		else {
			print $last, "\n";
		}

	}
	
	$last = $current;
}
if($last){


		print $last, "\n";

		@lparms = split(/\s/,$last);
		
		print $lparms[0], " 001   L ", $lparms[0], "\n";
	
}


