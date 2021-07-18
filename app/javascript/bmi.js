
  document.addEventListener("DOMContentLoaded",() =>{
     let h_value = document.getElementById("info_height")
     let w_value = document.getElementById("info_weight")
    h_value.addEventListener("keyup",() =>{
      let w_value = document.getElementById("info_weight").value
      let h_value = document.getElementById("info_height").value 
    h_value /= 100;
    
    let bmi = w_value /(h_value * h_value); 
    bmi = Math.floor(bmi * 10) / 10;
    const result_Bmi = document.getElementById("bmi-result") 
    result_Bmi.innerHTML = `BMIは${bmi}`
  });
  });
