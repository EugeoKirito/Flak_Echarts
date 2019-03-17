"""empty message

Revision ID: 4b0973a9d53c
Revises: 
Create Date: 2018-10-17 18:03:14.913543

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '4b0973a9d53c'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('tbl_phone_color_count_raw')
    op.drop_table('tbl_phone_size_count_raw')
    op.drop_table('tbl_phone_brand_count_raw')
    op.alter_column('tbl_phone_brand_count', 'fld_brand_name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=255),
               nullable=True)
    op.alter_column('tbl_phone_brand_count', 'fld_sale_count',
               existing_type=mysql.INTEGER(display_width=255),
               nullable=True)
    op.create_unique_constraint(None, 'tbl_phone_brand_count', ['fld_sale_count'])
    op.create_unique_constraint(None, 'tbl_phone_brand_count', ['fld_brand_name'])
    op.alter_column('tbl_phone_color_count', 'fld_phone_color',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=255),
               nullable=True)
    op.alter_column('tbl_phone_color_count', 'fld_sale_count',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=255),
               nullable=True)
    op.create_unique_constraint(None, 'tbl_phone_color_count', ['fld_sale_count'])
    op.create_unique_constraint(None, 'tbl_phone_color_count', ['fld_phone_color'])
    op.alter_column('tbl_phone_size_count', 'fld_phone_size',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=255),
               nullable=True)
    op.alter_column('tbl_phone_size_count', 'fld_sale_count',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=255),
               nullable=True)
    op.create_unique_constraint(None, 'tbl_phone_size_count', ['fld_sale_count'])
    op.create_unique_constraint(None, 'tbl_phone_size_count', ['fld_phone_size'])
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_constraint(None, 'tbl_phone_size_count', type_='unique')
    op.drop_constraint(None, 'tbl_phone_size_count', type_='unique')
    op.alter_column('tbl_phone_size_count', 'fld_sale_count',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=255),
               nullable=False)
    op.alter_column('tbl_phone_size_count', 'fld_phone_size',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=255),
               nullable=False)
    op.drop_constraint(None, 'tbl_phone_color_count', type_='unique')
    op.drop_constraint(None, 'tbl_phone_color_count', type_='unique')
    op.alter_column('tbl_phone_color_count', 'fld_sale_count',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=255),
               nullable=False)
    op.alter_column('tbl_phone_color_count', 'fld_phone_color',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=255),
               nullable=False)
    op.drop_constraint(None, 'tbl_phone_brand_count', type_='unique')
    op.drop_constraint(None, 'tbl_phone_brand_count', type_='unique')
    op.alter_column('tbl_phone_brand_count', 'fld_sale_count',
               existing_type=mysql.INTEGER(display_width=255),
               nullable=False)
    op.alter_column('tbl_phone_brand_count', 'fld_brand_name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=255),
               nullable=False)
    op.create_table('tbl_phone_brand_count_raw',
    sa.Column('fld_brand_name', mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=256), nullable=True),
    sa.Column('fld_sale_count', mysql.INTEGER(display_width=11), autoincrement=False, nullable=True),
    sa.Column('fld_index', mysql.INTEGER(display_width=11), nullable=False),
    sa.PrimaryKeyConstraint('fld_index'),
    mysql_collate='utf8mb4_unicode_ci',
    mysql_default_charset='utf8mb4',
    mysql_engine='InnoDB'
    )
    op.create_table('tbl_phone_size_count_raw',
    sa.Column('fld_phone_size', mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=256), nullable=True),
    sa.Column('fld_sale_count', mysql.INTEGER(display_width=11), autoincrement=False, nullable=True),
    sa.Column('fld_index', mysql.INTEGER(display_width=11), autoincrement=False, nullable=False),
    mysql_collate='utf8mb4_unicode_ci',
    mysql_default_charset='utf8mb4',
    mysql_engine='InnoDB'
    )
    op.create_table('tbl_phone_color_count_raw',
    sa.Column('fld_phone_color', mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=256), nullable=True),
    sa.Column('fld_sale_count', mysql.INTEGER(display_width=11), autoincrement=False, nullable=True),
    sa.Column('fld_index', mysql.INTEGER(display_width=11), autoincrement=False, nullable=False),
    mysql_collate='utf8mb4_unicode_ci',
    mysql_default_charset='utf8mb4',
    mysql_engine='InnoDB'
    )
    # ### end Alembic commands ###
