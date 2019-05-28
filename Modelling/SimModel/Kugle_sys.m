function dYdt = Kugle_sys(t,Y,g,m1,m2,m3,l1,l2,l3)
%KUGLE_SYS
%    DYDT = KUGLE_SYS(T,Y,G,M1,M2,M3,L1,L2,L3)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    06-Apr-2019 17:32:05

t3 = Y(5);
t2 = cos(t3);
t4 = t2.^2;
t5 = m2.^2;
t6 = sin(t3);
t7 = m3.^2;
t8 = t6.^2;
t10 = Y(1);
t11 = Y(3);
t12 = t10-t11;
t9 = cos(t12);
t13 = t9.^2;
t14 = -t3+t10;
t15 = cos(t14);
t16 = -t3+t11;
t17 = cos(t16);
t18 = cos(t10);
t19 = cos(t11);
t20 = sin(t10);
t21 = sin(t11);
t22 = Y(4);
t23 = sin(t12);
t24 = t22.^2;
t25 = Y(6);
t26 = sin(t14);
t27 = t25.^2;
t28 = Y(2);
t29 = t28.^2;
t30 = sin(t16);
t31 = t21.^2;
t32 = t4.*t5;
t33 = t4.*t7;
t34 = t5.*t8;
t35 = t7.*t8;
t36 = m1.*m2.*t4;
t37 = m1.*m3.*t4;
t38 = m2.*m3.*t4.*2.0;
t39 = m1.*m2.*t8;
t40 = m1.*m3.*t8;
t41 = m2.*m3.*t8.*2.0;
t42 = t2.*t7.*t9.*t17.*t18;
t43 = t2.*t7.*t9.*t15.*t19;
t44 = t6.*t7.*t9.*t17.*t20;
t45 = t6.*t7.*t9.*t15.*t21;
t46 = m2.*m3.*t2.*t9.*t17.*t18;
t47 = m2.*m3.*t2.*t9.*t15.*t19;
t48 = m2.*m3.*t6.*t9.*t17.*t20;
t49 = m2.*m3.*t6.*t9.*t15.*t21;
t50 = t32+t33+t34+t35+t36+t37+t38+t39+t40+t41+t42+t43+t44+t45+t46+t47+t48+t49-t4.*t5.*t13-t4.*t7.*t13-t5.*t8.*t13-t7.*t8.*t13-m2.*m3.*t4.*t13.*2.0-m2.*m3.*t8.*t13.*2.0-t2.*t7.*t15.*t18-t2.*t7.*t17.*t19-t6.*t7.*t15.*t20-t6.*t7.*t17.*t21-m2.*m3.*t2.*t15.*t18-m1.*m3.*t2.*t17.*t19-m2.*m3.*t2.*t17.*t19-m2.*m3.*t6.*t15.*t20-m1.*m3.*t6.*t17.*t21-m2.*m3.*t6.*t17.*t21;
t51 = 1.0./t50;
t52 = t20.^2;
dYdt = [t28;-(t51.*(g.*t6.*t7.*t15-g.*t4.*t5.*t20-g.*t4.*t7.*t20-g.*t5.*t8.*t20-g.*t7.*t8.*t20+g.*m2.*m3.*t6.*t15-g.*m1.*m2.*t4.*t20-g.*m1.*m3.*t4.*t20-g.*m2.*m3.*t4.*t20.*2.0-g.*m1.*m2.*t8.*t20-g.*m1.*m3.*t8.*t20-g.*m2.*m3.*t8.*t20.*2.0+g.*t4.*t5.*t9.*t21-g.*t6.*t7.*t9.*t17+g.*t4.*t7.*t9.*t21+g.*t5.*t8.*t9.*t21+g.*t7.*t8.*t9.*t21-g.*t6.*t7.*t15.*t31+l2.*t4.*t5.*t23.*t24+l2.*t4.*t7.*t23.*t24+l2.*t5.*t8.*t23.*t24+l2.*t7.*t8.*t23.*t24+l3.*t4.*t7.*t26.*t27+l3.*t7.*t8.*t26.*t27+l2.*m2.*m3.*t4.*t23.*t24.*2.0+l2.*m2.*m3.*t8.*t23.*t24.*2.0+l3.*m2.*m3.*t4.*t26.*t27+l3.*m2.*m3.*t8.*t26.*t27-g.*t2.*t7.*t15.*t19.*t21+g.*t2.*t7.*t17.*t19.*t20+g.*t6.*t7.*t17.*t20.*t21+l1.*t4.*t5.*t9.*t23.*t29+l2.*t2.*t7.*t15.*t21.*t24+l1.*t4.*t7.*t9.*t23.*t29-l2.*t6.*t7.*t15.*t19.*t24+l1.*t2.*t7.*t15.*t20.*t29+l1.*t5.*t8.*t9.*t23.*t29-l1.*t6.*t7.*t15.*t18.*t29+l1.*t7.*t8.*t9.*t23.*t29-l3.*t4.*t7.*t9.*t27.*t30-l3.*t7.*t8.*t9.*t27.*t30-g.*m2.*m3.*t6.*t9.*t17+g.*m2.*m3.*t4.*t9.*t21.*2.0+g.*m2.*m3.*t8.*t9.*t21.*2.0-g.*m2.*m3.*t6.*t15.*t31+g.*m1.*m3.*t2.*t17.*t19.*t20-g.*m2.*m3.*t2.*t15.*t19.*t21+g.*m2.*m3.*t2.*t17.*t19.*t20+g.*m1.*m3.*t6.*t17.*t20.*t21+g.*m2.*m3.*t6.*t17.*t20.*t21+l2.*m2.*m3.*t2.*t15.*t21.*t24+l1.*m2.*m3.*t4.*t9.*t23.*t29.*2.0-l2.*m2.*m3.*t6.*t15.*t19.*t24+l1.*m2.*m3.*t2.*t15.*t20.*t29-l1.*m2.*m3.*t6.*t15.*t18.*t29+l1.*m2.*m3.*t8.*t9.*t23.*t29.*2.0-l3.*m2.*m3.*t4.*t9.*t27.*t30-l3.*m2.*m3.*t8.*t9.*t27.*t30-l2.*t2.*t7.*t9.*t17.*t21.*t24+l2.*t6.*t7.*t9.*t17.*t19.*t24-l1.*t2.*t7.*t9.*t17.*t20.*t29+l1.*t6.*t7.*t9.*t17.*t18.*t29-l2.*t2.*t7.*t17.*t19.*t23.*t24-l1.*t2.*t7.*t15.*t19.*t23.*t29-l2.*t6.*t7.*t17.*t21.*t23.*t24-l3.*t2.*t7.*t17.*t19.*t26.*t27-l1.*t6.*t7.*t15.*t21.*t23.*t29+l3.*t2.*t7.*t15.*t19.*t27.*t30-l3.*t6.*t7.*t17.*t21.*t26.*t27+l3.*t6.*t7.*t15.*t21.*t27.*t30-l2.*m2.*m3.*t2.*t9.*t17.*t21.*t24+l2.*m2.*m3.*t6.*t9.*t17.*t19.*t24-l1.*m2.*m3.*t2.*t9.*t17.*t20.*t29+l1.*m2.*m3.*t6.*t9.*t17.*t18.*t29-l2.*m2.*m3.*t2.*t17.*t19.*t23.*t24-l1.*m2.*m3.*t2.*t15.*t19.*t23.*t29-l2.*m2.*m3.*t6.*t17.*t21.*t23.*t24-l1.*m2.*m3.*t6.*t15.*t21.*t23.*t29))./l1;t22;(t51.*(g.*t4.*t5.*t21-g.*t6.*t7.*t17+g.*t4.*t7.*t21+g.*t5.*t8.*t21+g.*t7.*t8.*t21-g.*m1.*m3.*t6.*t17+g.*m1.*m2.*t4.*t21-g.*m2.*m3.*t6.*t17+g.*m1.*m3.*t4.*t21+g.*m2.*m3.*t4.*t21.*2.0+g.*m1.*m2.*t8.*t21+g.*m1.*m3.*t8.*t21+g.*m2.*m3.*t8.*t21.*2.0+g.*t6.*t7.*t9.*t15-g.*t4.*t5.*t9.*t20-g.*t4.*t7.*t9.*t20-g.*t5.*t8.*t9.*t20-g.*t7.*t8.*t9.*t20+g.*t6.*t7.*t17.*t52+l1.*t4.*t5.*t23.*t29+l1.*t4.*t7.*t23.*t29+l1.*t5.*t8.*t23.*t29+l1.*t7.*t8.*t23.*t29-l3.*t4.*t7.*t27.*t30-l3.*t7.*t8.*t27.*t30+l1.*m1.*m2.*t4.*t23.*t29+l1.*m1.*m3.*t4.*t23.*t29+l1.*m2.*m3.*t4.*t23.*t29.*2.0+l1.*m1.*m2.*t8.*t23.*t29+l1.*m1.*m3.*t8.*t23.*t29+l1.*m2.*m3.*t8.*t23.*t29.*2.0-l3.*m1.*m3.*t4.*t27.*t30-l3.*m2.*m3.*t4.*t27.*t30-l3.*m1.*m3.*t8.*t27.*t30-l3.*m2.*m3.*t8.*t27.*t30-g.*t2.*t7.*t15.*t18.*t21+g.*t2.*t7.*t17.*t18.*t20-g.*t6.*t7.*t15.*t20.*t21+l2.*t4.*t5.*t9.*t23.*t24+l2.*t4.*t7.*t9.*t23.*t24+l2.*t5.*t8.*t9.*t23.*t24-l2.*t2.*t7.*t17.*t21.*t24+l2.*t7.*t8.*t9.*t23.*t24+l2.*t6.*t7.*t17.*t19.*t24-l1.*t2.*t7.*t17.*t20.*t29+l3.*t4.*t7.*t9.*t26.*t27+l1.*t6.*t7.*t17.*t18.*t29+l3.*t7.*t8.*t9.*t26.*t27+g.*m2.*m3.*t6.*t9.*t15-g.*m1.*m2.*t4.*t9.*t20-g.*m1.*m3.*t4.*t9.*t20-g.*m2.*m3.*t4.*t9.*t20.*2.0-g.*m1.*m2.*t8.*t9.*t20-g.*m1.*m3.*t8.*t9.*t20-g.*m2.*m3.*t8.*t9.*t20.*2.0+g.*m1.*m3.*t6.*t17.*t52+g.*m2.*m3.*t6.*t17.*t52+g.*m1.*m3.*t2.*t17.*t18.*t20-g.*m2.*m3.*t2.*t15.*t18.*t21+g.*m2.*m3.*t2.*t17.*t18.*t20-g.*m2.*m3.*t6.*t15.*t20.*t21+l2.*m2.*m3.*t4.*t9.*t23.*t24.*2.0-l2.*m1.*m3.*t2.*t17.*t21.*t24-l2.*m2.*m3.*t2.*t17.*t21.*t24+l2.*m2.*m3.*t8.*t9.*t23.*t24.*2.0+l2.*m1.*m3.*t6.*t17.*t19.*t24-l1.*m1.*m3.*t2.*t17.*t20.*t29+l2.*m2.*m3.*t6.*t17.*t19.*t24-l1.*m2.*m3.*t2.*t17.*t20.*t29+l3.*m2.*m3.*t4.*t9.*t26.*t27+l1.*m1.*m3.*t6.*t17.*t18.*t29+l1.*m2.*m3.*t6.*t17.*t18.*t29+l3.*m2.*m3.*t8.*t9.*t26.*t27+l2.*t2.*t7.*t9.*t15.*t21.*t24-l2.*t6.*t7.*t9.*t15.*t19.*t24+l1.*t2.*t7.*t9.*t15.*t20.*t29-l1.*t6.*t7.*t9.*t15.*t18.*t29-l2.*t2.*t7.*t17.*t18.*t23.*t24-l1.*t2.*t7.*t15.*t18.*t23.*t29-l2.*t6.*t7.*t17.*t20.*t23.*t24-l3.*t2.*t7.*t17.*t18.*t26.*t27-l1.*t6.*t7.*t15.*t20.*t23.*t29+l3.*t2.*t7.*t15.*t18.*t27.*t30-l3.*t6.*t7.*t17.*t20.*t26.*t27+l3.*t6.*t7.*t15.*t20.*t27.*t30+l2.*m2.*m3.*t2.*t9.*t15.*t21.*t24-l2.*m2.*m3.*t6.*t9.*t15.*t19.*t24+l1.*m2.*m3.*t2.*t9.*t15.*t20.*t29-l1.*m2.*m3.*t6.*t9.*t15.*t18.*t29-l2.*m2.*m3.*t2.*t17.*t18.*t23.*t24-l1.*m2.*m3.*t2.*t15.*t18.*t23.*t29-l2.*m2.*m3.*t6.*t17.*t20.*t23.*t24-l1.*m2.*m3.*t6.*t15.*t20.*t23.*t29))./l2;t25;-(-g.*t5.*t6-g.*t6.*t7-g.*m1.*m2.*t6-g.*m1.*m3.*t6-g.*m2.*m3.*t6.*2.0+g.*t5.*t6.*t13+g.*t6.*t7.*t13+g.*t5.*t6.*t31+g.*t6.*t7.*t31+g.*t5.*t6.*t52+g.*t6.*t7.*t52+g.*m2.*m3.*t6.*t13.*2.0+g.*m1.*m2.*t6.*t31+g.*m1.*m3.*t6.*t31+g.*m2.*m3.*t6.*t31.*2.0+g.*m1.*m2.*t6.*t52+g.*m1.*m3.*t6.*t52+g.*m2.*m3.*t6.*t52.*2.0+g.*t2.*t5.*t18.*t20+g.*t2.*t5.*t19.*t21+g.*t2.*t7.*t18.*t20+g.*t2.*t7.*t19.*t21-l2.*t2.*t5.*t21.*t24-l2.*t2.*t7.*t21.*t24+l2.*t5.*t6.*t19.*t24-l1.*t2.*t5.*t20.*t29+l2.*t6.*t7.*t19.*t24-l1.*t2.*t7.*t20.*t29+l1.*t5.*t6.*t18.*t29+l1.*t6.*t7.*t18.*t29-l2.*m1.*m2.*t2.*t21.*t24-l2.*m1.*m3.*t2.*t21.*t24+l2.*m1.*m2.*t6.*t19.*t24-l2.*m2.*m3.*t2.*t21.*t24.*2.0-l1.*m1.*m2.*t2.*t20.*t29+l2.*m1.*m3.*t6.*t19.*t24-l1.*m1.*m3.*t2.*t20.*t29+l2.*m2.*m3.*t6.*t19.*t24.*2.0+l1.*m1.*m2.*t6.*t18.*t29-l1.*m2.*m3.*t2.*t20.*t29.*2.0+l1.*m1.*m3.*t6.*t18.*t29+l1.*m2.*m3.*t6.*t18.*t29.*2.0-g.*t2.*t5.*t9.*t18.*t21-g.*t2.*t5.*t9.*t19.*t20-g.*t2.*t7.*t9.*t18.*t21-g.*t2.*t7.*t9.*t19.*t20-g.*t5.*t6.*t9.*t20.*t21.*2.0-g.*t6.*t7.*t9.*t20.*t21.*2.0+l2.*t2.*t5.*t13.*t21.*t24+l2.*t2.*t7.*t13.*t21.*t24-l2.*t5.*t6.*t13.*t19.*t24+l1.*t2.*t5.*t13.*t20.*t29-l2.*t6.*t7.*t13.*t19.*t24+l1.*t2.*t7.*t13.*t20.*t29-l1.*t5.*t6.*t13.*t18.*t29-l1.*t6.*t7.*t13.*t18.*t29-l2.*t2.*t5.*t18.*t23.*t24-l2.*t2.*t7.*t18.*t23.*t24+l1.*t2.*t5.*t19.*t23.*t29-l2.*t5.*t6.*t20.*t23.*t24+l1.*t2.*t7.*t19.*t23.*t29-l2.*t6.*t7.*t20.*t23.*t24-l3.*t2.*t7.*t18.*t26.*t27+l1.*t5.*t6.*t21.*t23.*t29+l1.*t6.*t7.*t21.*t23.*t29-l3.*t2.*t7.*t19.*t27.*t30-l3.*t6.*t7.*t20.*t26.*t27-l3.*t6.*t7.*t21.*t27.*t30+g.*m1.*m2.*t2.*t18.*t20+g.*m1.*m3.*t2.*t18.*t20+g.*m1.*m2.*t2.*t19.*t21+g.*m2.*m3.*t2.*t18.*t20.*2.0+g.*m1.*m3.*t2.*t19.*t21+g.*m2.*m3.*t2.*t19.*t21.*2.0-g.*m1.*m2.*t2.*t9.*t19.*t20-g.*m1.*m3.*t2.*t9.*t19.*t20-g.*m2.*m3.*t2.*t9.*t18.*t21.*2.0-g.*m2.*m3.*t2.*t9.*t19.*t20.*2.0-g.*m1.*m2.*t6.*t9.*t20.*t21-g.*m1.*m3.*t6.*t9.*t20.*t21-g.*m2.*m3.*t6.*t9.*t20.*t21.*4.0+l2.*m2.*m3.*t2.*t13.*t21.*t24.*2.0-l2.*m2.*m3.*t6.*t13.*t19.*t24.*2.0+l1.*m2.*m3.*t2.*t13.*t20.*t29.*2.0-l1.*m2.*m3.*t6.*t13.*t18.*t29.*2.0-l2.*m2.*m3.*t2.*t18.*t23.*t24.*2.0+l1.*m1.*m2.*t2.*t19.*t23.*t29+l1.*m1.*m3.*t2.*t19.*t23.*t29+l1.*m2.*m3.*t2.*t19.*t23.*t29.*2.0-l2.*m2.*m3.*t6.*t20.*t23.*t24.*2.0-l3.*m2.*m3.*t2.*t18.*t26.*t27+l1.*m1.*m2.*t6.*t21.*t23.*t29+l1.*m1.*m3.*t6.*t21.*t23.*t29+l1.*m2.*m3.*t6.*t21.*t23.*t29.*2.0-l3.*m1.*m3.*t2.*t19.*t27.*t30-l3.*m2.*m3.*t2.*t19.*t27.*t30-l3.*m2.*m3.*t6.*t20.*t26.*t27-l3.*m1.*m3.*t6.*t21.*t27.*t30-l3.*m2.*m3.*t6.*t21.*t27.*t30+l2.*t2.*t5.*t9.*t19.*t23.*t24+l2.*t2.*t7.*t9.*t19.*t23.*t24-l1.*t2.*t5.*t9.*t18.*t23.*t29-l1.*t2.*t7.*t9.*t18.*t23.*t29+l2.*t5.*t6.*t9.*t21.*t23.*t24+l2.*t6.*t7.*t9.*t21.*t23.*t24-l1.*t5.*t6.*t9.*t20.*t23.*t29+l3.*t2.*t7.*t9.*t19.*t26.*t27-l1.*t6.*t7.*t9.*t20.*t23.*t29+l3.*t2.*t7.*t9.*t18.*t27.*t30+l3.*t6.*t7.*t9.*t21.*t26.*t27+l3.*t6.*t7.*t9.*t20.*t27.*t30+l2.*m2.*m3.*t2.*t9.*t19.*t23.*t24.*2.0-l1.*m2.*m3.*t2.*t9.*t18.*t23.*t29.*2.0+l2.*m2.*m3.*t6.*t9.*t21.*t23.*t24.*2.0+l3.*m2.*m3.*t2.*t9.*t19.*t26.*t27-l1.*m2.*m3.*t6.*t9.*t20.*t23.*t29.*2.0+l3.*m2.*m3.*t2.*t9.*t18.*t27.*t30+l3.*m2.*m3.*t6.*t9.*t21.*t26.*t27+l3.*m2.*m3.*t6.*t9.*t20.*t27.*t30)./(l3.*t4.*t5+l3.*t4.*t7+l3.*t5.*t8+l3.*t7.*t8+l3.*m1.*m2.*t4+l3.*m1.*m3.*t4+l3.*m2.*m3.*t4.*2.0+l3.*m1.*m2.*t8+l3.*m1.*m3.*t8+l3.*m2.*m3.*t8.*2.0-l3.*t4.*t5.*t13-l3.*t4.*t7.*t13-l3.*t5.*t8.*t13-l3.*t7.*t8.*t13-l3.*m2.*m3.*t4.*t13.*2.0-l3.*m2.*m3.*t8.*t13.*2.0-l3.*t2.*t7.*t15.*t18-l3.*t2.*t7.*t17.*t19-l3.*t6.*t7.*t15.*t20-l3.*t6.*t7.*t17.*t21-l3.*m2.*m3.*t2.*t15.*t18-l3.*m1.*m3.*t2.*t17.*t19-l3.*m2.*m3.*t2.*t17.*t19-l3.*m2.*m3.*t6.*t15.*t20-l3.*m1.*m3.*t6.*t17.*t21-l3.*m2.*m3.*t6.*t17.*t21+l3.*t2.*t7.*t9.*t15.*t19+l3.*t2.*t7.*t9.*t17.*t18+l3.*t6.*t7.*t9.*t15.*t21+l3.*t6.*t7.*t9.*t17.*t20+l3.*m2.*m3.*t2.*t9.*t15.*t19+l3.*m2.*m3.*t2.*t9.*t17.*t18+l3.*m2.*m3.*t6.*t9.*t15.*t21+l3.*m2.*m3.*t6.*t9.*t17.*t20)];