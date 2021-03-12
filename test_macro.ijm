#@ File (label = "Input directory", style = "directory") input
#@ File (label = "Output directory", style = "directory") output
#@ String (label = "Max Z Projection Channel", value = "CH2") channel
#@ String (label = "File suffix", value = ".tif") suffix

//processFolder(input);
list = getFileList(input);
list = Array.sort(list);
//Array.print(list);
//for (i = 0; i < list.length; i++) {
for (i = 0; i < 2; i++) {
		print("Opening Image Directory into stack: ",list[i]);
		if(File.isDirectory(input + File.separator + list[i])){
			to_stack = input + File.separator + list[i];
			print("to stack is: ", to_stack);
			//print("open=[" + to_stack + "] file=" + channel + " sort");
			run("Image Sequence...", "open=[" + to_stack + "] file=" + channel + " sort");
		}
}
print("Processing complete")
