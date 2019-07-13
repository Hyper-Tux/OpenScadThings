/* [External dimensions] */
// External heigth
ht = 50;

/* [Circles dimensions] */
// In each couple, the first number is the number of divider and the second is the width of the circle
circles = [[4,40],[4,40],[8,40],[8,60]];

/* [Thickness] */
// Internal thickness
intTk = 4;
// External thickness
extTk = 10;

$fn=100;

module circle(circles, ht, iTk, eTk, i=0, sumR=0)
{
    union ()
    {
        difference ()
        {
            cylinder(h=ht, r=sumR+((i<len(circles))?iTk:eTk));
            
            translate([0,0,eTk])
            cylinder(h=ht-eTk+0.1, r=sumR);
        }
        
        for (j=[0:circles[i][0]])
            rotate([0,0,360/circles[i][0]*j])
            translate([sumR,-iTk/2,eTk])
            cube([circles[i][1]+iTk,iTk,ht-eTk]);
    }    
    if (i<len(circles))
        circle(circles, ht, iTk, eTk, i+1, sumR+circles[i][1]+iTk);
}
module box(ht, circles, intTk, extTk)
{
    echo (str("Ht : ", ht));
    echo (str("Circles : ", circles));
    echo (str("intTk : ", intTk));
    echo (str("extTk : ", extTk));
    union ()
    {
        cylinder(h=ht,r=intTk);
        
        circle(circles, ht, intTk, extTk);
    }
}

box(ht=ht, circles=circles, intTk=intTk, extTk=extTk);