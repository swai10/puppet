# datacenter.rd
Facter.add('datacenter') do
   setcode do
     hostname = Facter.value(:hostname)
     case hostname
     when /den/
      'denver'
     when /dfw/
       'dallas'
     when /bos/
       'boston'
      else
        'nodc'
        end
      end
    end
