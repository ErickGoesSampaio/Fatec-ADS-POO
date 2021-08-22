/**
 * Validar campo obrigatorio
 *
 * @author Bryan Santos 
 */

function validar() {
    let op = formCalc.op.value;
    let n1 = formCalc.n1.value;
    let n2 = formCalc.n2.value;
    if (n1 === "") {
        alert('Digite um número');
        formCalc.n1.focus();
        return false;
    } else if (op === "") {
        alert('Selecione uma operação');
        formCalc.op.focus();
        return false;
    } else if (n2 === "") {
        alert('Digite um número');
        formCalc.n2.focus();
        return false;
    } else {
        document.forms["formCalc"].submit();
    }
}

