#include <rsf.h>
#include <chlw.h>

	int
main ( int argc, char *argv[] )
{
    sf_file <+Fin+>=NULL;                       /* SF Input File Pointer */
    sf_file <+Fout+>=NULL;                      /* SF Output File Pointer */
	sf_axis Az;                                 /* SF Axis */

	bool verb;                                  /* verbose */

	/* initialize rsf */
    sf_init(argc,argv);

	<+Fin+> = sf_input("in");
	<+Fout+> = sf_output("out");

	/* Read arguments from command lines */
	if(!sf_getbool("verb",&verb)) verb = 1;
	
	/* get the axis */
	Az = sf_iaxa( <+Fin+>, 1);
	/* get parameters from input file */	
	int nz = sf_n(Az); float dz = sf_d(Az); float oz = sf_o(Az);
	

	/* read file */
	sf_floatread( <+ArrayPointer+>, <+size+>, <+Fin+> );

	<+main+>


	/* modify axis */
	Az = sf_maxa( <+n1+>, <+o1+>, <+d1+> );		
	sf_oaxa( <+Fout+>, Az, 1 ); sf_putstring( <+Fout+>, "label1", "z" ); sf_putstring( <+Fout+>, "unit1", "m" );

	sf_close();
	exit(0);
}		/* ----------  end of function main  ----------  */

