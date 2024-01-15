
# Librerias ---------------------------------------------------------------

library(plan)

# Idioma plot() -----------------------------------------------------------

Sys.setlocale("LC_TIME", "es_ES.UTF-8")


# pdf set -----------------------------------------------------------------

pdf(file = "carta_gantt_sia.pdf", 
    width = 25, 
    height = 10) 

# Gantt -------------------------------------------------------------------


gt_object <- read.gantt("carta_gantt_sia.csv") 
plot(gt_object,event.label=c('Postulación\nProyecto SIA',
                             'Adjudicación\nProyecto SIA',
                             'Presentación\nUnidad Académica',
                             'Informe Anual\nANID',
                             'Informe\nAnual ANID',
                             'Envío\nCongreso',
                             'Presentación\nCongreso',
                             'Seminario\nCierre proyecto',
                             'Informe Final\nANID',
                             'Postulación\nFondos UC',
                             'Postulación\nFondos UC',
                             'Plan Continuidad\nUnidad Académica'),
     event.time=c('2024-01-16',
                  '2024-04-15',
                  '2024-08-15',
                  '2025-06-15',
                  '2026-03-15',
                  '2026-01-01',
                  '2026-09-15',
                  '2026-12-15',
                  '2027-06-15',                  
                  '2025-09-15',
                  '2027-09-15',
                  '2028-03-01'),
     col.event=c("red"),
     col.done=c("lightblue"),
     col.notdone=c("pink"),
     font.event=1,
     cex=1,
     cex.event=1,
     xlim = c('2023-06-01','2028-06-01')
)


legend("topright", pch=22, pt.cex=2, cex=1, pt.bg=c("lightblue", "pink"),
       border="black",
       legend=c("Completo", "No ejecutado"), bg="white", xpd=TRUE)


# Exporto pdf -------------------------------------------------------------

dev.off()
