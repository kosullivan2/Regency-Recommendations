import mysql.connector
from Regencyconfig import USER, HOST, PASSWORD

class NoAuthorsCorrespondToKeywordError (Exception):
    pass
class NoBooksCorrespondToKeywordError (Exception):
    pass


def __init__(self, dbname, answer):
    self.dbname = dbname
    self.answer = answer

def connect_to_db(dbname):
    connection = mysql.connector.connect(
    host=HOST,
    user=USER,
    password=PASSWORD,
    auth_plugin='mysql_native_password',
    database=dbname)
    return connection

def get_author_recommendation(answer):
    db_connection=None
    try:
        db_name = 'regency_recommendations'
        db_connection = connect_to_db(db_name)
        cur = db_connection.cursor()
        query = "SELECT author_name, keyword FROM regency_authors WHERE keyword = '{}' ORDER BY author_name".format(answer)
        cur.execute(query)
        result = cur.fetchall()
        cur.close()
        return result
    except Exception:
        raise NoAuthorsCorrespondToKeywordError
    finally:
        if db_connection:
            db_connection.close()

    # def get_book_recommendation(answer):
    #     connection=None
    #     try:
    #         db_name='regency_recommendations'
    #         db_connection = connect_to_db(db_name)
    #         cur = db_connection.cursor()
    #         query = 'SELECT book_id, author_id, title, keyword FROM regency_books WHERE keyword = {}'.format(answer)
    #         cur.execute(query)
    #         result = cur.fetchall()
    #         cur.close()
    #         return result
    #     except:
    #         raise NoBooksCorrespondToKeywordError
    #     finally:
    #         if db_connection:
    #             db_connection.close()

if __name__ == '__main__':
    get_author_recommendation(1)