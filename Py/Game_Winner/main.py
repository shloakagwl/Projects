def col(c):
    lst = list(c)
    wendy_trun = 0
    bob_trun = 0
    count = 0
    for i in range(0,len(lst)-1):
        if(lst[i] == lst[i+1]):
            count +=1
        else:
            count += 1
            if(count>2):
                if(lst[i] == 'w'):
                    wendy_trun += (count-2)
                else:
                    bob_trun += (count-2)
            count = 0
    count += 1
    if(count>2):
        if(lst[i] == 'w'):
            wendy_trun += (count-2)
        else:
            bob_trun += (count-2)
    if(wendy_trun > bob_trun):
        return 'wendy'
    else:
        return 'bob'

c = 'wwwbbbbwww' #bob
c = 'wwwbb'  #wendy
c = 'wb' #bob
c = 'www'#wendy
c = 'wwwbbbb' #bob

print(col(c))
