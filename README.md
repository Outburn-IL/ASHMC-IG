## Creating a New Project in FSH from this template

**Create new Repository from this template:**  
- Look for a green button above the file list that says "Use this template". Click it.  
- GitHub will take you to a "Create a new repository" page.  

Owner: Select the GitHub account or organization where you want the new project to reside (Generally, this should be `Outburn`).  
Repository name: This is where you'll give your new project its unique name.  
Description (optional): Add a description for your new project.  
Public/Private: Choose the visibility for your new project.  
Click the green "Create repository from template" button.  

#### **Clone the Repository:**  
- In your repo on the github website, click on the green `<> Code` button.  
- Copy the url.  
- in your console (CMD or within VSCode), type:  
`git clone {enter the copied url here} {folder name you want for your project}`  

#### **Edit `sushi-config.yaml`:**  
- Inside the project directory, open the `sushi-config.yaml` file.  
- Edit all fields that contain content within curly braces (`{}`).  
**Note:** The `id` field MUST comply with FHIR guidelines, which can be found here: [https://confluence.hl7.org/plugins/servlet/mobile?contentId=35718629#content/view/35718629](https://confluence.hl7.org/plugins/servlet/mobile?contentId=35718629#content/view/35718629)  

#### **Edit `package.json`:**  
- Perform the same editing steps for the `package.json` file.  
- **Important:** For fields with identical names to those in the `sushi-config.yaml` file, the values **must** be the same!  

#### **Edit `.gitignore`:**  
Add any directory or file to the `.gitignore` file that you do not want to appear in the repository.   

#### **Edit `ig.ini`:**  
`ig = fsh-generated/resources/ImplementationGuide-{id}.json`  
**Note**: replace {id} with the EXACT same id as in the `sushi-config.yaml` file.

#### **Install the automated test suite:**  
- Open a console (CMD or within VSCode).  
- Run the following command: `npm install`  

#### **Create a New GitHub Repository:**  
- Create a new repository on Outburn's GitHub: [https://github.com/Outburn-IL/](https://github.com/Outburn-IL/)  
- If you're unsure how to do this, ask for assistance.  

#### **initial commit**  
in VSCode, commit all your changes and push to main.  

#### **create your local branch**  
- if you are not the only person working on the project, it is good practice to create your own branch.  
- In the github repo page, click on `Branch`.  
- Enter branch name and click on the green `Create new branch`  
- In VSCode, click on the branch name on the bottom left corner (usually, it will be called `main`)  
- click on the branch name you wish to work on (your new branch).  


---

### **Completion and Recommendations:**  
Your project is now ready to go. At this stage, it's recommended to perform an **initial commit*to Git, so that tracking of changes begins from the project's very first modification.  
From this point forward, you will work exclusively in **VSCode**. It's highly recommended to add the following line below the `Description` line in every Profile, VS, or CS `.fsh` file:  

`* insert ConformanceMetadata`
