/* [Global] */
// Text
text = "LGHS";
// Fontsize
textSize = 40;

/* [Dimensions] */
// Length (X)
lg = 130;
// Width (Y)
wd = 30;
// Height (Z)
ht = 20;


/* [Reinforcement] */
// Percentage
pourRF = 50; // [0:100]


diag = sqrt(lg*lg+ht*ht);
angle = atan(ht/lg);

// difference()
{
    resize([lg,wd,0])
    linear_extrude(height=ht, convexity = 10)
    text("54DERIVATION", textSize, font="impact", spacing=0.8);
    
    translate([-0.01,-0.01,ht])
    rotate([0,angle,0])
    cube([diag+0.02,wd+0.02,ht]);
}