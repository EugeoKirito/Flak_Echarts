from app.extensions import db

class Tbl_Phone_Color_Count(db.Model):
    __tablename__ = 'tbl_phone_color_count'
    fld_index = db.Column(db.Integer, nullable=False, primary_key=True, autoincrement=True)
    fld_phone_color= db.Column(db.String(256), nullable=False)
    fld_sale_count = db.Column(db.Integer, nullable=False)

