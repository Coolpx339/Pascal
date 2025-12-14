program GenerateArray;

var
  A: array[1..10, 1..10] of Integer;
  n, i, j: Integer;

begin
  Randomize;
  n := 10;  { розмір масиву }

  for i := 1 to n do
    for j := 1 to n do
      A[i, j] := Random(201) - 100;  { діапазон [-100; 100] }

  WriteLn('Згенерований масив:');
  for i := 1 to n do
  begin
    for j := 1 to n do
      Write(A[i, j]:5);
    WriteLn;
  end;
end.
