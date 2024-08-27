struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1987f, -149f) * 3342f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1015f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), _wgslsmith_f_op_f32(sign(-412f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1244f));
    var var_1 = 854f;
    var var_2 = 4736u;
    let var_3 = Struct_4(Struct_2(firstLeadingBit(vec2<i32>(1i, 1i))), u_input.a.x >= max(u_input.a.x, ~(~u_input.a.x)), Struct_2(reverseBits(~vec2<i32>(1i, 74251i))));
    let var_4 = vec3<i32>(var_3.c.a.x, var_3.a.a.x, 1i);
    return u_input.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_3) -> bool {
    let var_0 = arg_0.x;
    let var_1 = ~max(~(~vec2<i32>(85211i, -46490i)), firstLeadingBit(vec2<i32>(-37022i, 39075i)));
    let var_2 = Struct_1(_wgslsmith_mult_u32(4294967295u, func_3()), true, _wgslsmith_f_op_f32(select(-724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(249f - var_0), _wgslsmith_f_op_f32(arg_0.x * var_0), !arg_2.a.x))), true)), arg_1.x, arg_1.x | (all(!vec2<bool>(arg_1.x, false)) && false));
    var var_3 = Struct_1(~firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, var_2.a), ~24697u)), any(vec2<bool>(u_input.a.x > u_input.a.x, arg_1.x)) || !select(all(vec4<bool>(arg_1.x, false, true, true)), all(arg_1.zyy), arg_1.x), 703f, all(vec4<bool>(false, arg_2.a.x, !select(true, arg_1.x, false), false)), arg_2.a.x);
    var_3 = var_2;
    return true;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f), 608f);
    let var_1 = _wgslsmith_add_i32(~(~_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, -37806i), 2147483647i)), _wgslsmith_div_i32(min(~0i, ~(-1522i)), 1i));
    let var_2 = Struct_1(27616u, (func_3() <= (~arg_0 & select(u_input.a.x, u_input.a.x, false))) | all(select(select(vec3<bool>(false, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, false, false), arg_2.x), vec3<bool>(false, true, false), !arg_2.x)), -1465f, !arg_2.x, false);
    var var_3 = Struct_3(select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(var_2.b, var_2.d, false), vec3<bool>(var_2.b, false, true)), !vec3<bool>(false, var_2.d, var_2.d), !vec3<bool>(false, true, var_2.d)), vec3<bool>(true, all(vec4<bool>(var_2.e, false, true, true)), true), !select(vec3<bool>(false, var_2.d, var_2.d), vec3<bool>(var_2.b, var_2.b, var_2.d), false)), select(vec3<bool>(true, true, true), select(!vec3<bool>(var_2.e, false, arg_2.x), vec3<bool>(false, true, false), true), arg_2.x), !(!all(arg_2))));
    let var_4 = var_2;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_4.c), var_2.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2586f, var_4.c) + vec2<f32>(var_0, var_4.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(788f, var_2.c) + vec2<f32>(-815f, var_4.c))), arg_2.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4.c, var_4.c), vec2<f32>(arg_1, var_4.c)))))) + vec2<f32>(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1046f, _wgslsmith_f_op_f32(-860f - 2600f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-805f, 1207f) - vec2<f32>(-377f, -396f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, -2482f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) - vec2<f32>(175f, var_0.x)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - 2132f))))) * _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_dot_vec2_u32(~u_input.a.xx, u_input.a.yz), var_0.x, !vec2<bool>(func_2(vec2<f32>(-973f, -837f), vec4<bool>(false, false, false, true), Struct_3(vec3<bool>(true, true, false))), any(vec2<bool>(true, false))))));
    let var_1 = Struct_2(vec2<i32>(-2147483647i ^ arg_0, _wgslsmith_add_i32(-arg_0, -18226i >> (0u % 32u))) | vec2<i32>(-max(arg_0, arg_0), arg_0));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1203f, -142f) * vec2<f32>(var_0.x, -422f)) - _wgslsmith_div_vec2_f32(vec2<f32>(316f, 711f), vec2<f32>(417f, var_0.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1043f, var_0.x), vec2<f32>(2102f, 2462f))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x))));
    let var_2 = all(vec3<bool>(!all(vec4<bool>(true, false, true, true)) || true, select(false, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true))), !(-30958i < var_1.a.x)), any(vec2<bool>(true, true))));
    return 82280i;
}

fn func_5(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = !select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false)), vec4<bool>(true, true, false, true), false);
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(arg_1), 1i), select(_wgslsmith_sub_vec2_i32(min(vec2<i32>(arg_1, -1i), vec2<i32>(arg_1, arg_1)), arg_0), vec2<i32>(arg_0.x, func_1(arg_1)), all(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x))))) << (1u % 32u);
    var_2 = -2147483647i;
    var_2 = -(~17945i);
    return Struct_1(_wgslsmith_sub_u32(firstLeadingBit(0u), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(46952u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 0u), u_input.a), vec3<u32>(0u, min(4294967295u, u_input.a.x), u_input.a.x))), var_1.x, _wgslsmith_f_op_f32(1f * 759f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1079f - _wgslsmith_f_op_f32(f32(-1f) * -504f)) - _wgslsmith_f_op_f32(ceil(1000f))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1593f + -1229f)))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_vec2_i32(select(-(~vec2<i32>(-25047i, 0i)), vec2<i32>(-18051i, abs(0i)), true), _wgslsmith_mult_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-78206i, -44054i), vec2<i32>(-1i, 7272i))), vec2<i32>(1i, _wgslsmith_add_i32(10059i, 27381i)))), func_1(2637i));
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_0.c);
}

