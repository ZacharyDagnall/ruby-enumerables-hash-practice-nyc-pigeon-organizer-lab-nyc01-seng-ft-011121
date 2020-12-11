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
  
  #fill in attributes per name  
  names.each do |name|
    data.each do |att|
      att[1].each do |spec|
        if spec[1].include?(name)
          newdata[name][att[0]].push(spec[0].to_s)
        end
      end
    end
  end
  
  newdata
end

#i don't think i have the optimal or most line-efficient solution but i think it is very clear and straightforward


