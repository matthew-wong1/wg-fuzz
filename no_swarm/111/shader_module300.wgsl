struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec3<bool>) -> i32 {
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i & max(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), -57853i << (arg_0.e.x % 32u)), ~arg_0.a.d.a.x), -20727i);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = -697f;
    var var_1 = Struct_1(vec4<i32>(arg_0.x | arg_3.a.x, func_3(Struct_5(Struct_3(vec3<f32>(-1725f, 273f, var_0), vec2<bool>(true, false), vec3<bool>(false, arg_3.b, arg_3.b), arg_3), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_3.b, false, true, arg_3.b), vec4<bool>(true, arg_3.b, arg_3.b, arg_3.b)), ~36669u, var_0, arg_1.yy), Struct_2(arg_3), vec3<bool>(!arg_3.b, true, !arg_3.b)), _wgslsmith_mult_i32(-1i, -func_3(Struct_5(Struct_3(vec3<f32>(919f, var_0, var_0), vec2<bool>(arg_3.b, arg_3.b), vec3<bool>(arg_3.b, true, arg_3.b), arg_3), vec4<bool>(arg_3.b, false, true, false), 1u, var_0, arg_1.xy), Struct_2(arg_3), vec3<bool>(true, arg_3.b, false))), -14751i), true & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 * 948f), -410f))), arg_1.x);
    var_1 = arg_3;
    var_1 = Struct_1(arg_2, !any(vec3<bool>(true, true, !arg_3.b)), 1u);
    let var_2 = Struct_2(arg_3);
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(1074f)), 847f, var_0);
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(516f, -1033f, 407f))) * _wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(1i, u_input.b.x), vec3<u32>(arg_0.c, arg_0.c, 4422u), ~arg_0.a, arg_0))), vec2<bool>(!(!arg_0.b), true), !(!(!vec3<bool>(true, arg_0.b, arg_0.b))), Struct_1(arg_0.a, arg_0.b, u_input.a)), vec4<bool>(!(!any(vec2<bool>(true, false))), select(all(vec2<bool>(false, false)), !(arg_0.a.x == 32011i), ~arg_0.a.x != -1i), any(vec3<bool>(true, arg_0.b, arg_0.b)), arg_0.b), ~min(arg_0.c, 4294967295u), -1282f, ~(~(~vec2<u32>(9703u, 4294967295u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1014f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1072f + -1124f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1408f, _wgslsmith_div_f32(-220f, 332f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(-1i, u_input.b.x, u_input.b.x, -1i), true, 4294967295u)))))), 228f);
    var_0 = vec2<f32>(1311f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(591f + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(116f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) - vec2<f32>(921f, _wgslsmith_f_op_f32(var_0.x + -1434f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1305f) - vec2<f32>(-365f, -1175f)), vec2<f32>(198f, -572f), var_0.x < 2108f))))));
    let var_1 = vec3<i32>(1i, u_input.b.x, select(u_input.b.x, 0i, !(7863u != u_input.a)));
    var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))) * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -1767f, true)) * var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2240f)), -1001f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -545f) + -878f), _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1183f, _wgslsmith_f_op_f32(var_0.x - -463f))))))));
    var var_3 = 1242f;
    var var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -1784f, var_2, var_2), vec4<f32>(1000f, var_2, var_0.x, var_0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -847f, -1497f, var_0.x) * vec4<f32>(var_2, -1000f, -1060f, -2177f)))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_2)))), 482f, _wgslsmith_f_op_f32(ceil(-1122f))))), ~(vec4<i32>(-1i) * -vec4<i32>(2147483647i, var_1.x, var_1.x, var_1.x)), abs(vec3<u32>(_wgslsmith_sub_u32(23812u, u_input.a) | (u_input.a >> (68521u % 32u)), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 26343u, u_input.a), ~vec4<u32>(53137u, 20331u, u_input.a, 0u)))), _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(u_input.a, 4294967295u))), _wgslsmith_div_vec2_u32(select(~vec2<u32>(84345u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, true)), reverseBits(vec2<u32>(50740u, u_input.a)) << ((vec2<u32>(0u, u_input.a) | vec2<u32>(3717u, 0u)) % vec2<u32>(32u)))));
}

