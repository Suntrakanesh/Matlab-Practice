function indices=saddle(A)
  [r, ~]=size(A);
  indices=double.empty;
  v=1;
  n=1;
  for i=1:r
      [~, col]=find(min(A(i,:))==A(i,:));
      while v<=length(col)
      if A(i, col(1,v))==max(A(:,col(1,v)))
          indices(n,:)=[i col(1,v)];
          n=n+1;
      end
      v=v+1;
      end
      v=1;   
  end
end
