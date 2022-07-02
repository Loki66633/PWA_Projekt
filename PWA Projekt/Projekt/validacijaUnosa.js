$(function() {

    $("form[name='prijava']").validate({

      rules: {
        naslov: {
          required: true,
          maxlength:100,
      },
      kratki_sadrzaj: {
        required: true,
        maxlength:180,
      },
      sadrzaj: {
          required: true,
        },
      
      },

      messages: {
        naslov: {
          required:"Naslov članka je obavezan!",
          maxlength:"Članak smije imati maksimalno 100 znakova!",
        },
        kratki_sadrzaj: {
          required:"Kratki sadržaj članka je obavezan!",
          maxlength:"Kratki sadržaj smije imati maksimalno 180 znakova!",
          },
        sadrzaj: {
          required:"Morate upisati sadržaj vijesti!",
        },

     },


      submitHandler: function(form) {
        form.submit();
      }
    });
  });