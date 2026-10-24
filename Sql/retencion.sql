/*14. Actividad 7 — Retención de datos
La organización debe definir qué información conserva y durante cuánto tiempo.
Primero identificar los registros que hipotéticamente superan el periodo de conservación 
establecido.
Para este ejercicio se utilizará un periodo de cinco años:*/

SELECT * FROM clientes WHERE fecha_alta <   CURRENT_DATE - INTERVAL '5 years';

/*15. Verificación final
Al finalizar el laboratorio, comprobar los siguientes escenarios.
Área de soporte
Debe poder consultar:*/
SELECT * FROM v_clientes_soporte;
--pero no acceder directamente a:
SELECT * FROM clientes;
--Área de analítica
--Debe poder consultar:
SELECT * FROM analitica.clientes;
--pero no:
SELECT * FROM pii.mapa_cliente;
--ni:
SELECT * FROM public.clientes