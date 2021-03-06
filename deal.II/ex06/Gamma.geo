//Mesh.RecombineAll = 1;
//Mesh.RecombinationAlgorithm = 1; // blossom
n = 11;

Point(1) = { 0, 0, 0};
Point(2) = { 1, 0, 0};
Point(3) = { 1, 1, 0};
Point(4) = { 0, 1, 0};
Point(5) = {-1, 1, 0};
Point(6) = {-1, 0, 0};
Point(7) = {-1,-1, 0};
Point(8) = { 0,-1, 0};

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,5};
Line(5) = {5,6};
Line(6) = {6,7};
Line(7) = {7,8};
Line(8) = {8,1};
Line(9) = {1,4};
Line(10) = {1,6};

Line Loop(1) = {1,2,3,-9};
Ruled Surface(1) = {1};
Transfinite Surface(1) = {1,2,3,4};

Line Loop(2) = {9,4,5,-10};
Ruled Surface(2) = {2};
Transfinite Surface(2) = {1,4,5,6};

Line Loop(3) = {10,6,7,8};
Ruled Surface(3) = {3};
Transfinite Surface(3) = {1,6,7,8};

Transfinite Line{1,2,3,4,5,6,7,8,9,10} = n;

Recombine Surface{1,2,3};

Physical Line   (0) = {1,2,3,4,5,6,7,8};
Physical Surface(1) = {1,2,3};
