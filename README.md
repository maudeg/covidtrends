# **covidtrends ( Covid-19 dati Italia )**

[Sito di CovidTrends](https://covidtrends.com)

## CovIndex

Il CovIndex fornisce una indicazione del trend del contagio, analogamente all'indice di riproduzione Rt, utilizzando un algoritmo alternativo a quello di Rt.
L'obiettivo è di avere CovIndex minore di 1, in tal modo i nuovi positivi tendono a diventare sempre di meno. Il CovIndex ha il vantagio di fornire informazioni fino a 2 settimane più recenti rispetto ad Rt. Per ulteriori dettagli consulta la guida sul sito CovidTrends.

## Struttura del repository

```text
covidtrends-data/
│
├── data/
│   ├── curva-epidemica
│   ├── provvedimenti
│   ├── rt-italia
│   ├── servizi-di-controllo
```

## Aggiornamento dei dati

* Dati Rt aggiornati settimanalmente dal sito [ISS](https://www.epicentro.iss.it/coronavirus/sars-cov-2-dashboard)
* Dati servizi di controllo ogni giorno alle 18:00
* Dati provvedimenti legislativi e zone colorate, aggiornati al momento della pubblicazione in Gazzetta Ufficiale
