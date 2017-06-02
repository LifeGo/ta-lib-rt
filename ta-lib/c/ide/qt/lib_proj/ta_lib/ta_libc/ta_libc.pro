TEMPLATE = lib
CONFIG -= qt
CONFIG += staticlib

TARGET = ta_libc

# debug/release dependent options.
debug:DEFINES   *= TA_DEBUG
debug:DEFINES   *= _DEBUG
DEFINES        += TA_SINGLE_THREAD
thread:DEFINES -= TA_SINGLE_THREAD
# Platform dependent options.
win32:DEFINES         *= WIN32
win32-msvc:DEFINES    *= _MBCS _LIB
freebsd-g++:LIBS      -= -ldl
freebsd-g++:INCLUDEPATH += /usr/local/include

INCLUDEPATH += ./../../../../../include \
               ./../../../../../src/ta_common/imatix/sfl \
               ./../../../../../src/ta_common \
               ./../../../../../src/ta_common/mt \
               ./../../../../../src/ta_abstract \
               ./../../../../../src/ta_abstract/frames \
               ./../../../../../src/ta_abstract/tables

SOURCES += \
   ../../../../../src/ta_common/ta_global.c \
   ../../../../../src/ta_common/ta_retcode.c \
   ../../../../../src/ta_common/ta_version.c \
    ../../../../../src/ta_func/ta_ACCBANDS.c \
    ../../../../../src/ta_func/ta_ACOS.c \
    ../../../../../src/ta_func/ta_AD.c \
    ../../../../../src/ta_func/ta_ADD.c \
    ../../../../../src/ta_func/ta_ADOSC.c \
    ../../../../../src/ta_func/ta_ADX.c \
    ../../../../../src/ta_func/ta_ADXR.c \
    ../../../../../src/ta_func/ta_APO.c \
    ../../../../../src/ta_func/ta_AROON.c \
    ../../../../../src/ta_func/ta_AROONOSC.c \
    ../../../../../src/ta_func/ta_ASIN.c \
    ../../../../../src/ta_func/ta_ATAN.c \
    ../../../../../src/ta_func/ta_ATR.c \
    ../../../../../src/ta_func/ta_AVGPRICE.c \
    ../../../../../src/ta_func/ta_AVGDEV.c \
    ../../../../../src/ta_func/ta_BBANDS.c \
    ../../../../../src/ta_func/ta_BETA.c \
    ../../../../../src/ta_func/ta_BOP.c \
    ../../../../../src/ta_func/ta_CCI.c \
    ../../../../../src/ta_func/ta_CDL2CROWS.c \
    ../../../../../src/ta_func/ta_CDL3BLACKCROWS.c \
    ../../../../../src/ta_func/ta_CDL3INSIDE.c \
    ../../../../../src/ta_func/ta_CDL3LINESTRIKE.c \
    ../../../../../src/ta_func/ta_CDL3OUTSIDE.c \
    ../../../../../src/ta_func/ta_CDL3STARSINSOUTH.c \
    ../../../../../src/ta_func/ta_CDL3WHITESOLDIERS.c \
    ../../../../../src/ta_func/ta_CDLABANDONEDBABY.c \
    ../../../../../src/ta_func/ta_CDLADVANCEBLOCK.c \
    ../../../../../src/ta_func/ta_CDLBELTHOLD.c \
    ../../../../../src/ta_func/ta_CDLBREAKAWAY.c \
    ../../../../../src/ta_func/ta_CDLCLOSINGMARUBOZU.c \
    ../../../../../src/ta_func/ta_CDLCONCEALBABYSWALL.c \
    ../../../../../src/ta_func/ta_CDLCOUNTERATTACK.c \
    ../../../../../src/ta_func/ta_CDLDARKCLOUDCOVER.c \
    ../../../../../src/ta_func/ta_CDLDOJI.c \
    ../../../../../src/ta_func/ta_CDLDOJISTAR.c \
    ../../../../../src/ta_func/ta_CDLDRAGONFLYDOJI.c \
    ../../../../../src/ta_func/ta_CDLENGULFING.c \
    ../../../../../src/ta_func/ta_CDLEVENINGDOJISTAR.c \
    ../../../../../src/ta_func/ta_CDLEVENINGSTAR.c \
    ../../../../../src/ta_func/ta_CDLGAPSIDESIDEWHITE.c \
    ../../../../../src/ta_func/ta_CDLGRAVESTONEDOJI.c \
    ../../../../../src/ta_func/ta_CDLHAMMER.c \
    ../../../../../src/ta_func/ta_CDLHANGINGMAN.c \
    ../../../../../src/ta_func/ta_CDLHARAMI.c \
    ../../../../../src/ta_func/ta_CDLHARAMICROSS.c \
    ../../../../../src/ta_func/ta_CDLHIGHWAVE.c \
    ../../../../../src/ta_func/ta_CDLHIKKAKE.c \
    ../../../../../src/ta_func/ta_CDLHIKKAKEMOD.c \
    ../../../../../src/ta_func/ta_CDLHOMINGPIGEON.c \
    ../../../../../src/ta_func/ta_CDLIDENTICAL3CROWS.c \
    ../../../../../src/ta_func/ta_CDLINNECK.c \
    ../../../../../src/ta_func/ta_CDLINVERTEDHAMMER.c \
    ../../../../../src/ta_func/ta_CDLKICKING.c \
    ../../../../../src/ta_func/ta_CDLKICKINGBYLENGTH.c \
    ../../../../../src/ta_func/ta_CDLLADDERBOTTOM.c \
    ../../../../../src/ta_func/ta_CDLLONGLEGGEDDOJI.c \
    ../../../../../src/ta_func/ta_CDLLONGLINE.c \
    ../../../../../src/ta_func/ta_CDLMARUBOZU.c \
    ../../../../../src/ta_func/ta_CDLMATCHINGLOW.c \
    ../../../../../src/ta_func/ta_CDLMATHOLD.c \
    ../../../../../src/ta_func/ta_CDLMORNINGDOJISTAR.c \
    ../../../../../src/ta_func/ta_CDLMORNINGSTAR.c \
    ../../../../../src/ta_func/ta_CDLONNECK.c \
    ../../../../../src/ta_func/ta_CDLPIERCING.c \
    ../../../../../src/ta_func/ta_CDLRICKSHAWMAN.c \
    ../../../../../src/ta_func/ta_CDLRISEFALL3METHODS.c \
    ../../../../../src/ta_func/ta_CDLSEPARATINGLINES.c \
    ../../../../../src/ta_func/ta_CDLSHOOTINGSTAR.c \
    ../../../../../src/ta_func/ta_CDLSHORTLINE.c \
    ../../../../../src/ta_func/ta_CDLSPINNINGTOP.c \
    ../../../../../src/ta_func/ta_CDLSTALLEDPATTERN.c \
    ../../../../../src/ta_func/ta_CDLSTICKSANDWICH.c \
    ../../../../../src/ta_func/ta_CDLTAKURI.c \
    ../../../../../src/ta_func/ta_CDLTASUKIGAP.c \
    ../../../../../src/ta_func/ta_CDLTHRUSTING.c \
    ../../../../../src/ta_func/ta_CDLTRISTAR.c \
    ../../../../../src/ta_func/ta_CDLUNIQUE3RIVER.c \
    ../../../../../src/ta_func/ta_CDLUPSIDEGAP2CROWS.c \
    ../../../../../src/ta_func/ta_CDLXSIDEGAP3METHODS.c \
    ../../../../../src/ta_func/ta_CEIL.c \
    ../../../../../src/ta_func/ta_CMO.c \
    ../../../../../src/ta_func/ta_CORREL.c \
    ../../../../../src/ta_func/ta_COS.c \
    ../../../../../src/ta_func/ta_COSH.c \
    ../../../../../src/ta_func/ta_DEMA.c \
    ../../../../../src/ta_func/ta_DIV.c \
    ../../../../../src/ta_func/ta_DX.c \
    ../../../../../src/ta_func/ta_EMA.c \
    ../../../../../src/ta_func/ta_EXP.c \
    ../../../../../src/ta_func/ta_FLOOR.c \
    ../../../../../src/ta_func/ta_HT_DCPERIOD.c \
    ../../../../../src/ta_func/ta_HT_DCPHASE.c \
    ../../../../../src/ta_func/ta_HT_PHASOR.c \
    ../../../../../src/ta_func/ta_HT_SINE.c \
    ../../../../../src/ta_func/ta_HT_TRENDLINE.c \
    ../../../../../src/ta_func/ta_HT_TRENDMODE.c \
    ../../../../../src/ta_func/ta_IMI.c \
    ../../../../../src/ta_func/ta_KAMA.c \
    ../../../../../src/ta_func/ta_LINEARREG.c \
    ../../../../../src/ta_func/ta_LINEARREG_ANGLE.c \
    ../../../../../src/ta_func/ta_LINEARREG_INTERCEPT.c \
    ../../../../../src/ta_func/ta_LINEARREG_SLOPE.c \
    ../../../../../src/ta_func/ta_LN.c \
    ../../../../../src/ta_func/ta_LOG10.c \
    ../../../../../src/ta_func/ta_MA.c \
    ../../../../../src/ta_func/ta_MACD.c \
    ../../../../../src/ta_func/ta_MACDEXT.c \
    ../../../../../src/ta_func/ta_MACDFIX.c \
    ../../../../../src/ta_func/ta_MAMA.c \
    ../../../../../src/ta_func/ta_MAVP.c \
    ../../../../../src/ta_func/ta_MAX.c \
    ../../../../../src/ta_func/ta_MAXINDEX.c \
    ../../../../../src/ta_func/ta_MEDPRICE.c \
    ../../../../../src/ta_func/ta_MFI.c \
    ../../../../../src/ta_func/ta_MIDPOINT.c \
    ../../../../../src/ta_func/ta_MIDPRICE.c \
    ../../../../../src/ta_func/ta_MIN.c \
    ../../../../../src/ta_func/ta_MININDEX.c \
    ../../../../../src/ta_func/ta_MINMAX.c \
    ../../../../../src/ta_func/ta_MINMAXINDEX.c \
    ../../../../../src/ta_func/ta_MINUS_DI.c \
    ../../../../../src/ta_func/ta_MINUS_DM.c \
    ../../../../../src/ta_func/ta_MOM.c \
    ../../../../../src/ta_func/ta_MULT.c \
    ../../../../../src/ta_func/ta_NATR.c \
    ../../../../../src/ta_func/ta_NVI.c \
    ../../../../../src/ta_func/ta_OBV.c \
    ../../../../../src/ta_func/ta_PLUS_DI.c \
    ../../../../../src/ta_func/ta_PLUS_DM.c \
    ../../../../../src/ta_func/ta_PPO.c \
    ../../../../../src/ta_func/ta_PVI.c \
    ../../../../../src/ta_func/ta_PVT.c \
    ../../../../../src/ta_func/ta_ROC.c \
    ../../../../../src/ta_func/ta_ROCP.c \
    ../../../../../src/ta_func/ta_ROCR.c \
    ../../../../../src/ta_func/ta_ROCR100.c \
    ../../../../../src/ta_func/ta_RSI.c \
    ../../../../../src/ta_func/ta_SAR.c \
    ../../../../../src/ta_func/ta_SAREXT.c \
    ../../../../../src/ta_func/ta_SIN.c \
    ../../../../../src/ta_func/ta_SINH.c \
    ../../../../../src/ta_func/ta_SMA.c \
    ../../../../../src/ta_func/ta_SQRT.c \
    ../../../../../src/ta_func/ta_STDDEV.c \
    ../../../../../src/ta_func/ta_STOCH.c \
    ../../../../../src/ta_func/ta_STOCHF.c \
    ../../../../../src/ta_func/ta_STOCHRSI.c \
    ../../../../../src/ta_func/ta_SUB.c \
    ../../../../../src/ta_func/ta_SUM.c \
    ../../../../../src/ta_func/ta_T3.c \
    ../../../../../src/ta_func/ta_TAN.c \
    ../../../../../src/ta_func/ta_TANH.c \
    ../../../../../src/ta_func/ta_TEMA.c \
    ../../../../../src/ta_func/ta_TRANGE.c \
    ../../../../../src/ta_func/ta_TRIMA.c \
    ../../../../../src/ta_func/ta_TRIX.c \
    ../../../../../src/ta_func/ta_TSF.c \
    ../../../../../src/ta_func/ta_TYPPRICE.c \
    ../../../../../src/ta_func/ta_ULTOSC.c \
    ../../../../../src/ta_func/ta_VAR.c \
    ../../../../../src/ta_func/ta_WCLPRICE.c \
    ../../../../../src/ta_func/ta_WILLR.c \
    ../../../../../src/ta_func/ta_WMA.c \
    ../../../../../src/ta_func/ta_utility.c \
    ../../../../../src/ta_abstract/ta_abstract.c \
    ../../../../../src/ta_abstract/ta_def_ui.c \
    ../../../../../src/ta_abstract/ta_func_api.c \
    ../../../../../src/ta_abstract/ta_group_idx.c \
    ../../../../../src/ta_abstract/frames/ta_frame.c \
    ../../../../../src/ta_abstract/tables/table_a.c \
    ../../../../../src/ta_abstract/tables/table_b.c \
    ../../../../../src/ta_abstract/tables/table_c.c \
    ../../../../../src/ta_abstract/tables/table_d.c \
    ../../../../../src/ta_abstract/tables/table_e.c \
    ../../../../../src/ta_abstract/tables/table_f.c \
    ../../../../../src/ta_abstract/tables/table_g.c \
    ../../../../../src/ta_abstract/tables/table_h.c \
    ../../../../../src/ta_abstract/tables/table_i.c \
    ../../../../../src/ta_abstract/tables/table_j.c \
    ../../../../../src/ta_abstract/tables/table_k.c \
    ../../../../../src/ta_abstract/tables/table_l.c \
    ../../../../../src/ta_abstract/tables/table_m.c \
    ../../../../../src/ta_abstract/tables/table_n.c \
    ../../../../../src/ta_abstract/tables/table_o.c \
    ../../../../../src/ta_abstract/tables/table_p.c \
    ../../../../../src/ta_abstract/tables/table_q.c \
    ../../../../../src/ta_abstract/tables/table_r.c \
    ../../../../../src/ta_abstract/tables/table_s.c \
    ../../../../../src/ta_abstract/tables/table_t.c \
    ../../../../../src/ta_abstract/tables/table_u.c \
    ../../../../../src/ta_abstract/tables/table_v.c \
    ../../../../../src/ta_abstract/tables/table_w.c \
    ../../../../../src/ta_abstract/tables/table_x.c \
    ../../../../../src/ta_abstract/tables/table_y.c \
    ../../../../../src/ta_abstract/tables/table_z.c


HEADERS += \
    ../../../../../src/ta_common/ta_global.h \
    ../../../../../src/ta_common/ta_magic_nb.h \
    ../../../../../src/ta_common/ta_pragma.h \
    ../../../../../src/ta_common/ta_memory.h \
    ../../../../../src/ta_abstract/ta_frame_priv.h \
    ../../../../../src/ta_abstract/ta_def_ui.h \
    ../../../../../src/ta_abstract/frames/ta_frame.h \
    ../../../../../include/ta_common.h \
    ../../../../../include/ta_defs.h \
    ../../../../../include/ta_func.h \
    ../../../../../include/ta_abstract.h


include(../Copy2Lib.pri)
