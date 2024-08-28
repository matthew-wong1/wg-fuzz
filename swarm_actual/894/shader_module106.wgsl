struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = vec2<f32>(arg_3.a, -412f);
    var var_1 = arg_1;
    var var_2 = -173f;
    var var_3 = Struct_2(arg_3, arg_3, arg_0.c, Struct_1(_wgslsmith_f_op_f32(arg_3.a + -1456f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, arg_0.b.a))))));
    var var_4 = Struct_2(arg_2.a.d, Struct_1(_wgslsmith_f_op_f32(-367f * arg_3.a), _wgslsmith_f_op_f32(f32(-1f) * -1155f)), abs(~arg_2.a.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(420f + arg_0.d.b), 1000f))))));
    return vec4<bool>(select(all(select(vec3<bool>(arg_1.x, true, arg_1.x), !vec3<bool>(true, false, arg_1.x), !arg_1.x)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, arg_1.x), var_1.ww, vec2<bool>(arg_1.x, arg_1.x)), all(arg_1))), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, var_1.x, arg_1.x), arg_1))), (i32(-1i) * -20627i) <= ~(u_input.a.x ^ 18175i), var_1.x, false);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec4<bool>) -> f32 {
    let var_0 = -1147f;
    var var_1 = !arg_3;
    let var_2 = Struct_1(-1240f, _wgslsmith_f_op_f32(abs(arg_2.a.b.a)));
    let var_3 = vec3<i32>(-1i) * -firstLeadingBit(countOneBits(~vec3<i32>(-20946i, 0i, u_input.a.x)));
    let var_4 = _wgslsmith_mod_i32(var_3.x, 2147483647i);
    return -524f;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(441f, _wgslsmith_f_op_f32(-137f + 494f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1449f, -316f))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-909f, -1000f))), 1f), select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 32886u, 0u, 4294967295u), true), Struct_1(394f, _wgslsmith_f_op_f32(-1088f - _wgslsmith_f_op_f32(f32(-1f) * -1299f)))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.b.a))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1095f, var_0.a.d.b, -967f, var_0.a.a.a)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(758f, -1391f), vec2<f32>(var_0.a.a.a, var_0.a.b.b))), var_0, func_3(Struct_2(var_0.a.b, Struct_1(-913f, var_0.a.b.a), var_0.a.c, Struct_1(var_0.a.b.a, 340f)), vec4<bool>(true, false, false, false), Struct_3(var_0.a), Struct_1(-1595f, var_0.a.b.b)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.b, var_0.a.d.b)));
    let var_2 = select(u_input.a.x, _wgslsmith_add_i32(~(-59450i), -23758i), true);
    var var_3 = !select(func_3(var_0.a, vec4<bool>(true, true, true, true), Struct_3(Struct_2(var_0.a.d, Struct_1(var_0.a.a.a, 1452f), var_0.a.c, var_0.a.d)), Struct_1(_wgslsmith_f_op_f32(step(var_1.x, 527f)), _wgslsmith_f_op_f32(trunc(1592f)))).wx, vec2<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), false);
    let var_4 = Struct_1(_wgslsmith_div_f32(-463f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(ceil(-941f)))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1151f + -1080f), -859f, _wgslsmith_f_op_f32(floor(-208f)), var_0.a.b.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.b, 1271f, 1069f, var_0.a.b.b)))), vec4<bool>(true, true, func_3(var_0.a, vec4<bool>(var_3.x, true, false, true), var_0, Struct_1(var_0.a.a.a, var_0.a.a.a)).x, var_2 != -2795i))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + _wgslsmith_f_op_f32(sign(var_1.x))), var_1.x), Struct_3(Struct_2(Struct_1(var_0.a.d.a, 199f), var_0.a.a, var_0.a.c, var_0.a.a)), vec4<bool>(func_3(var_0.a, select(vec4<bool>(var_3.x, true, false, true), vec4<bool>(false, var_3.x, var_3.x, true), var_3.x), var_0, Struct_1(var_0.a.a.b, 240f)).x, var_3.x, false, var_3.x))));
    return var_0.a;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    var var_0 = arg_2.xz;
    let var_1 = ~arg_0;
    let var_2 = Struct_3(func_2());
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.d.a), func_2().a.b);
    var var_4 = -max(1i, var_0.x);
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = Struct_1(-1364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a))));
    var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.a)), arg_0.a, _wgslsmith_div_f32(arg_0.a, var_0.a))))));
    var_0 = func_2().d;
    var var_2 = vec2<f32>(-406f, -2856f);
    return _wgslsmith_dot_vec3_u32(firstLeadingBit(~countOneBits(vec3<u32>(1u, 119769u, 44684u))), vec3<u32>(~(~(~1u)), 5117u, ~(~(~0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -844f);
    var var_1 = u_input.a.xz;
    var var_2 = var_0;
    var_2 = _wgslsmith_f_op_f32(-100f * var_0);
    var_2 = var_0;
    let var_3 = func_5(Struct_1(-393f, var_0), -abs(~u_input.a.yy), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(10109u, _wgslsmith_f_op_f32(-var_0), u_input.a.www))), _wgslsmith_div_f32(909f, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(f32(-1f) * -1758f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(-1188f + var_0)))));
    var var_4 = select(_wgslsmith_sub_i32(var_1.x, var_1.x), -23594i, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1179f, var_0, var_0) * vec4<f32>(var_0, -197f, 1283f, var_0)) * vec4<f32>(var_0, var_0, 836f, -124f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1391f, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1898f, 587f))))), firstLeadingBit(~1035u), _wgslsmith_f_op_f32(f32(-1f) * -469f), 1i, u_input.a.www);
}

