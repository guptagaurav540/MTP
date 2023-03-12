#include<iostream> 
using namespace std;


int main()
{
    FILE *f ;
    f=fopen("abc.tcl","w");

    int n=100;
    
    // node creation 
    fprintf(f,"# Node Creation \n");
  //  fprintf(f,"create-god $val(%d)\n",n);
        
    for(int i=0;i<n;i++)
    {


        fprintf(f,"set n%d [$ns node]\n",i);
        fprintf(f,"$n%d random-motion 1\n",i);
        
        int X=rand()%1000;
        int Y=rand()%1000;
        fprintf(f,"$n%d set X_ %d\n",i,X);
        fprintf(f,"$n%d set Y_ %d\n",i,Y);
        fprintf(f,"$n%d set Z_ 0.0\n",i);
        fprintf(f,"$ns initial_node_pos $n%d 20\n\n",i);
    }



    // initial enerfy of nodes 
    int initialenergy=100;
    for(int i=0;i<n;i++)
    {
        //set energylist(0) 100
        fprintf(f,"set energylist(%d) %d\n",i,initialenergy);
    }
    fprintf(f,"\n\n");

   
    // for(int i=0;i<n;i++)
    // {
    //     int X=rand()%1000;
    //     int Y=rand()%1000;
        
    //     fprintf(f,"$ns at 0.00000000000 \"$n%d setdest %d.000000 %d.000000 10.0000\"\n",i,X,Y);
    // }



    // velocity definition 
    for(int t=0;t<15;t++){
        for(int i=0;i<n;i++)
        {
            int X=rand()%998+1;
            int Y=rand()%998+1;
            
            fprintf(f,"$ns at %d.000 \"$n%d setdest %d.000000 %d.000000 15.0000\"\n",t*10,i,X,Y);
        }
        fprintf(f,"\n");

    }

}