import { JWT_TOKEN } from "../config";



export async function fileUpload(){

const config = "";

const fileObject = document.getElementById("image");
console.log(fileObject.files[0]);

  try {
    const formData = new FormData();
    const file = fileObject.files[0];

    formData.append("file", file);
    console.log("Trying to upload file")

    const request = await fetch("https://uploads.pinata.cloud/v3/files", {
      method: "POST",
      headers: {
        Authorization: `Bearer ${JWT_TOKEN}`,
      },
      body: formData,
    });
    const response = await request.json();
    console.log(response);
    console.log(response.data.data.cid);

  } catch (error) {
    console.log(error);
  }



};

document.getElementById("uploadButton").addEventListener("click", fileUpload);

