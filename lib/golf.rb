class Golf
  def self.hole1(s)
    o=''
    i=0
    s.split('').each do |c|
      if /[[:upper:]]/.match(c) && i>0
        o+='_'+c.downcase
      else
        o+=c.downcase
      end
      i += 1
    end
    o
  end

  def self.hole2(a)
    o=[]
    for i in a[0]..a[1]
      if p?(i.to_s)
        o << i
      end
    end
    o
  end
  def self.p?(s)
    if s.length <= 1
      true
    elsif s[0] == s[-1]
      p?(s[1..-2])
    else
      false
    end
  end

  def self.hole3(s,i)
    a='abcdefghijklmnopqurstuvxyz'
    o=''
    s.split('').each do |c|
      o+=a[a.index(c) + i - 26]
    end
  end

end
