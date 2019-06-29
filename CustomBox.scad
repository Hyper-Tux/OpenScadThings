/* [Global] */
// Thickness of the walls (front, back, bottom, sides and gaps)
thickness = 2;
// Width of the box
width = 60;
// Height of the box
height = 120;
// Lengths of the holes
lengths = [0,54,54,50,0,58,0,65,0,5];

 // recursion - find the sum of the values in a vector (array) by calling itself
 // from the start (or s'th element) to the i'th element - remember elements are zero based
function sumv(v,i,s=0) = (i<0 ? 0 :(i==s ? v[i] : v[i] + sumv(v,i-1,s)));

// recursion - find the count of the values different of zero in a vector (array) from start (s) to the i'th element.
function lenWZ(v,i,s=0) =   (i<0 || s<0 || s>i) ? 0 : (((v[i]==0) ? 0 : 1) + ((i==s) ? 0 : lenWZ(v,i-1,s)));

difference()
{
    color("red")
    cube([sumv(lengths,len(lengths)-1)+(lenWZ(lengths,len(lengths)))*thickness,width+2*thickness,height+thickness]);
    
    for(i = [0 : len(lengths)-1])
        if (lengths[i]!=0)
            translate([sumv(lengths,i-1)+(lenWZ(lengths,i))*thickness,thickness,thickness])
            cube([lengths[i],width,height+1]);
}