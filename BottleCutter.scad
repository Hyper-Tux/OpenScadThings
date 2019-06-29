// Handle to hold a cutter blade and cut out plastic bottles in slat

/* [Handle] */
// length (X)
handleLG = 20;
// Width (Y)
handleWD = 20;
// Height (Z)
handleHT = 100;

/* [Slot] */
// Width (X)
slotWD = 2;
// Height (Z)
slotHT = 30;

/* [Holes] */
// Numbers
holesNB = 4;
// Length (Y)
holesLT = 10;
// Thickness (Z)
holesTH = 1;
// Gap
holesGap = 3;

difference ()
{
    cube([handleLG, handleWD, handleHT]);
    
    translate([(handleLG-slotWD)/2,-0.01,handleHT-slotHT])
    cube([slotWD,handleWD+0.02,slotHT+0.01]);
    
    for (i=[1:holesNB])
    {
        translate([-0.01,(handleWD-holesLT)/2,handleHT-slotHT+i*holesGap])
        cube([handleLG+0.02,holesLT,holesTH]);
    }
}