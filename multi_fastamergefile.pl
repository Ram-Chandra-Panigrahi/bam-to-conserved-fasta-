open(F,"/home/shrish/Desktop/SM_japonica_mito.fasta") or die "cannot open the file";
open(O,">","/home/shrish/Desktop/processed_conservered_SM_japonica_mito.fasta") or die "Connot provide output";
print O ">processed_conservered_SM_japonica_mito.fasta";
for($j=0;$j<530000;$j++){$seq.="N";}
#print "$seq\n";
$seq1;
while($line =<F>)
{	if($line=~/^>/){#print "$line\n";
			$l=substr($line,6);			
			@lck=split("-",$l);
			#print O "$lck[0]";		
			#for($i=0;$i<=$lck[0];$i++){print O " ";}
			}
	else{	chomp($line);
		$len_line=length($line);
		#
		print "$lck[0]:$len_line\n";
		substr($seq,$lck[0],$len_line,$line);
		#print O "$line";	sleep(1);
				
		}
}
print O "\n$seq\n";
close(O);
close(F);

