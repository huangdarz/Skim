```const functions = require("firebase-functions");
const { getStorage, ref, listAll, getMetadata, getDownloadURL } = require("firebase/storage");
const { initializeApp, applicationDefault } = require("firebase/app");
const { readFileSync, createReadStream } = require("fs");
const { AzureKeyCredential, DocumentAnalysisClient } = require("@azure/ai-form-recognizer");
const { getFirestore, doc, setDoc, addDoc, collection, createId, DocumentReference } = require("firebase/firestore");

var config = {
    apiKey: "AIzaSyClhINWcgNFRVwIZEGxIke9Fj724MUznJo",
    authDomain: "jdlk-hackathon.firebaseapp.com",
    databaseURL: "https://jdlk-hackathon.firebaseio.com",
    projectId: "jdlk-hackathon",
    storageBucket: "jdlk-hackathon.appspot.com",
  };

const key = "778960cebb61453ab666e20c6160e637";
const endpoint = "https://recepit-scanner.cognitiveservices.azure.com/";

// const config = JSON.parse(readFileSync('google-services.json'));
const app = initializeApp(config); 
const storage = getStorage();
const listRef = ref(storage, "gs://jdlk-hackathon.appspot.com/receipts");
const db = getFirestore();
const dbRef = collection(db, "Receipts");
const id = doc(dbRef).id;

async function getReceiptData(receiptURL) {
   const client = new DocumentAnalysisClient(endpoint, new AzureKeyCredential(key));
   const poller = await client.beginAnalyzeDocument("prebuilt-receipt", receiptURL);
   const { documents: [result] } = await poller.pollUntilDone();
   let data = {};
   let total = 0;

   if (result) {
    const { Items, Total, MerchantName, TransactionTime, TransactionDate } = result.fields;
      data.Store = MerchantName.content;
      data.Date = TransactionDate.content;
      data.Time = TransactionTime.content;
      data.Total = Total.value;
      items = [];
    for (const item of (Items && Items.values) || []) {
    try { 
      const { Description, TotalPrice, Quantity} = item.properties;
      temp = {name: Description.content, 
              price: TotalPrice.value, 
              quantity: Quantity.value,
              receipt: new DocumentReference(dbRef, "Receipts/" + id)};
      items.push(temp);
    } catch(err){
      console.log(err);
    }}
    return data;
  } else {
    throw new Error("Expected at least one receipt in the result.");
  }
 }

  listAll(listRef).then((res) => {
    getMetadata(res.items[res.items.length - 1]).then((metadata) => {
      getDownloadURL(ref(storage,"gs://jdlk-hackathon.appspot.com/" + metadata.fullPath)).then((url) => {
        getReceiptData(url).then((data) => {
          console.log(data);
          for (let i = 0; i < items.length; i++) {
            console.log(items[i]);
            addDoc(collection(db, "items"), items[i]);
          }
          setDoc(doc(db, "Receipts", id), data);
        });
      })
    });
  });

exports.getReceiptData = functions.https.onRequest((request, respond) => {
});
```