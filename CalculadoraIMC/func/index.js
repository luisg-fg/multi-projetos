
function calcIMC() {
    let peso = parseFloat(document.getElementById("peso").value);
    let altura = parseFloat(document.getElementById("altura").value); 

    if (isNaN(peso) || isNaN(peso) || peso <= 0 || altura <= 0) {
        alert("Informe valores validos, Por favor!")

    } else {
        resetForm()

        let imc = peso / (altura * altura);
        let resultadoFormatado = imc.toFixed(1)

        document.getElementById("resultadoCalculo").innerText = ("Seu IMC é: " + resultadoFormatado);
            document.getElementById("resultadoCalculo").classList.remove("d-none");

        if (resultadoFormatado <= 18.4) {
            rolarParaElemento("target");
            document.getElementById("pesoAbaixoDoNormal").style.backgroundColor = "#FADA7A";

        } else if (resultadoFormatado <= 24.9) {
            rolarParaElemento("target");
            document.getElementById("pesoNormal").style.backgroundColor = "#B8D576";

        } else if (resultadoFormatado <= 29.9) {
            rolarParaElemento("target");
            document.getElementById("pesoSobrepeso").style.backgroundColor = "#FF9D23";

        } else if (resultadoFormatado <= 34.9) {
            rolarParaElemento("target");
            document.getElementById("pesoObesidadeI").style.backgroundColor = "#A94A4A";
        
        }else if (resultadoFormatado <= 39.9) {
            rolarParaElemento("target");
            document.getElementById("pesoObesidadeII").style.backgroundColor = "#B82132";
    
        } else {
            rolarParaElemento("target");
            document.getElementById("pesoObesidadeIII").style.backgroundColor = "#E52020";
        }
    }
}

function rolarParaElemento(id) {
    let elemento = document.getElementById(id);
    if (elemento) {
        // Rolando a página até o elemento
        elemento.scrollIntoView({ behavior: "smooth", block: "start" });
    } else {
        console.log("Elemento não encontrado.");
    }
}

function formatFloat(input) {
     // Remove tudo que não for número ou ponto
     input.value = input.value.replace(/[^0-9.]/g, '');
    
     // Impede mais de um ponto decimal
     if ((input.value.match(/\./g) || []).length > 1) {
         input.value = input.value.slice(0, -1);
    }
}

function resetForm() {
    // Limpa conteúdo dos inputs.
    document.getElementById('body-form').reset();

    // Remove o estilo inline
    document.querySelectorAll('table tr').forEach(function(row) {row.style.background = '';  });

    document.getElementById("resultadoCalculo").classList.add("d-none");
}

