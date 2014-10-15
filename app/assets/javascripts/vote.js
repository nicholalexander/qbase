$(document).ready(function(){
  console.log("hello from vote.js")

  $(".up-vote").click(function(){
    console.log("you clicked the up vote icon")

    $.ajax({ 
      data: {id: this.id},
      type: "post",
      url: "/vote",
      success: function(data){
        console.log ('success', data);
        $("#answer_" + data["answer_id"]).html(data["answer_votes"])
      }
    });

  });

});
