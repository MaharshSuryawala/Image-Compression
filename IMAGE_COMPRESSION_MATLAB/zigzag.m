function matrix = zigzag(in)
%returns an 1*(n*m) array of zigzag order
 
tmp=reshape(1:numel(in),size(in));

%flip l/r--diagonal matrix--flip l/r

afterFliplr1=fliplr(tmp);
afterSpdiags=spdiags(afterFliplr1);
afterFliplr2=fliplr(afterSpdiags);

%flip u/d (odd columns)

afterFlipudOdd=afterFliplr2;
afterFlipudOdd(:,1:2:end)=flipud(afterFliplr2(:,1:2:end)); %flipping all odd column elements

%remove zero indexes

orderNonZero=afterFlipudOdd;
orderNonZero(orderNonZero==0)=[];

%get order

matrix=in(orderNonZero);


end

