struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: i32) -> f32 {
    let var_0 = Struct_2(Struct_1(select(arg_2.a, _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_1.x, u_input.b.x, u_input.b.x), vec4<u32>(86204u, u_input.b.x, u_input.b.x, 21110u), arg_2.a), vec4<u32>(14572u, arg_2.a.x, arg_1.x, 32612u)), vec4<bool>(false, true, false, true)), true | (-u_input.a.x >= -1i), abs(vec3<u32>(_wgslsmith_mod_u32(arg_2.a.x, 11551u), ~u_input.b.x, arg_2.a.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)))))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1217f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-994f - -334f), _wgslsmith_f_op_f32(func_3(vec2<f32>(1555f, 783f), vec2<u32>(48156u, 0u), Struct_5(vec4<u32>(arg_0.a.x, 1u, u_input.b.x, 9971u), u_input.b.x, 1293f), u_input.a.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec2<f32>(455f, -461f), vec2<u32>(22956u, u_input.b.x), Struct_5(arg_0.a, 0u, -2054f), select(32119i, -11505i, arg_0.b)))))));
    var_0 = ~_wgslsmith_sub_u32(arg_0.a.x << (_wgslsmith_div_u32(22065u, u_input.b.x) % 32u), abs(~arg_0.a.x)) ^ ~u_input.b.x;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, -2114f, true)) - _wgslsmith_div_f32(-207f, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -297f)), all(select(vec3<bool>(true, true, arg_0.b), vec3<bool>(true, arg_0.b, true), vec3<bool>(arg_0.b, arg_0.b, arg_0.b))))), _wgslsmith_f_op_f32(-var_1.x));
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, var_1.x))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(var_1.x * 873f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(exp2(var_1.x))))));
}

fn func_1() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(1247f, 954f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(17646u, u_input.b.x, 38699u, 1u), true, vec3<u32>(0u, u_input.b.x, 1u)))), _wgslsmith_f_op_f32(-1298f * 1596f))), 1017f, _wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(0u, 3700u, u_input.b.x, u_input.b.x), true, max(u_input.b, vec3<u32>(u_input.b.x, 0u, 18714u))))))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<u32>) -> i32 {
    let var_0 = arg_2.x;
    let var_1 = ~_wgslsmith_add_i32(_wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(u_input.a.wz, u_input.a.zy), -37052i), arg_0);
    let var_2 = Struct_1(select(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(19142u, 1u, 4294967295u, 1u), vec4<u32>(16582u, u_input.b.x, arg_3.x, arg_3.x))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(21483u, 1u, arg_3.x, arg_3.x), vec4<u32>(u_input.b.x, arg_3.x, 1u, 1u))), true), true, ~_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(u_input.b.x, 33484u, u_input.b.x)), countOneBits(u_input.b | vec3<u32>(u_input.b.x, arg_3.x, 1u))));
    let var_3 = vec4<bool>(true, !var_2.b, select(!var_2.b, false, _wgslsmith_sub_i32(2147483647i, abs(arg_0)) <= 1i), var_2.b);
    let var_4 = var_2.b & (!((var_3.x | false) || true) && false);
    return abs(_wgslsmith_mult_i32(countOneBits(abs(0i)), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.a.x, _wgslsmith_sub_i32(func_4(u_input.a.x, ~u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) - vec3<f32>(868f, 285f, -1790f)), ~vec2<u32>(u_input.b.x, 4294967295u)), -26113i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_f32(abs(-1000f)), -120f, _wgslsmith_f_op_f32(trunc(1002f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(805f, 166f, -290f, 193f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 606f, -466f, -667f) - vec4<f32>(-2172f, 999f, -1387f, -1045f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 18934u), false, u_input.b))) * -161f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(401f - -599f), _wgslsmith_f_op_f32(round(477f)))) + -1042f)));
    var var_1 = Struct_4(var_0);
    let var_2 = Struct_5(~(select(vec4<u32>(u_input.b.x, 35630u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 4294967295u, 31754u, 4294967295u), false) ^ ~(~vec4<u32>(1u, u_input.b.x, 57107u, 33363u))), 0u, var_1.a.c.x);
    var var_3 = Struct_2(Struct_1(abs(var_2.a), !any(vec2<bool>(false, false)), vec3<u32>(0u, ~u_input.b.x, ~17899u) | u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_3.a.c.x, u_input.b.x) ^ vec2<u32>(var_2.a.x, 22370u)), ~_wgslsmith_div_vec2_u32(u_input.b.yy, vec2<u32>(var_3.a.a.x, var_2.b))), (~var_3.a.a.zy | u_input.b.xz) >> (var_2.a.zy % vec2<u32>(32u)));
}

