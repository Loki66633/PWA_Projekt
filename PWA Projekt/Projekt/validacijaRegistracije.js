$(function() {

    $("form[name='validacija']").validate({

      rules: {
        user: {
            required: true,
            maxlength:50,
            minlength:3,
        },
        ime: {
          required: true,
          maxlength:50,
        },
        prezime: {
            required: true,
            maxlength:50,
            },
        password1: {
            required: true,
            maxlength:50,
            minlength:5,
        },
        password2: {
            required: true,
            equalTo: "#password1"
        },
      
      },

      messages: {
        user: {
            required:"Korisničko ime je obavezno.",
            maxlength:"Korisničko ime smije imati maksimalno 50 znakova!",
            minlength:"Korisničko ime mora imati minimalno 3 znaka!",
          },
        ime: {
          required:"Unesite vaše ime.",
          maxlength:"Ime smije imati maksimalno 50 znakova!",
        },
        prezime: {
            required:"Unesite vaše prezime.",
            maxlength:"Prezime smije imati maksimalno 50 znakova!",
          },
          password1: {
            required:"Upišite lozinku.",
            maxlength:"Lozinka smije imati maksimalno 50 znakova!",
            minlength:"Lozinka mora imati minimalno 5 znakova!",
          },
          password2: {
            required:"Ponovite lozinku.",
            equalTo:"Lozinke se moraju podudarati",
          },

     },


      submitHandler: function(form) {
        form.submit();
      }
    });
  });