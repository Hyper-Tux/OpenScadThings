use <Customizable_CompartmentBox_Asymmetrical.scad>;

split = 300;

boxes = [[60, 120, 6, [54,54,50,58,65,5,34], 6, 2, "red"],
         [60, 120, 2, [100,10,100,10,100,10,100], 2, 4, "cyan"],
         [40, 120, 10, [40,40,40,40], 6, 2, "magenta"],
         [60, 120, 8, [10,10,20,30,50,80,130,210], 12, 1, "green"]];

for (vX=[-1,1], vY=[-1,1])
{
    i = max(vX,0) + max(vY,0)*2;
    
    if (boxes[i])
        color(boxes[i][6])
        translate([vX*split, vY*split,0])
        box(boxes[i][0], boxes[i][1], boxes[i][2], boxes[i][3], boxes[i][4], boxes[i][5]);
}