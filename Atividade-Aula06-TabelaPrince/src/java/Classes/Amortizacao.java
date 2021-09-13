/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import java.text.DecimalFormat;

/**
 *
 * @author rodri
 */
public class Amortizacao {
    double pmt = 0;
    public Double CalcPrestPrice(double pv, double n, double i){
        double d1 = Math.pow((1+(i/100)),n);
        
        pmt = pv / ((d1-1) / (d1*(i/100)) );
        
        return pmt;
    }
    public Double CalcPrestAmeric(double pv, double i){
        pmt = pv * (i/100);
        
        return pmt;
    }
    public Double CalcPrestConst(double pv, double n){
        pmt = pv / n;
        
        return pmt;
    }
    public String createTable(double pv, double n, double i, double pmt, String a){
        DecimalFormat df = new DecimalFormat("#,##0.00");
        double juros = 0;
        double amortizacao = 0;
        double saldo = pv;
        
        //somatorias
        double jurosSoma = 0;
        double amortizacaoSoma = 0;
        double prestacaoSoma = 0;
        
        String table = "<table class='table table-bordered container-fluid' style='width: 800px;'><tr>"
                + "<th>Nº</th>"
                + "<th>Prestação</th>"
                + "<th>Juros</th>"
                + "<th>Amortização</th>"
                + "<th>Saldo Devedor</th>"
                + "<tr>"
                + "<tr>"
                + "<td>"+0+"</td>"
                + "<td>"+df.format(0)+"</td>"
                + "<td>"+df.format(juros)+"</td>"
                + "<td>"+df.format(amortizacao)+"</td>"
                + "<td>"+df.format(saldo)+"</td>"
                + "</tr>";
        if (a=="const")
            amortizacao = pmt;
        for(int j = 1; j <= n; j++)
        {
            if (a=="americ" && j==n)
                pmt = saldo + pmt;
            
            juros = (saldo*(i/100));
            
            if (a=="const")
                pmt = amortizacao+juros;
            
            prestacaoSoma = prestacaoSoma + pmt;
            jurosSoma = jurosSoma + juros;
            if (a=="americ" && j==n)
                amortizacao=saldo;
            else if (a=="price")
                amortizacao = pmt - juros;
            amortizacaoSoma = amortizacaoSoma + amortizacao;
            saldo = saldo - amortizacao;
            
            if (saldo<0)
                saldo=0;
            table = table + "<tr>"
                    + "<td>"+j+"</td>"
                    + "<td>"+df.format(pmt)+"</td>"
                    + "<td>"+df.format(juros)+"</td>"
                    + "<td>"+df.format(amortizacao)+"</td>"
                    + "<td>"+df.format(saldo)+"</td>"
                    + "</tr>";
        }
        table = table +"<tr>"
                    + "<td>TOTAL</td>"
                    + "<td>"+df.format(prestacaoSoma)+"</td>"
                    + "<td>"+df.format(jurosSoma)+"</td>"
                    + "<td>"+df.format(amortizacaoSoma)+"</td>"
                    + "<td>"+df.format(saldo)+"</td>"
                    + "</tr>" +"</table>";
        return table;
    }
}
