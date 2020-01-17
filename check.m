
clc
ll = load('H:\mc\final')
 %a=VideoReader('C:\Users\Acer\Downloads\Compressed\hmdb51_org\run\run\3.avi');
 a = VideoReader('C:\Users\Acer\Downloads\Compressed\hmdb51_org\climb\climb\1.avi');
 
a1=0;
b1=0;
c=0;
d=0;
e=0;
for img = 1:a.NumberOfFrames;
    b = read(a, img);
%    [labelIdx, score] = predict(categoryClassifier,img);

  imwrite(b,'H:\mc\s1.jpg');
  img = imread('H:\mc\s1.jpg');
  [labelIdx, score] = predict(ll.categoryClassifier,img);
  if(labelIdx==1)
      a1=a1+1;
  end
  if(labelIdx==2)
      b1=b1+1;
  end
  if(labelIdx==3)
      c=c+1;
  end
  if(labelIdx==4)
      d=d+1;
  end
  if(labelIdx==5)
      e=e+1;
  end 
  
  
end
ma = max(a1,b1);
ma = max(ma,c);
ma = max(ma,d);
ma = max(ma,e);
kk=0;
if(ma==a1)
    kk=1;
end
if(ma==b1)
    kk=2;
end

if(ma==c)
    kk=3;
end

if(ma==d)
    kk=4;
end

if(ma==5)
    kk=5;
end




ll.categoryClassifier.Labels(kk)

