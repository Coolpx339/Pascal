program AvgMainDiagonal;

var
  A: array[1..100, 1..100] of Integer;
  n, i, j: Integer;
  sum: Integer;
  avg: Real;

begin
  Write('Введіть розмір масиву n: ');
  ReadLn(n);

  WriteLn('Введіть елементи масиву:');
  for i := 1 to n do
    for j := 1 to n do
      Read(A[i, j]);

  sum := 0;

  { Головна діагональ: i = j }
  for i := 1 to n do
    sum := sum + A[i, i];

  avg := sum / n;

  WriteLn('Середнє арифметичне головної діагоналі = ', avg:0:2);
end.
