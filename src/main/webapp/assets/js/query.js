

const loginEmail = "<%=LoginEmail%>"
const bookId = "<%=bookingId%>"


//const id = urls.get("booking_id");
//console.log(id);
//
//const booking_id = document.getElementById("book_id");
//booking_id.value = id;
//const last_email = localStorage.getItem("logged_in");



const submit = document.getElementById("sub");


// let messages=document.getElementById("message").value;

submit.addEventListener("click", (e) => {
  e.preventDefault();
  Email.send({
    // SecureToken :"3a08a71f-87c2-445b-9c68-5897a753d8bc",
    Host: "smtp.elasticemail.com",
    Username: "nitthishris@gmail.com",
    Password: "0EA9A69E9E8FDA478FD3B3C77EC313054E29",
    To: "nitthishris@gmail.com",
    From: "nitthishris@gmail.com",
    Subject: "This is the message from the contact form",
    Body:
      `My booking id is` +
      ` ` +
      ` " ${bookId} " ${loginEmail} My question is${
        document.getElementById("message").value
      }`,
  }).then((message) => alert(message));
  
  console.log("message sent");
});/**
 * 
 */