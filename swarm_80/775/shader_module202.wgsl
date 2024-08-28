struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> vec3<f32> {
    var var_0 = ~max(abs(abs(~arg_2.c)), arg_2.c | 0u);
    let var_1 = _wgslsmith_clamp_i32(~(74803i & global0.x), max(firstTrailingBit(~(~global0.x)), _wgslsmith_div_i32(global0.x, global0.x)), firstLeadingBit(~0i));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(592f, -244f, 984f, -1021f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_0.a + vec4<f32>(-150f, arg_0.a.x, 332f, arg_0.a.x)))), vec4<f32>(arg_1, _wgslsmith_f_op_f32(max(892f, 683f)), _wgslsmith_f_op_f32(min(1439f, 436f)), -559f))), -696f);
    let var_3 = firstTrailingBit(max(countOneBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(-14455i, 2147483647i, -2147483647i, 1i), vec4<i32>(global0.x, -20484i, arg_2.b, arg_2.b))), min(~(-vec4<i32>(-7304i, 1i, 0i, global0.x)), countOneBits(-vec4<i32>(arg_2.a.x, 2147483647i, 28621i, -29216i)))));
    global0 = abs(arg_2.a);
    return vec3<f32>(_wgslsmith_div_f32(1087f, arg_1), arg_3, var_2.b);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-563f, -317f, 568f), vec3<f32>(956f, -817f, 1443f), false)) * vec3<f32>(-731f, -278f, -1474f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(104f, -216f, -384f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1417f, -713f))), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(112f, -570f) - -1222f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-901f, 619f, false)) + _wgslsmith_f_op_f32(937f + 706f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(465f, -652f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-431f, 565f, 1231f), vec3<f32>(-218f, -714f, 993f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<f32>(-1045f, -1108f, -1592f, -2590f), 1000f), -861f, Struct_1(vec3<i32>(-2147483647i, global0.x, -34050i), -13866i, 1u, vec4<bool>(true, true, true, false)), -112f))))), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)))));
    var var_1 = firstLeadingBit(0u);
    let var_2 = Struct_2(vec4<f32>(var_0.x, var_0.x, 1156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + _wgslsmith_f_op_f32(max(var_0.x, -1000f))))), -1523f);
    var_0 = _wgslsmith_f_op_vec3_f32(var_2.a.zwx + var_2.a.xzw);
    let var_3 = !(!select(any(vec2<bool>(true, true)), true, true));
    return 1298f;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = vec2<i32>(arg_1, -_wgslsmith_mod_i32(~_wgslsmith_mult_i32(-65832i, global0.x), arg_1));
    var_0 = vec2<i32>(_wgslsmith_add_i32(1i, i32(-1i) * -firstLeadingBit(var_0.x)), arg_1);
    let var_1 = firstLeadingBit(_wgslsmith_div_u32(1u, 68222u));
    var var_2 = -575f;
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-462f * 1000f), _wgslsmith_f_op_f32(-1430f * -2627f)))), _wgslsmith_div_f32(659f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -943f) - _wgslsmith_div_f32(-557f, 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-454f - 508f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1308f + -276f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2124f, 1420f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-429f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2())))))));
    return (~abs(_wgslsmith_clamp_vec3_i32(arg_2.a, vec3<i32>(6463i, -14689i, global0.x), vec3<i32>(-1i, -1i, arg_2.b))) << (vec3<u32>(4294967295u, 4294967295u, ~u_input.b) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, u_input.a, 4294967295u, 100229u), ~vec4<u32>(arg_2.c, 4294967295u, 0u, u_input.b))), vec3<u32>(~1u, ~1u, 0u)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~min(func_1(true, _wgslsmith_sub_i32(global0.x, global0.x), Struct_1(vec3<i32>(global0.x, global0.x, global0.x), 0i, ~u_input.b, select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)))), vec3<i32>(global0.x, -_wgslsmith_mult_i32(global0.x, global0.x), _wgslsmith_mod_i32(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.x, global0.x), vec3<i32>(global0.x, 27214i, 0i)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(144f, 1257f, -646f, 973f)) - vec4<f32>(1545f, -771f, 1987f, -245f)) - vec4<f32>(_wgslsmith_f_op_f32(select(-530f, -835f, false)), _wgslsmith_f_op_f32(ceil(1426f)), _wgslsmith_f_op_f32(min(1105f, 735f)), _wgslsmith_f_op_f32(314f - 1247f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(204f, 1000f, 436f, -936f)) + vec4<f32>(_wgslsmith_f_op_f32(select(103f, -1859f, false)), 1297f, _wgslsmith_f_op_f32(max(-770f, 686f)), _wgslsmith_f_op_f32(floor(890f))))), !(!(all(vec3<bool>(false, true, true)) | any(vec2<bool>(false, true))))));
    let var_1 = vec4<i32>(0i, reverseBits(-(18321i << (0u % 32u))) ^ (7300i >> (u_input.a % 32u)), firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global0.zz, vec2<i32>(0i, -12641i)), global0.yx) >> (1u % 32u)), global0.x);
    let var_2 = var_1.wzx;
    var var_3 = vec2<f32>(var_0.x, var_0.x);
    global0 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-19795i, var_1.x, 0i), firstLeadingBit(var_1.xxz)), abs(var_1.wxy)) & var_2, select(var_1.zww << (~abs(vec3<u32>(u_input.b, u_input.b, u_input.a)) % vec3<u32>(32u)), ~func_1(true, -38210i, Struct_1(vec3<i32>(var_1.x, var_1.x, var_2.x), -9107i, u_input.b, vec4<bool>(true, true, true, false))) ^ var_1.wyx, select(vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0), var_0)), _wgslsmith_f_op_f32(1644f * _wgslsmith_div_f32(var_3.x, 1f)));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.x, var_4.a.x))))));
    var var_6 = _wgslsmith_div_i32(0i, firstTrailingBit(~(~var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -612f) * var_0.x) + _wgslsmith_f_op_f32(-754f + _wgslsmith_f_op_f32(var_4.b * var_4.b))))), _wgslsmith_f_op_f32(func_2()), ~(u_input.b & ~(~0u)));
}

