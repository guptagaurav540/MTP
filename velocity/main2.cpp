#include<iostream> 
using namespace std;


int main()
{
    FILE *f ;
    f=fopen("abc1.tcl","w");

    int n;
    scanf("%d",&n);
    
    // node creation 
    fprintf(f,"# Node Creation \n");
  //  fprintf(f,"create-god $val(%d)\n",n);
        
    for(int i=0;i<n;i++)
    {
        int X=rand()%990+5;
        int Y=rand()%990+5;
        fprintf(f,"$node_(%d) set X_ %d\n",i,X);
        fprintf(f,"$node_(%d) set Y_ %d\n",i,Y);
        fprintf(f,"$node_(%d) set Z_ 0.0\n\n",i);
    }


   

    for(int t=0;t<15;t++){
        for(int i=0;i<n;i++)
        {
            int X=rand()%990+5;
            int Y=rand()%990+5;
            fprintf(f,"$ns at %d.000 \"$node_(%d) setdest %d.000000 %d.000000 5.0000\"\n",t*10,i,X,Y);
        }
        fprintf(f,"\n");

    }

    


}