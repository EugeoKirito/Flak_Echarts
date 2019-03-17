import json
from flask import Blueprint, render_template,jsonify
from app.models import Tbl_Phone_Brand_Count,Tbl_Phone_Color_Count,Tbl_Phone_Size_Count
from app.extensions import db
from sqlalchemy import *

main = Blueprint('main', __name__)


@main.route('/')
def index():
    return render_template('/index.html')

@main.route('/index/')
def display():
    tpbc_res = Tbl_Phone_Brand_Count.query.order_by(desc('fld_sale_count')).all()
    tpcc_res = Tbl_Phone_Color_Count.query.order_by(desc('fld_sale_count')).all()
    tpsc_res = Tbl_Phone_Size_Count.query.order_by(desc('fld_sale_count')).all()
    return render_template('/main/index.html',tpbc_res=tpbc_res,tpcc_res=tpcc_res,tpsc_res=tpsc_res)


@main.route('/data/')
def data():
    tpbc_res = Tbl_Phone_Brand_Count.query.order_by(desc('fld_sale_count')).all()
    tpbc_data = [{tpbc.fld_brand_name: tpbc.fld_sale_count} for tpbc in tpbc_res]
    print (tpbc_data)

    tpcc_res = Tbl_Phone_Color_Count.query.order_by(desc('fld_sale_count')).all()
    tpcc_data = [{tpbc.fld_phone_color: tpbc.fld_sale_count} for tpbc in tpcc_res]

    tpsc_res = Tbl_Phone_Size_Count.query.order_by(desc('fld_sale_count')).all()
    tpsc_data = [{tpbc.fld_phone_size: tpbc.fld_sale_count} for tpbc in tpsc_res]

    return render_template('/main/index.html', tpbc_data=json.dumps(tpbc_data, ensure_ascii=False),tpcc_data=json.dumps(tpcc_data, ensure_ascii=False),tpsc_data=json.dumps(tpsc_data, ensure_ascii=False))