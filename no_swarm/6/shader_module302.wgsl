struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = arg_2.b;
    var var_1 = -vec2<i32>(_wgslsmith_add_i32(u_input.c, 2147483647i), u_input.c);
    var_1 = vec2<i32>(-1i, _wgslsmith_add_i32(~_wgslsmith_add_i32(0i, -1i), u_input.a));
    var var_2 = arg_0;
    var_1 = vec2<i32>(u_input.a, -countOneBits(1i));
    return arg_0.c;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<u32>) -> bool {
    var var_0 = arg_1.d;
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d, arg_1.d, arg_1.d, var_1.d), vec4<f32>(var_1.d, 1778f, -677f, -411f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(582f, -1283f, arg_1.d, -1685f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, arg_1.d, var_1.d, arg_1.d)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, arg_1.d, 583f, arg_1.d)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-965f, -215f, -180f, 398f), vec4<f32>(arg_1.d, -2649f, var_1.d, arg_1.d)) * vec4<f32>(var_1.d, var_1.d, 259f, -149f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, var_1.d, var_1.d, arg_1.d) - vec4<f32>(1187f, var_1.d, var_1.d, var_1.d)))))));
    let var_3 = Struct_1(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d))) - arg_1.d) <= var_1.d, !vec3<bool>(true, any(vec4<bool>(arg_1.b, arg_1.c.x, false, true)), false), _wgslsmith_f_op_f32(ceil(var_1.d)));
    var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(step(-1403f, -1000f)))))));
    return var_1.c.x & false;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> vec3<bool> {
    let var_0 = arg_0.x;
    var var_1 = true;
    var_1 = !all(select(select(!vec3<bool>(false, arg_0.x, true), !vec3<bool>(false, var_0, arg_0.x), true), !(!vec3<bool>(true, var_0, false)), select(!vec3<bool>(arg_0.x, true, arg_0.x), func_2(Struct_1(true, true, vec3<bool>(true, true, true), 283f), Struct_1(arg_0.x, false, vec3<bool>(arg_0.x, arg_0.x, false), 360f), Struct_1(false, var_0, vec3<bool>(var_0, false, arg_0.x), 2514f)), 2147483647i == u_input.c)));
    var_1 = any(vec4<bool>(any(vec4<bool>(any(vec2<bool>(false, arg_0.x)), var_0, var_0, func_3(vec4<u32>(u_input.d, 48244u, u_input.e.x, 65171u), Struct_1(var_0, false, vec3<bool>(arg_0.x, var_0, false), -303f), vec2<u32>(u_input.d, 34398u), vec4<u32>(4294967295u, u_input.d, 5941u, 56376u)))), !any(arg_0), firstTrailingBit(arg_1) <= arg_1, true));
    var var_2 = _wgslsmith_mod_i32(-2147483647i, ~arg_1 | ~_wgslsmith_div_i32(~(-1i), abs(-21785i)));
    return !(!func_2(Struct_1(true, !arg_0.x, vec3<bool>(false, false, false), -871f), Struct_1(!var_0, arg_0.x, !vec3<bool>(var_0, arg_0.x, true), _wgslsmith_f_op_f32(step(403f, 318f))), Struct_1(false & var_0, false, vec3<bool>(arg_0.x, var_0, true), _wgslsmith_f_op_f32(trunc(602f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!vec3<bool>(true, true, u_input.b.x <= 33705u), vec3<bool>(false, false, !any(vec3<bool>(true, true, false))), true);
    var var_1 = Struct_1(var_0.x, true, select(vec3<bool>(true, all(!vec2<bool>(false, var_0.x)), true), func_1(!select(var_0.zx, var_0.zz, vec2<bool>(false, var_0.x)), max(u_input.a, u_input.a)), vec3<bool>(false, any(!vec2<bool>(true, var_0.x)), var_0.x || any(vec3<bool>(var_0.x, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - -395f));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.d, -228f)), var_1.d) * -638f)), 1000f, _wgslsmith_f_op_f32(floor(var_1.d)));
    var_1 = Struct_1(!var_1.a, all(!select(vec4<bool>(false, true, var_0.x, true), select(vec4<bool>(true, var_1.a, false, true), vec4<bool>(var_1.b, false, true, true), var_1.a), vec4<bool>(var_1.b, var_0.x, var_1.a, false))), var_1.c, _wgslsmith_f_op_f32(floor(var_1.d)));
    var_1 = Struct_1(any(!(!vec4<bool>(false, true, true, var_1.c.x))), var_1.c.x, vec3<bool>(any(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), select(vec4<bool>(var_1.c.x, var_1.c.x, false, false), vec4<bool>(true, var_1.c.x, var_0.x, var_1.b), false), true)), true, all(var_0.xy)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)) + _wgslsmith_f_op_f32(exp2(var_2.x))))));
    var var_3 = true;
    var_1 = Struct_1(var_0.x, select(1025f != var_2.x, var_0.x, false), vec3<bool>(true, true, false), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(153f - var_1.d))), _wgslsmith_f_op_f32(exp2(var_2.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-var_2.x))), -1580f)));
    let var_4 = select(_wgslsmith_mod_i32(u_input.c, 0i), 0i, _wgslsmith_f_op_f32(select(var_1.d, -661f, var_1.c.x)) > var_1.d);
    var var_5 = 156f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, abs(~1u)), vec3<u32>(~u_input.b.x | ~20559u, _wgslsmith_mult_u32(~u_input.b.x, u_input.d), 23778u)), -vec3<i32>(firstLeadingBit(7425i), _wgslsmith_mod_i32(-34469i, 2147483647i), ~u_input.c) | max(abs(vec3<i32>(u_input.a, u_input.c, 29810i)), vec3<i32>(var_4, 1i, max(2147483647i, var_4))), u_input.e.yx, ~min(min(i32(-1i) * -3270i, -1i), var_4));
}

