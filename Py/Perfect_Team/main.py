def teams(skills):
   mySkills = list(skills)
   return min(mySkills.count("p"), mySkills.count("c"),
    mySkills.count("m"), mySkills.count("b"), mySkills.count("z"))
    
print(teams('pcpcbbzzmmm'))
