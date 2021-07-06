if(location.pathname.match("infos/new")){
  document.addEventListener("DOMContentLoaded",() =>{
     let h_value = document.getElementById("info_height")
    h_value.addEventListener("keyup",() =>{
      let h_value = document.getElementById("info_height").value 
    h_value /= 100;
    
    let ave_wei = (h_value * h_value * 22); 
    const result_Ave = document.getElementById("ave-wei") 
    result_Ave.innerHTML = ` 標準体重は${ave_wei}`
  });
  });
};