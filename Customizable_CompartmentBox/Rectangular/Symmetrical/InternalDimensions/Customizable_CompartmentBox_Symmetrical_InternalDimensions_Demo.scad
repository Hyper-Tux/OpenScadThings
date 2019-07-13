use <Customizable_CompartmentBox_Symmetrical_InternalDimensions.scad>;

split = 250;

boxes = [[40, 60, 20, 4, 2, 9, 3, "red"],
         [80, 20, 100, 10, 2, 3, 9, "cyan"],
         [40, 40, 150, 2, 4, 5, 5, "magenta"],
         [30, 90, 50, 2, 7, 2, 2, "green"]];

for (vX=[-1,1], vY=[-1,1])
{
    i = max(vX,0) + max(vY,0)*2;
    
    if (boxes[i])
        color(boxes[i][7])
        translate([vX*split, vY*split,0])
        box(boxes[i][0], boxes[i][1], boxes[i][2], boxes[i][3], boxes[i][4], boxes[i][5], boxes[i][6]);
}