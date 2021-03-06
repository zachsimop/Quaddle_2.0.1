-- Attention-Circuits-Control Laboratory (www.attention-circuits-control.org) --

--For more information on how Quaddles are generated and may be used:
--Watson, MR., Voloh, B., Naghizadeh, M., Womelsdorf, T., (2018) �Quaddles: A multidimensional 3D object set with parametrically-controlled
-- and customizable features� Behav Res Methods.

--Website guide: http://accl.psy.vanderbilt.edu/resources/analysis-tools/3d-image-material/
--Brief instructions on how to use scripts: http://accl.psy.vanderbilt.edu/quaddlegenerator-brief-instructions/

--Scripts, objects and in depth manual available on github: https://github.com/att-circ-contrl/Quaddles-Gen


--CREATES PICTURE OF EACH OBJECT SPECIFIED BY ANGLE AND DISTANCE

for i =1 to qqArray.count do 
	qqArray[i].pivot = [0,0,0]

--making circle for camera to move on
circ = circle()

circ.radius = abs (cos(anglevalue) * camdistance)
circ.pos = [0,0,(sin(anglevalue) * camdistance)]
roup
cam = freeCamera()
cam.type = #target
cam.target.pos = [0,0,genLoc/2]

--path constraint
pc = path_constraint()
pc.path = circ --defining the path constraint
cam.position.controller = pc --camera  movement constrained to path constraint

--since camera is locked to path constraint of the circle, rotating circle will move camera
viewport.setType #view_camera
anglestring = anglevalue as string
fileNameForPic =  fileNameForPic + "pictures\\" + anglestring
makeDir fileNameForPic

--smoothhighlights is a render setting
viewport.SetRenderLevel #smoothhighlights
picturelocation = fileNameForPic + "\\" + picname + "_" + anglestring + "_" + "0" + ".jpg"
picturelocation = fileNameForPic + "\\" + picname + "_" + anglestring + "_" + "0" + ".png"

render outputFile: (picturelocation) vfb: off outputSize: [1280,720]

--rotate camera and take photos again
for i = 1 to qqArray.count do (rotate qqArray[i] (eulerangles 0 0 45))
	
picturelocation = fileNameForPic + "\\" + picname + "_" + anglestring + "_" + "45" +   ".jpg"
picturelocation = fileNameForPic + "\\" + picname + "_" + anglestring + "_" + "45" +   ".png"

render outputFile: (picturelocation) vfb: off outputSize: [1280,720]

delete circ
delete cam
	
	