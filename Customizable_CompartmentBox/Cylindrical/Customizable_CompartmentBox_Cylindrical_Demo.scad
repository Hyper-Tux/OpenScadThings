use <Customizable_CompartmentBox_Cylindrical.scad>

split = 400;

boxes = [[50, [[4,120],[12,40]], 4, 10, "red"],
         [50, [[4,40],[8,40]], 4, 10, "cyan"],
         [50, [[0,150],[20,40],[24,40],[28,60]], 4, 10, "magenta"],
         [50, [[4,40],[4,40],[8,40],[8,60]], 4, 10, "green"]];

for (vX=[-1,1], vY=[-1,1])
{
    i = max(vX,0) + max(vY,0)*2;
    
    if (boxes[i])
        color(boxes[i][4])
        translate([vX*split, vY*split,0])
        box(boxes[i][0], boxes[i][1], boxes[i][2], boxes[i][3]);
}