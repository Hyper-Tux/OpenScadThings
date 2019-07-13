use <Customizable_CompartmentBox_Symmetrical_ExternalDimensions.scad>;

split = 200;

boxes = [[200,100,50,4,2,10,6,"red"],
         [200,200,50,2,2,10,3,"cyan"],
         [200,500,50,1,5,5,6,"magenta"],
         [400,100,50,5,1,8,4,"green"]];

for (vX=[-1,1], vY=[-1,1])
{
    i = max(vX,0) + max(vY,0)*2;
    
    if (boxes[i])
        color(boxes[i][7])
        translate([vX*split, vY*split,0])
        box(boxes[i][0], boxes[i][1], boxes[i][2], boxes[i][3], boxes[i][4], boxes[i][5], boxes[i][6]);
}