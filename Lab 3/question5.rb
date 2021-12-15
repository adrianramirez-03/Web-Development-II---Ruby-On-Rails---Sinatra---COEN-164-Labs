/hello/ =~ 'hello' #0

/love|hate/ =~ 'love' #0
/love|hate/ =~ 'hate' #0
/love|hate/ =~ 'take' #nil

/colou?r/ =~ 'colour' #0
/colou?r/ =~ 'color' #0


/gr[ae]y/ =~ 'grey' #0
/gr[ae]y/ =~ 'gray' #0
/gr[ae]y/ =~ 'griy' #nil

/b[aeiou]bble/ =~ 'bubble' #0
/b[aeiou]bble/ =~ 'babble' #0
/b[aeiou]bble/ =~ 'bcbble' #nil

/go*gle/ =~ 'google' #0
/go*gle/ =~ 'gooogle' #0 
/go*gle/ =~ 'golgle' #nil

/go+gle/ =~ 'google' #0
/go+gle/ =~ 'gooogle' #0

/g(oo)+gle/ =~ 'google' #0
/g(oo)+gle/ =~ 'goooooogle' #0

/x{3}/ =~ 'xxx' #0
/x{3}/ =~ 'xxxx' #0

/x{6,10}/ =~ 'xxxxxx' #0
/x{6,10}/ =~ 'xxxxxxx' #0

/w/ =~ 'well' #0
/w/ =~ 'wendell' #0

/\w/ =~ 'adwas' #0
/\w/ =~ 'asdwa' #0

/d/ =~ 'dell' #0
/d/ =~ 'drop' #0

/\d/ =~ '22' #0
/\d/ =~ '1' #0

/\d{5}/ =~ '11111' #0
/\d{5}/ =~ '111121' #0

/\d+(\.\d\d)?/ =~ '2' #0
/\d+(\.\d\d)?/ =~ '4' #0

/hello\d+/ =~ 'hello2' #0
/hello\d+/ =~ 'hello22' #0

/sh[^io]t/ =~ 'shet' #0
/sh[^io]t/ =~ 'shut' #0

/^ruby/ =~ 'sal' #nothing really works with this one but when I add brackets it works?
/[^ruby]/ =~ 'sal' #0
/[^ruby]/ =~ 'simon' #0

/ruby$/ =~ 'ruby' #0
/^ruby$/ =~ 'ruby' #0