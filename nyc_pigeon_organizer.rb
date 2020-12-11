require 'pry'

def nyc_pigeon_organizer(data)
  newdata = Hash.new
  
  #get all the names
  names=[]
  data.map { |att|
    att[1].map { |spec|
      names.concat(spec[1])
    }
  }
  names.uniq!
  
  #turn names into keys in newdata, and initialize appropriate hash keys
  names.each do |name|
    newdata[name] = {color: [], gender: [], lives: []}
  end
  
  #fill in colors 
  names.each do |name|
    data.each do |at|
      at[1].each do |sp|
        if sp[1].include?(name)
          newdata[name][at[0]].push(sp[0])
        end
      end
      binding.pry
    end
  end
  #binding.pry
 
  
  newdata
end



