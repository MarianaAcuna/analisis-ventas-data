import pandas as pd
from sqlalchemy import create_engine

USER = 'root'
PASSWORD = os.getenv('DB_PASSWORD')
HOST = 'localhost'
PORT = '3306'
DATABASE = 'analisis_ventas'

engine = create_engine(f'mysql+pymysql://{USER}:{PASSWORD}@{HOST}:{PORT}/{DATABASE}')

# 1. leer CSV
df = pd.read_csv('data/raw/sales_data.csv')

# 2. limpieza básica
df.dropna(inplace=True)
df.columns = df.columns.str.strip()

# 3. cargar a MySQL
df.to_sql('ventas', con=engine, if_exists='replace', index=False)

print("Datos cargados correctamente a MySQL")