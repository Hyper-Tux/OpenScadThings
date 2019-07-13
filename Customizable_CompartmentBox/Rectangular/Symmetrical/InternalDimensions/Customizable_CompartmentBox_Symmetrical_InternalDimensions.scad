/* [Holes dimensions] */
// Internal length (X)
lg = 40;
// Internal width (Y)
wd = 60;
// Internal depth (Z)
dp = 100;

/* [Thickness] */
// External thickness
extTk = 4;
// Internal thickness
intTk = 2;

/* [Multipliers] */
// Number multiplier on axe X
multX = 9;
// Number multiplier on axe Y
multY = 3;

difference ()
{
    // External length (X)
    sizeX = lg*multX + 2*extTk + (multX-1)*intTk; 
    // External width (Y)
    sizeY = wd*multY + 2*extTk + (multY-1)*intTk;
    // External heigth (Z)
    sizeZ = dp + extTk;
    
    // External box
    cube([sizeX, sizeY, sizeZ]);
    
    // Holes
    for (vX=[0:multX-1], vY=[0:multY-1])
        translate([extTk+vX*(lg+intTk), extTk+vY*(wd+intTk),extTk])
        cube([lg, wd, dp+0.1]);
}