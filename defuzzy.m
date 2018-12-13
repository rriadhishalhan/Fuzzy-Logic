function y=defuzzy(index1,index2,index3,index4,n1,n2,n3,n4)
    if index1==index2 && index1==index3 && index1==index4
        y=index1;
    elseif index1==index2 && index1==index3
        if n1>=n2 && n1>=n3
            y=((n1*index1)+(n4*index4))/(n1+n4);
        elseif n2>=n1 && n2 >=n3
            y=((n2*index2)+(n4*index4))/(n2+n4);
        else
            y =((n3 * index3) + (n4 * index4)) / (n3 + n4);
        end
    elseif index1 == index2 && index1 == index4
        if n1 >= n2 && n1 >= n4
			y = ((n1 * index1) + (n3 * index3)) / (n1 + n3);
		elseif n2 >= n1 && n2 >= n4
			y = ((n2 * index2) + (nu3 * index3)) / (n2 + n3);
        else
			y = ((n3 * index3) + (n4 * index4)) / (n3 + n4);
        end
    elseif index1 == index3 && index1 == index4
        if n1 >= n3 && n1 >= n4
			y = ((n1 * index1) + (n2 * index2)) / (n1 + n2);
        elseif n3 >= n1 && n3 >= n4
			y = ((n2 * index2) + (n3 * index3)) / (n2 + n3);
        else
			y = ((n2 * index2) + (n4 * index4)) / (n2 + n4);
        end
    elseif index2 == index3 && index2 == index4
        if n2 >= n3 && n2 >= n4
			y = ((n1 * index1) + (n2 * index2)) / (n1 + n2);
        elseif n3 >= n1 && n3 >= n4
			y = ((n1 * index1) + (n3 * index3)) / (n1 + n3);
        else
			y = ((n1 * index1) + (n4 * index4)) / (n1 + n4);
        end
    elseif index1 == index2 && index3 == index4
        if n1 >= n2 && n3 >= n4
			y = ((n1 * index1) + (n3 * index3)) / (n1 + n3);
        elseif n1 >= n2 && n3 <= n4
			y = ((n1 * index1) + (n4 * index4)) / (n1 + n4);
        elseif n1 <= n2 && n3 >= n4
			y = ((n2 * index2) + (n3 * index3)) / (n2 + n3);
        else
            y = ((n2 * index2) + (n4 * index4)) / (n2 + n4);    
        end
    elseif index1 == index3 && index2 == index4
        if n1 >= n3 && n2 >= n4
			y = ((n1 * index1) + (n2 * index2)) / (n1 + n2);
        elseif n1 >= n3 && n2 <= n4
			y = ((n1 * index1) + (n4 * index4)) / (n1 + n4);
        elseif n1 <= n3 && n2 >= n4
			y = ((n3 * index3) + (n2 * index2)) / (n3 + n2);
        else
            y = ((n3 * index3) + (n4 * index4)) / (n3 + n4);
        end
    elseif index1 == index2
        if n1 >= n2
			y = ((n1 * index1) + (n3 * index3) + (n4 * index4)) / (n1 + n3 + n4);
        else
			y = ((n2 * index2) + (n3 * index3) + (n4 * index4)) / (n2 + n3 + n4);
        end
    elseif index1 == index3
        if n1 >= n3
			y = ((n1 * index1) + (n2 * index2) + (n4 * index4)) / (n1 + n2 + n4);
        else
			y = ((n2 * index2) + (n3 * index3) + (n4 * index4)) / (n2 + n3 + n4);
        end
    elseif index1 == index4
        if n1 >= n4
			y = ((n1 * index1) + (n2 * index2) + (n3 * index3)) / (n1 + n2 + n3);
        else
			y = ((n2 * index2) + (n3 * index3) + (n4 * index4)) / (n2 + n3 + n4);
        end	
    elseif index2 == index3
        if n2 >= n3
			y = ((n1 * index1) + (n2 * index2) + (n4 * index4)) / (n1 + n2 + n4);
        else
			y = ((n1 * index1) + (n3 * index3) + (n4 * index4)) / (n1 + n3 + n4);
        end	
    elseif index2 == index4
        if n2 >= n4
			y = ((n1 * index1) + (n2 * index2) + (n3 * index3)) / (n1 + n2 + n3);
        else
			y = ((n1 * index1) + (n3 * index3) + (n4 * index4)) / (n1 + n3 + n4);
        end		
    elseif index3 == index4
        if n3 >= n4
			y = ((n1 * index1) + (n2 * index2) + (n3 * index3)) / (n1 + n2 + n3);
        else
            y = ((n1 * index1) + (n2 * index2) + (n4 * index4)) / (n1 + n2 + n4);
        end	
    else
		y = ((n1 * index1) + (n2 * index2) + (n3 * index3) + (n4 * index4))/(n1 + n2 + n3 + n4);
    end    
        
end