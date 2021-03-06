var
  f: text;
  n, i, tmp: smallint;
  a: array of smallint;

begin
  assign(f, 'DIFFSUM.INP');
  reset(f);
  read(f, n);
  close(f);

  if n > 1 then
    setlength(a, trunc(sqrt(n * 2 + 2.25) - 1.5))
  else
    setlength(a, 1);
  tmp := 0;
  for i := 0 to length(a) - 2 do
    begin
      a[i] := i + 2;
      inc(tmp, a[i])
    end;
  a[length(a) - 1] := n - tmp;

  if length(a) > 1 then
    while a[length(a) - 1] - a[length(a) - 2] > 2 do
      for i := length(a) - 1 downto 1 do
        begin
          tmp := (a[i] - 1 - a[i - 1]) div 2;
          if tmp > 0 then
            begin
              dec(a[i], tmp);
              inc(a[i - 1], tmp)
            end
        end;

  assign(f, 'DIFFSUM.OUT');
  rewrite(f);
  for i in a do
    write(f, i, ' ');
  writeln(f);
  close(f)
end.
