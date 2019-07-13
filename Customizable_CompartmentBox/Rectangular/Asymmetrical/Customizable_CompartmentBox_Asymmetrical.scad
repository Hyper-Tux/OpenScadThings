/* [Box dimensions] */
// Width of the box (X)
width = 60;
// Height of the box (Z)
height = 120;
// Number of rows (Y)
nbRows = 6;

/* [Holes dimensions] */
// Lengths of the holes
lengths = [0,54,54,50,0,58,0,65,0,5,34];

/* [Thickness] */
// External thickness
extTk = 6;
// Internal thickness
intTk = 2;

 // recursion - find the sum of the values in a vector (array) by calling itself
 // from the start (or s'th element) to the i'th element
function sumv(v,i,s=0) = (i<0 ? 0 :(i==s ? v[i] : v[i] + sumv(v,i-1,s)));

// recursion - find the count of the values different of zero in a vector (array) from start (s) to the i'th element.
function lenWZ(v,i,s=0) =   (i<0 || s<0 || s>i) ? 0 : (((v[i]==0) ? 0 : 1) + ((i==s) ? 0 : lenWZ(v,i-1,s)));

module box(width, height, nbRows, lengths, extTk, intTk)
{
    difference()
    {
        // Box
        cube([sumv(lengths,len(lengths)-1)+(lenWZ(lengths,len(lengths))-1)*intTk+2*extTk,width*nbRows+(nbRows-1)*intTk+2*extTk,height+extTk]);
        
        // Holes
        for(vX = [0 : len(lengths)-1], vY=[0:nbRows-1])
            if (lengths[vX]!=0)
                translate([sumv(lengths,vX-1)+(lenWZ(lengths,vX)-1)*intTk+extTk,extTk+vY*(intTk+width),extTk])
                cube([lengths[vX],width,height+1]);
    }
}

box(width=width, height=height, nbRows=nbRows, lengths=lengths, extTk=extTk, intTk=intTk);