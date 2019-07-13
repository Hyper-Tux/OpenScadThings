use <Customizable_CompartmentBox_Cylindrical.scad>

split = 300;

boxes = [[50, [[4,40],[4,40],[8,40],[8,60]], 4, 10],
         [50, [[4,40],[4,40],[8,40],[8,60]], 4, 10],
         [50, [[4,40],[4,40],[8,40],[8,60]], 4, 10],
         [50, [[4,40],[4,40],[8,40],[8,60]], 4, 10]];

for (vX=[-1,1], vY=[-1,1])
{
    tp = 2+vX+vY;
    translate([vX*split, vY*split,0])
    box(boxes[tp][0], boxes[tp][1], boxes[tp][2], boxes[tp][3]);
}