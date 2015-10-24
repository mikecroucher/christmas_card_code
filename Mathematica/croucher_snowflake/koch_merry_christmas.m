Koch[0] = {{0, 0}, {1, 0}, {1/2, -(Sqrt[3]/2)}, {0, 0}} // N;
Koch[n_] := Koch[n] =
Module[{s},
Partition[Koch[n - Sign[n]], 2, 1] /. {a_, b_} :> (s = b - a;
{a, a + s/3, a + s/3 + RotationTransform[Sign[n] 60 °][s/3],a + 2 s/3})] //
Append[Flatten[#, 1], Last[Koch[n - Sign[n]]]] &;
Graphics[Line@Koch[5],
Epilog -> Inset[Style["Merry Christmas", 20], {Center, Center}, {Center,Center}]]
