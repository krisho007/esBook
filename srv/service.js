
module.exports = function (){
    this.on("READ", "Foo", (req)=>{
        console.log("READ Escalations");
        SELECT.from("Escalations").where("Material", "12").then((result)=>{
            if(result.length > 0){
                req.resolve(result[0]);
            }else{
                req.reject("Escalation not found");
            }
        });
    })
}