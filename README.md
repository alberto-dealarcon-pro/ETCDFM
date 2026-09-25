# ETCDFM
Extracción, Transformación y Carga de Datos desde Fuentes Múltiples

Módulo profesional 5104 del Curso de Especialización en Aprendizaje Automático: Gestión de Datos y Entrenamiento.
Curso académico 2026-2027.

> **Antes de empezar**, prepara tu entorno siguiendo el cuaderno
> [`UD1/UD1_00_Entorno_y_requisitos.ipynb`](UD1/UD1_00_Entorno_y_requisitos.ipynb)
> (Git + VS Code + uv, y `uv sync` para instalar las librerías).

## Estructura

```
ETCDFM/
├── pyproject.toml / uv.lock        Librerías del módulo (versiones fijadas)
├── .python-version                 Versión de Python (3.12)
├── UD1/   Tipología y características de las fuentes de datos
│   ├── Bloque_1_Naturaleza_y_clasificacion/
│   ├── Bloque_2_Sistemas_de_almacenamiento/
│   ├── Bloque_3_Procesamiento_masivo/
│   └── Bloque_4_Pipelines_ETL_ELT/
├── UD2/   Extracción y carga desde ficheros de texto estructurados
│   ├── Bloque_1_Ficheros_planos_CSV/
│   ├── Bloque_2_JSON_y_XML/
│   └── Bloque_3_Formatos_ML_Parquet_Arrow/
├── UD3/   Extracción y carga desde bases de datos relacionales
│   ├── Bloque_1_SQL_consultas_y_extraccion/
│   ├── Bloque_2_Transformaciones_complejas/
│   └── Bloque_3_Carga_y_feature_stores/
├── UD4/   Extracción y carga desde bases de datos NoSQL
│   ├── Bloque_1_Bases_de_datos_documentales/
│   ├── Bloque_2_Clave_valor_y_columnar/
│   └── Bloque_3_Bases_vectoriales/
├── UD5/   Extracción desde fuentes no estructuradas
│   ├── Bloque_1_APIs_REST/
│   ├── Bloque_2_Web_semantica_y_SPARQL/
│   └── Bloque_3_IoT_y_SCADA/
└── mis_cuadernos/                  Tu carpeta personal (no se sube a GitHub)
```

## Uso diario

```powershell
git pull     # traer los materiales nuevos
uv sync      # actualizar las librerías si han cambiado
```
