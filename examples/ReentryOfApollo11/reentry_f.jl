# right hand side of the ODE system for the reentry problem
# following Stoer/Bulirsch 1973

# authors: Folkmar Bornemann, Vishal Sontakke, 2016/04/23

function reentry_f(t,x,dx)

    lambda = x[4:6];
    T = x[7];

    # begin of the part generated by Maple

    t1 = lambda[2];
    t2 = c[3];
    t4 = lambda[1];
    t6 = x[1];
    t7 = 0.1e1 / t6;
    t9 = c[2];
    u = atan(t1 * t2 / t4 * t7 / t9);
    t13 = Sm * rho0;
    t14 = beta * R;
    t15 = x[3];
    t17 = exp(-t14 * t15);
    t18 = t6 ^ 2;
    t21 = cos(u);
    t23 = c[1] - t9 * t21;
    t27 = x[2];
    t28 = sin(t27);
    t29 = g * t28;
    t30 = 0.1e1 + t15;
    t31 = t30 ^ 2;
    t32 = 0.1e1 / t31;
    dx[1] = T * (-t13 * t17 * t18 * t23 / 0.2e1 - t29 * t32);
    t37 = sin(u);
    t41 = cos(t27);
    t42 = t6 * t41;
    t43 = 0.1e1 / R;
    t44 = 0.1e1 / t30;
    t45 = t43 * t44;
    t47 = g * t41;
    t48 = t7 * t32;
    dx[2] = T * (t13 * t17 * t6 * t2 * t37 / 0.2e1 + t42 * t45 - t47 * t48);
    dx[3] = T * t6 * t28 * t43;
    t54 = sqrt(rho0 * t17);
    t59 = t17 * t6;
    t66 = t41 * t43;
    t73 = lambda[3];
    dx[4] = T * (-0.30e2 * t18 * t54 + t4 * Sm * rho0 * t59 * t23 - t1 * (t13 * t17 * t2 * t37 / 0.2e1 + t66 * t44 + t47 / t18 * t32) - t73 * t28 * t43);
    dx[5] = T * (t4 * g * t41 * t32 - t1 * (-t6 * t28 * t45 + t29 * t48) - t73 * t6 * t66);
    t102 = 0.1e1 / t31 / t30;
    dx[6] = T * (0.5e1 * t18 * t6 / t54 * rho0 * t14 * t17 - t4 * (t13 * beta * R * t17 * t18 * t23 / 0.2e1 + 0.2e1 * t29 * t102) - t1 * (-t13 * t14 * t59 * t2 * t37 / 0.2e1 - t42 * t43 * t32 + 0.2e1 * t47 * t7 * t102));
    dx[7] = 0.0e0;
    return nothing
end
