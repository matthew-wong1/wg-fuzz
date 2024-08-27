struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    let var_0 = arg_2;
    let var_1 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-250f, 1985f, 143f, 303f) - arg_2.d.b))) - arg_1.c.b)), !arg_3, select(_wgslsmith_add_u32(~_wgslsmith_mod_u32(0u, u_input.c.x), ~0u), ~(~var_0.d.a << (~u_input.c.x % 32u)), !(var_0.b & true)), vec4<bool>(true, true, !(!(arg_2.c.a <= 4294967295u)), any(select(!vec2<bool>(var_0.c.e.x, arg_1.b), arg_3.zy, select(arg_2.d.c.yz, arg_2.c.c.xz, arg_0)))));
    var var_2 = var_1;
    let var_3 = reverseBits(~u_input.c);
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.c.b.x)), 282f, -1301f, _wgslsmith_f_op_f32(step(270f, var_0.d.b.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.d.b.x * 1333f), _wgslsmith_f_op_f32(f32(-1f) * -1818f), _wgslsmith_f_op_f32(-448f * 1132f), arg_2.c.b.x))), var_0.d.b, true));
    return var_2.d;
}

fn func_2() -> u32 {
    let var_0 = !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(true, _wgslsmith_f_op_f32(ceil(-364f)) < -826f, all(vec3<bool>(true, true, true))));
    var var_1 = Struct_1(~20875u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-782f, -280f, 460f, -823f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(746f, -1152f, -1694f, 1430f), vec4<f32>(706f, 706f, -602f, -1400f)))))), select(!(!select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true)), !vec3<bool>(all(vec3<bool>(false, var_0.x, var_0.x)), false, !var_0.x), true), func_3(true, Struct_2(!vec2<bool>(var_0.x, var_0.x), true, Struct_1(abs(u_input.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(173f, 1000f, 1000f, -756f)), vec3<bool>(true, var_0.x, false), _wgslsmith_sub_u32(u_input.b, u_input.c.x), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(false, var_0.x, false, var_0.x), true)), Struct_1(~1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-287f, -1007f, -571f, -856f)), !vec3<bool>(var_0.x, true, var_0.x), u_input.c.x, select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, true, true, false), false))), Struct_2(var_0, true & !var_0.x, Struct_1(u_input.d.x | 0u, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1560f, -190f, -1000f, -583f))), !vec3<bool>(true, var_0.x, var_0.x), _wgslsmith_mult_u32(1u, 8713u), !vec4<bool>(true, true, false, var_0.x)), Struct_1(u_input.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, -885f, 537f, -682f)), !vec3<bool>(var_0.x, true, false), u_input.d.x, !vec4<bool>(var_0.x, true, var_0.x, true))), vec3<bool>(var_0.x, !all(var_0), !var_0.x)), vec4<bool>(var_0.x, var_0.x, select(true, all(vec2<bool>(var_0.x, var_0.x)), true) | true, all(select(!vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), !var_0.x))));
    var_1 = Struct_1(u_input.d.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-458f, 1000f, -1007f, var_1.b.x))))))), !vec3<bool>(all(vec2<bool>(var_1.c.x, false)), var_0.x, true), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, u_input.d.x), u_input.d.x) | (u_input.b | (72396u | var_1.d)), var_1.d), vec4<bool>(select(false, all(var_1.e.xzx), false), true, true, 33580u < _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d, u_input.c.yww), ~vec3<u32>(0u, var_1.a, var_1.d))));
    var_1 = Struct_1(~1u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.b + _wgslsmith_f_op_vec4_f32(var_1.b + _wgslsmith_f_op_vec4_f32(select(var_1.b, var_1.b, false)))), var_1.b, false)), var_1.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, 40519u), 18390u, firstLeadingBit(var_1.d)), min(u_input.d << (u_input.c.xyy % vec3<u32>(32u)), min(vec3<u32>(6211u, 20910u, 1540u), u_input.d))), select(select(select(var_1.e, !var_1.e, select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_1.c.x, var_0.x, true, var_0.x))), select(vec4<bool>(var_0.x, var_1.c.x, true, var_0.x), !var_1.e, true), false), var_1.e, !var_1.e));
    var var_2 = ~u_input.a.x;
    return ~31219u;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = 40022i;
    let var_1 = Struct_1(countOneBits(1u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-611f, 763f) + _wgslsmith_f_op_f32(trunc(arg_3.x)))), _wgslsmith_f_op_f32(f32(-1f) * -243f), _wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_2.b.x) + _wgslsmith_f_op_f32(arg_1.d.b.x + 1000f))))), arg_1.c.e.wwy, arg_2.d, arg_1.d.e);
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_2.b.xw)));
    var var_3 = vec2<u32>(4930u, 522u);
    var_0 = _wgslsmith_mod_i32(u_input.a.x, min(_wgslsmith_add_i32(_wgslsmith_add_i32(-31626i, u_input.a.x) ^ 1i, u_input.e.x >> (_wgslsmith_mult_u32(40632u, arg_1.d.a) % 32u)), max(arg_0, 1i ^ u_input.a.x)));
    return arg_1;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> vec4<f32> {
    var var_0 = func_4(u_input.a.x, Struct_2(arg_0.yx, true, Struct_1(func_2(), vec4<f32>(_wgslsmith_div_f32(-635f, -1945f), -2148f, _wgslsmith_f_op_f32(-1204f - 1000f), 1000f), arg_0.zwy, 61593u, select(select(arg_0, arg_0, true), arg_0, arg_1)), Struct_1(_wgslsmith_mult_u32(func_2(), ~1u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-256f, -1000f, -844f, -2270f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1667f, 1000f, 925f, -550f), vec4<f32>(2531f, 386f, 435f, -951f), arg_1)))), arg_0.yxy, u_input.b, arg_0)), Struct_1(1u, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1650f))), _wgslsmith_f_op_f32(-568f * _wgslsmith_f_op_f32(f32(-1f) * -720f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-810f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1093f + -246f), _wgslsmith_f_op_f32(abs(1379f)))), !(!vec3<bool>(arg_1, arg_1, arg_0.x)), ~0u, select(vec4<bool>(all(vec3<bool>(arg_1, false, false)), true, u_input.c.x < u_input.b, !arg_0.x), arg_0, select(!vec4<bool>(true, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_1, arg_0.x, false), vec4<bool>(arg_1, arg_0.x, false, arg_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(361f, 1563f))))));
    var_0 = func_4(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(min(u_input.e.x, 0i), u_input.a.x), u_input.a.x), _wgslsmith_dot_vec4_i32(reverseBits(~vec4<i32>(u_input.e.x, u_input.e.x, u_input.a.x, u_input.e.x)), vec4<i32>(_wgslsmith_add_i32(1i, u_input.a.x), -12260i, 1i, select(10444i, u_input.a.x, true))), -45879i), func_4(2147483647i, func_4(_wgslsmith_clamp_i32(-u_input.a.x, 24513i, ~u_input.a.x), func_4(-1i, Struct_2(arg_0.wy, true, Struct_1(1u, vec4<f32>(var_0.c.b.x, var_0.d.b.x, -460f, var_0.c.b.x), var_0.d.e.wyx, 9602u, vec4<bool>(var_0.a.x, var_0.d.c.x, arg_1, arg_1)), var_0.c), func_4(7116i, Struct_2(arg_0.wy, arg_1, Struct_1(var_0.d.d, vec4<f32>(var_0.d.b.x, 1098f, var_0.d.b.x, -1727f), vec3<bool>(false, true, true), var_0.c.d, vec4<bool>(arg_1, arg_0.x, false, true)), Struct_1(0u, var_0.c.b, var_0.c.c, u_input.c.x, arg_0)), Struct_1(var_0.c.d, var_0.d.b, arg_0.zxz, var_0.d.d, var_0.c.e), vec2<f32>(1000f, var_0.c.b.x)).c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-569f, var_0.c.b.x) - var_0.d.b.xy)), Struct_1(57838u, var_0.c.b, vec3<bool>(true, false, true), 1707u, arg_0), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(var_0.d.b.xx, var_0.d.b.zy)), _wgslsmith_f_op_vec2_f32(-var_0.c.b.zz), false))), var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_4(u_input.a.x, Struct_2(arg_0.yz, arg_1, Struct_1(51555u, vec4<f32>(var_0.d.b.x, 2385f, 1369f, 1799f), var_0.c.c, var_0.c.d, vec4<bool>(var_0.a.x, arg_0.x, arg_0.x, false)), Struct_1(0u, var_0.c.b, var_0.c.c, 44639u, var_0.c.e)), var_0.c, vec2<f32>(-1110f, var_0.c.b.x)).d.b.wx) - var_0.c.b.zx)), var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.c.b.yy, var_0.d.b.wx, false))) + vec2<f32>(835f, _wgslsmith_f_op_f32(var_0.d.b.x * var_0.d.b.x))));
    var_0 = Struct_2(!vec2<bool>(!var_0.d.c.x | true, var_0.d.b.x <= var_0.c.b.x), !(!(!any(vec3<bool>(true, true, true)))), func_4(51760i, Struct_2(vec2<bool>(var_0.c.d >= u_input.d.x, arg_1), any(arg_0.yzz), var_0.d, func_4(u_input.a.x, Struct_2(vec2<bool>(false, arg_1), var_0.d.e.x, Struct_1(0u, vec4<f32>(var_0.d.b.x, -1015f, 221f, 944f), arg_0.xxz, 1u, arg_0), var_0.c), var_0.d, _wgslsmith_f_op_vec2_f32(max(var_0.d.b.xy, var_0.c.b.zz))).c), func_4(abs(u_input.a.x), func_4(u_input.a.x, func_4(u_input.a.x, Struct_2(var_0.c.c.yx, var_0.a.x, Struct_1(0u, var_0.c.b, vec3<bool>(var_0.b, false, var_0.c.e.x), 29589u, arg_0), var_0.d), var_0.c, var_0.c.b.zy), var_0.d, vec2<f32>(var_0.d.b.x, var_0.c.b.x)), var_0.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.b.x, var_0.d.b.x) + var_0.d.b.xy), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1471f, var_0.d.b.x))))).c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b.x)), -605f)).c, func_4(u_input.e.x, Struct_2(arg_0.yx, true, Struct_1(_wgslsmith_clamp_u32(1u, 64023u, var_0.d.a), _wgslsmith_f_op_vec4_f32(-var_0.c.b), vec3<bool>(var_0.d.e.x, arg_0.x, arg_1), func_2(), arg_0), func_4(_wgslsmith_mult_i32(0i, u_input.a.x), func_4(u_input.e.x, Struct_2(arg_0.zx, true, Struct_1(23996u, var_0.c.b, arg_0.wzz, u_input.d.x, arg_0), var_0.c), var_0.d, var_0.d.b.xx), var_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.b.x, var_0.d.b.x) * var_0.d.b.yw)).c), func_4(0i, func_4(u_input.e.x ^ u_input.a.x, Struct_2(var_0.c.c.yy, var_0.b, var_0.d, var_0.d), func_4(1i, Struct_2(vec2<bool>(false, false), false, var_0.c, Struct_1(var_0.d.d, vec4<f32>(-1000f, var_0.d.b.x, -168f, var_0.d.b.x), vec3<bool>(var_0.c.e.x, false, true), 62701u, vec4<bool>(arg_1, false, false, false))), var_0.d, var_0.c.b.wx).c, vec2<f32>(var_0.d.b.x, var_0.d.b.x)), var_0.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.d.b.zz), vec2<f32>(var_0.c.b.x, -649f), select(vec2<bool>(var_0.a.x, arg_0.x), var_0.c.c.zx, vec2<bool>(true, true))))).d, _wgslsmith_f_op_vec2_f32(ceil(var_0.c.b.yy))).d);
    var var_1 = var_0.d;
    var_0 = func_4(firstTrailingBit(i32(-1i) * -u_input.a.x) ^ -22760i, Struct_2(arg_0.xw, func_4(~12159i, func_4(-1i, func_4(50376i, Struct_2(vec2<bool>(false, false), false, var_0.c, var_0.d), Struct_1(89274u, vec4<f32>(var_0.d.b.x, var_1.b.x, var_1.b.x, 223f), vec3<bool>(arg_1, arg_1, arg_1), 0u, arg_0), vec2<f32>(var_0.c.b.x, var_1.b.x)), func_4(u_input.a.x, Struct_2(vec2<bool>(var_1.e.x, arg_0.x), true, Struct_1(u_input.c.x, vec4<f32>(699f, var_1.b.x, var_0.d.b.x, var_1.b.x), vec3<bool>(true, var_0.c.c.x, var_0.b), 4294967295u, var_0.c.e), var_0.c), var_0.c, vec2<f32>(var_0.d.b.x, -659f)).d, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1173f, var_1.b.x)))), var_0.d, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(var_0.c.b.xz))))).d.c.x, Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(-var_0.c.b), select(arg_0.yxz, vec3<bool>(var_1.e.x, arg_0.x, true), true), _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(1u, 0u)), vec4<bool>(all(arg_0.zyy), all(vec3<bool>(true, arg_0.x, true)), true, true)), func_4(_wgslsmith_mult_i32(-90745i & u_input.e.x, -2907i), Struct_2(!vec2<bool>(arg_0.x, true), any(vec3<bool>(var_1.e.x, false, true)), func_4(u_input.a.x, Struct_2(vec2<bool>(arg_1, true), false, var_0.c, Struct_1(8218u, var_1.b, vec3<bool>(false, var_0.d.c.x, false), 50627u, arg_0)), Struct_1(92784u, vec4<f32>(var_1.b.x, var_1.b.x, 962f, var_0.c.b.x), var_0.d.e.xwy, u_input.d.x, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, var_0.c.e.x)), var_0.c.b.wy).d, func_4(u_input.e.x, Struct_2(vec2<bool>(false, var_0.d.e.x), false, var_0.c, var_0.c), var_0.d, vec2<f32>(292f, var_1.b.x)).d), func_4(u_input.e.x, func_4(0i, Struct_2(vec2<bool>(false, true), false, Struct_1(var_0.d.a, var_1.b, vec3<bool>(false, false, false), 16002u, vec4<bool>(arg_1, true, arg_1, true)), Struct_1(u_input.b, vec4<f32>(var_0.c.b.x, -311f, var_0.c.b.x, 958f), var_1.e.xzx, 1u, vec4<bool>(arg_0.x, arg_1, true, var_1.e.x))), Struct_1(13881u, var_0.d.b, vec3<bool>(arg_0.x, true, true), var_0.c.d, var_0.c.e), var_1.b.xy), func_4(u_input.e.x, Struct_2(var_0.a, var_1.c.x, var_0.c, Struct_1(var_0.d.d, var_0.d.b, var_1.c, var_0.c.a, vec4<bool>(var_0.b, arg_0.x, true, arg_1))), var_0.c, vec2<f32>(var_1.b.x, var_1.b.x)).d, vec2<f32>(603f, var_0.c.b.x)).c, var_0.c.b.zx).d), func_4(abs(i32(-1i) * -2147483647i), func_4(_wgslsmith_sub_i32(min(2147483647i, u_input.e.x), u_input.a.x), func_4(0i, Struct_2(var_1.c.zx, arg_1, var_0.d, var_0.d), Struct_1(var_1.d, var_0.c.b, vec3<bool>(true, true, false), 12735u, var_0.c.e), var_0.d.b.wz), var_0.c, var_0.c.b.wz), func_4(u_input.a.x, Struct_2(func_4(-13931i, Struct_2(vec2<bool>(true, true), arg_1, var_0.c, Struct_1(4294967295u, vec4<f32>(110f, var_1.b.x, var_0.c.b.x, -345f), var_0.d.c, 16156u, arg_0)), var_0.c, vec2<f32>(-677f, -151f)).c.c.xz, !var_0.a.x, func_4(u_input.e.x, Struct_2(var_1.c.yy, var_1.c.x, var_0.d, Struct_1(80189u, vec4<f32>(-547f, -2154f, var_1.b.x, var_0.d.b.x), arg_0.ywy, 0u, arg_0)), Struct_1(var_0.c.a, var_1.b, var_0.d.c, u_input.c.x, var_0.c.e), vec2<f32>(var_0.c.b.x, -851f)).d, Struct_1(var_0.c.a, vec4<f32>(780f, var_1.b.x, var_1.b.x, var_1.b.x), var_1.c, var_0.d.a, arg_0)), func_4(1i, func_4(u_input.e.x, Struct_2(vec2<bool>(arg_1, true), arg_1, Struct_1(var_0.c.d, var_1.b, vec3<bool>(true, var_1.e.x, arg_0.x), var_0.d.a, var_0.c.e), Struct_1(u_input.b, vec4<f32>(1000f, -359f, var_0.c.b.x, -1767f), arg_0.ywx, u_input.d.x, arg_0)), Struct_1(4294967295u, vec4<f32>(190f, var_0.d.b.x, -827f, -410f), vec3<bool>(arg_1, true, true), 1u, arg_0), vec2<f32>(var_1.b.x, -523f)), Struct_1(13016u, var_0.d.b, arg_0.wxw, var_1.a, var_1.e), _wgslsmith_f_op_vec2_f32(-var_1.b.zx)).c, _wgslsmith_f_op_vec2_f32(min(var_0.c.b.yz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-153f, var_0.c.b.x), var_1.b.xx, vec2<bool>(arg_0.x, var_1.c.x)))))).d, var_1.b.wy).d, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.ww * vec2<f32>(1000f, 881f))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(-753f, var_0.d.b.x)), true)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-521f, -450f, _wgslsmith_f_op_f32(var_0.d.b.x * 981f), var_1.b.x) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1342f, var_1.b.x, false)))), _wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(-443f + 1024f), func_4(75460i, Struct_2(vec2<bool>(var_0.c.c.x, arg_1), arg_0.x, Struct_1(var_1.d, vec4<f32>(-951f, 1165f, 576f, -987f), vec3<bool>(var_0.d.e.x, false, true), u_input.d.x, vec4<bool>(true, false, true, var_0.d.e.x)), var_0.d), Struct_1(11619u, vec4<f32>(var_0.d.b.x, var_0.d.b.x, var_0.c.b.x, -1144f), arg_0.www, 50221u, vec4<bool>(true, arg_0.x, false, true)), vec2<f32>(var_1.b.x, -702f)).a.x)), var_0.c.b.x, var_0.c.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1345f, -611f, 805f, -761f))))) + vec4<f32>(_wgslsmith_f_op_f32(round(1385f)), _wgslsmith_f_op_f32(-1953f * -1901f), _wgslsmith_f_op_f32(ceil(-490f)), -2751f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), all(vec3<bool>(false, false, false))))));
    var var_1 = Struct_1(43472u | u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 * var_0) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(true, true, false, false), false)) + vec4<f32>(133f, var_0.x, var_0.x, 249f)) + var_0)), !(!vec3<bool>(all(vec4<bool>(false, true, true, false)), true, var_0.x > 1015f)), u_input.b, vec4<bool>(true, true, true, true));
    var_1 = func_4(_wgslsmith_mult_i32(~(abs(u_input.a.x) & 1i), _wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, 30758i), 1518i) >> (u_input.b % 32u)), Struct_2(!var_1.e.xw, any(!(!var_1.e)), Struct_1(var_1.a, var_1.b, vec3<bool>(true, var_1.e.x, !var_1.e.x), 73626u, var_1.e), Struct_1(71722u & var_1.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.x, 123f, 1408f, 1000f), var_1.b, vec4<bool>(false, false, var_1.c.x, var_1.c.x))) * _wgslsmith_f_op_vec4_f32(abs(var_1.b))), !select(vec3<bool>(var_1.e.x, false, var_1.c.x), vec3<bool>(var_1.c.x, var_1.e.x, var_1.e.x), var_1.c.x), 4294967295u, vec4<bool>(var_1.e.x && var_1.e.x, true, var_1.e.x, all(vec2<bool>(var_1.c.x, var_1.c.x))))), func_4(1i, func_4(-abs(2147483647i), func_4(u_input.a.x, func_4(u_input.e.x, Struct_2(var_1.e.yy, true, Struct_1(u_input.d.x, var_1.b, var_1.e.zyw, u_input.b, var_1.e), Struct_1(1u, var_0, var_1.e.xwy, 0u, vec4<bool>(var_1.c.x, var_1.e.x, true, true))), Struct_1(49624u, vec4<f32>(-2091f, 1280f, -2190f, 725f), vec3<bool>(var_1.c.x, true, true), 22194u, var_1.e), vec2<f32>(305f, var_1.b.x)), func_4(-6078i, Struct_2(vec2<bool>(true, var_1.e.x), false, Struct_1(4294967295u, var_1.b, var_1.e.wwz, 1u, var_1.e), Struct_1(u_input.b, var_0, var_1.c, var_1.a, vec4<bool>(true, var_1.c.x, false, var_1.c.x))), Struct_1(4294967295u, vec4<f32>(var_0.x, -347f, -1181f, 404f), vec3<bool>(var_1.c.x, true, var_1.c.x), 31017u, vec4<bool>(false, var_1.e.x, var_1.e.x, false)), vec2<f32>(-831f, var_1.b.x)).c, vec2<f32>(var_1.b.x, 839f)), func_4(u_input.e.x & -2147483647i, func_4(37615i, Struct_2(vec2<bool>(var_1.e.x, var_1.c.x), var_1.c.x, Struct_1(var_1.a, vec4<f32>(464f, var_0.x, 1000f, 166f), var_1.e.zxz, var_1.a, vec4<bool>(false, true, var_1.c.x, var_1.e.x)), Struct_1(u_input.d.x, vec4<f32>(var_1.b.x, 896f, var_1.b.x, var_1.b.x), vec3<bool>(true, var_1.e.x, false), 3483u, vec4<bool>(true, var_1.e.x, var_1.c.x, false))), Struct_1(35580u, var_0, var_1.c, 32109u, var_1.e), var_0.wz), func_4(8269i, Struct_2(vec2<bool>(var_1.c.x, false), false, Struct_1(u_input.c.x, vec4<f32>(var_0.x, 704f, 1767f, -654f), vec3<bool>(var_1.e.x, var_1.c.x, false), 4294967295u, vec4<bool>(false, var_1.e.x, var_1.e.x, var_1.e.x)), Struct_1(u_input.d.x, vec4<f32>(var_0.x, var_1.b.x, var_1.b.x, var_1.b.x), vec3<bool>(true, var_1.c.x, var_1.c.x), 1u, vec4<bool>(false, false, false, var_1.e.x))), Struct_1(0u, vec4<f32>(-428f, var_1.b.x, var_1.b.x, -136f), var_1.e.xxw, var_1.d, var_1.e), vec2<f32>(-2016f, var_1.b.x)).c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1954f))).c, var_1.b.zz), func_4(u_input.a.x, Struct_2(var_1.c.yx, true, Struct_1(u_input.c.x, var_0, var_1.e.zwz, 0u, vec4<bool>(false, var_1.e.x, true, true)), Struct_1(0u, var_0, vec3<bool>(var_1.e.x, var_1.e.x, false), u_input.d.x, vec4<bool>(true, var_1.e.x, false, var_1.e.x))), Struct_1(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.d.x, var_1.d, var_1.d, u_input.b)), vec4<f32>(251f, var_1.b.x, -2444f, -824f), var_1.e.xxy, var_1.d >> (u_input.b % 32u), var_1.e), var_1.b.wy).c, var_1.b.xy).d, _wgslsmith_f_op_vec2_f32(-var_1.b.yx)).d;
    let var_2 = var_1.b.wy;
    let var_3 = func_4(-(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 20145i, 1i, u_input.a.x), -vec4<i32>(1i, -59597i, -82472i, u_input.e.x)) & reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(33414i, u_input.a.x, u_input.e.x), vec3<i32>(1i, u_input.e.x, 2094i)))), func_4(u_input.a.x, func_4(-26507i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(43418i, u_input.e.x, u_input.a.x, 48648i), vec4<i32>(-2147483647i, 39862i, u_input.a.x, -38281i)), func_4(u_input.e.x, func_4(17204i, Struct_2(var_1.c.yx, var_1.e.x, Struct_1(u_input.c.x, vec4<f32>(1239f, -866f, 239f, var_2.x), vec3<bool>(true, var_1.c.x, true), u_input.c.x, var_1.e), Struct_1(49406u, var_1.b, var_1.c, var_1.d, vec4<bool>(true, true, var_1.c.x, var_1.e.x))), Struct_1(1u, var_1.b, vec3<bool>(var_1.c.x, false, true), 0u, var_1.e), vec2<f32>(var_1.b.x, 392f)), func_4(u_input.a.x, Struct_2(var_1.c.yy, var_1.e.x, Struct_1(u_input.c.x, var_1.b, var_1.e.wxx, u_input.d.x, vec4<bool>(false, true, var_1.c.x, true)), Struct_1(0u, var_0, var_1.c, 0u, var_1.e)), Struct_1(var_1.a, var_0, var_1.c, 0u, vec4<bool>(true, var_1.c.x, var_1.e.x, false)), vec2<f32>(var_1.b.x, -503f)).d, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) * vec2<f32>(var_1.b.x, var_2.x))), Struct_1(firstTrailingBit(4503u), var_1.b, vec3<bool>(var_1.e.x, var_1.e.x, var_1.e.x), ~u_input.b, vec4<bool>(var_1.e.x, var_1.e.x, true, false)), vec2<f32>(-825f, var_0.x)), Struct_1(0u, vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_1.b.x)), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(1760f * -191f), -205f), var_1.e.xxw, ~4294967295u, func_4(~(-1i), func_4(-1i, Struct_2(var_1.e.yw, var_1.c.x, Struct_1(u_input.c.x, var_0, vec3<bool>(var_1.c.x, var_1.c.x, true), var_1.d, var_1.e), Struct_1(1u, vec4<f32>(var_1.b.x, 246f, 183f, var_1.b.x), var_1.c, 0u, vec4<bool>(true, true, var_1.c.x, false))), Struct_1(55353u, vec4<f32>(757f, -250f, -589f, 1129f), vec3<bool>(true, true, var_1.e.x), u_input.c.x, var_1.e), vec2<f32>(var_0.x, var_1.b.x)), func_4(-58799i, Struct_2(var_1.c.zy, true, Struct_1(12672u, vec4<f32>(var_0.x, var_1.b.x, -414f, var_1.b.x), vec3<bool>(var_1.c.x, var_1.e.x, var_1.e.x), var_1.d, vec4<bool>(var_1.c.x, var_1.c.x, var_1.e.x, var_1.c.x)), Struct_1(u_input.c.x, vec4<f32>(var_2.x, -412f, 946f, 1256f), vec3<bool>(var_1.c.x, var_1.e.x, false), 89735u, var_1.e)), Struct_1(var_1.d, vec4<f32>(var_0.x, 247f, 185f, 421f), var_1.e.zyx, 18622u, vec4<bool>(var_1.e.x, false, false, var_1.e.x)), var_0.yx).c, vec2<f32>(961f, var_1.b.x)).c.e), vec2<f32>(var_2.x, var_2.x)), func_4(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.e.x, 3208i << (var_1.a % 32u), -30978i | u_input.e.x), u_input.a.x), func_4(abs(u_input.e.x) & (i32(-1i) * -17257i), func_4(u_input.a.x, Struct_2(vec2<bool>(var_1.c.x, false), false, Struct_1(1u, vec4<f32>(391f, var_2.x, var_0.x, 963f), var_1.c, var_1.a, var_1.e), Struct_1(63853u, var_0, var_1.e.xyy, var_1.a, var_1.e)), Struct_1(1u, var_0, vec3<bool>(var_1.c.x, true, false), 1u, var_1.e), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, -968f)))), Struct_1(_wgslsmith_sub_u32(53185u, u_input.b), vec4<f32>(-959f, 557f, var_1.b.x, var_1.b.x), select(var_1.e.zwz, var_1.e.wzw, var_1.c.x), abs(39513u), !var_1.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1438f, 1076f), vec2<f32>(var_1.b.x, var_1.b.x), vec2<bool>(false, var_1.c.x))))), Struct_1(_wgslsmith_add_u32(1u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -767f, var_1.b.x, var_1.b.x))), vec3<bool>(true, all(vec2<bool>(false, var_1.c.x)), false), var_1.a, !var_1.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.b.yw, var_1.b.yy, vec2<bool>(true, false)))))).d, _wgslsmith_div_vec2_f32(var_0.zz, func_4(min(-2147483647i, u_input.a.x) << (9447u % 32u), Struct_2(!vec2<bool>(false, var_1.c.x), var_0.x == var_2.x, func_4(-26645i, Struct_2(var_1.c.yy, false, Struct_1(u_input.d.x, vec4<f32>(1000f, 838f, var_0.x, 713f), var_1.e.xxw, var_1.a, var_1.e), Struct_1(26580u, var_0, var_1.c, 53557u, vec4<bool>(true, true, var_1.e.x, true))), Struct_1(var_1.d, vec4<f32>(501f, -380f, -254f, var_2.x), var_1.e.zxx, u_input.c.x, var_1.e), vec2<f32>(-1634f, 1457f)).c, func_4(1676i, Struct_2(var_1.e.wx, var_1.c.x, Struct_1(var_1.d, vec4<f32>(-917f, 1838f, var_2.x, var_1.b.x), var_1.c, 0u, vec4<bool>(var_1.e.x, true, var_1.e.x, var_1.e.x)), Struct_1(u_input.b, var_1.b, var_1.e.wxw, var_1.a, var_1.e)), Struct_1(115588u, var_1.b, var_1.e.xyy, u_input.d.x, vec4<bool>(var_1.c.x, var_1.e.x, var_1.c.x, var_1.c.x)), var_0.xw).d), Struct_1(_wgslsmith_sub_u32(var_1.a, 0u), var_1.b, vec3<bool>(var_1.e.x, var_1.e.x, var_1.c.x), var_1.d, select(vec4<bool>(false, var_1.e.x, false, false), var_1.e, var_1.e.x)), vec2<f32>(_wgslsmith_div_f32(-580f, -1155f), -1000f)).c.b.ww)).d;
    var_1 = var_3;
    var var_4 = _wgslsmith_mult_vec2_u32(~max(reverseBits(u_input.d.xz), vec2<u32>(53888u, 1u)), vec2<u32>(u_input.d.x, var_1.d)) ^ ~(vec2<u32>(u_input.b, ~4202u) | ~vec2<u32>(1u, 1u));
    var var_5 = var_3.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(var_1.b.ywy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0, var_1.b), vec4<f32>(var_3.b.x, var_3.b.x, -184f, var_3.b.x)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 1434f, var_3.b.x, var_1.b.x))))))), u_input.c.wxx, ~u_input.d.x, countOneBits(var_4.x) >> (_wgslsmith_mult_u32(~1u, u_input.d.x & (var_4.x >> (25806u % 32u))) % 32u));
}

