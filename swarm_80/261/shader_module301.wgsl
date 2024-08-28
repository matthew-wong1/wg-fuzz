struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-2329f + -1156f), _wgslsmith_f_op_f32(step(315f, -1452f)), -1000f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-988f)), _wgslsmith_div_f32(-187f, 377f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1303f)), -542f)))));
    let var_1 = min(~vec3<u32>(_wgslsmith_sub_u32(~7580u, firstTrailingBit(1u)), 44751u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(10189u, 9380u)), vec2<u32>(42973u, 1u))), select(vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(20583u, 50863u), vec2<u32>(11691u, 1u), false), abs(vec2<u32>(0u, 0u))), ~1u, ~16424u), ~min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 48876u, 1u)), select(vec3<bool>(2147483647i != u_input.a, all(vec2<bool>(false, true)), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)))));
    var var_2 = vec3<u32>(~(countOneBits(var_1.x) | abs(var_1.x)), select(_wgslsmith_sub_u32(~var_1.x, _wgslsmith_sub_u32(var_1.x, var_1.x)), 53539u, true), _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_1, var_1), _wgslsmith_clamp_u32(var_1.x, 0u, var_1.x)), ~var_1.x)) | var_1;
    var var_3 = min(~(~(~var_1.x)), ~(~1u));
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-571f, _wgslsmith_f_op_f32(step(-449f, var_0.a.x)), _wgslsmith_f_op_f32(-324f + _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x)), Struct_1(var_0.a), var_2.x, min(~firstLeadingBit(vec4<i32>(u_input.a, -37807i, u_input.a, 2147483647i)), -max(vec4<i32>(u_input.a, 2147483647i, -46350i, u_input.a), ~vec4<i32>(0i, -1i, u_input.a, 923i))));
    return true;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: vec4<u32>) -> i32 {
    var var_0 = ~arg_3;
    let var_1 = !(!all(vec4<bool>(true, false, true, true)));
    var var_2 = 43508u;
    let var_3 = vec4<bool>(any(!(!select(vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(true, var_1, var_1, true), var_1))), true & !func_3(), false, true);
    let var_4 = Struct_4(~firstTrailingBit(var_0.x), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 570f, -877f, -194f) - vec4<f32>(-1000f, arg_1, -605f, arg_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-156f, arg_1, arg_1, arg_1))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(904f, -397f, arg_1, -767f)))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, arg_1, arg_1)))))), arg_0, ~min(abs(vec4<i32>(-8876i, u_input.a, arg_2, arg_2)), vec4<i32>(2253i, -2956i, u_input.a, arg_2))), 73236u, select(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2, ~arg_2), ~(~vec2<i32>(6983i, -38141i))), -(abs(vec2<i32>(u_input.a, -1i)) & (vec2<i32>(arg_2, u_input.a) >> (var_0.xz % vec2<u32>(32u)))), select(!select(vec2<bool>(false, true), vec2<bool>(true, var_3.x), var_1), !vec2<bool>(var_1, true), func_3())), arg_2);
    return 0i;
}

fn func_1() -> f32 {
    let var_0 = -(~vec3<i32>(min(14797i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -26786i, u_input.a, 0i), vec4<i32>(-2147483647i, 1i, u_input.a, u_input.a))), ~0i << (_wgslsmith_add_u32(1u, 0u) % 32u), max(-2147483647i, func_2(0u, 1000f, u_input.a, vec4<u32>(23674u, 32317u, 50356u, 50848u)))));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(max(~vec4<u32>(0u, 51949u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u))), reverseBits(firstLeadingBit(~vec4<u32>(0u, 36675u, 4294967295u, 0u)))), 0u, _wgslsmith_add_u32(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(22921u, 13300u), vec2<u32>(60010u, 0u))), _wgslsmith_add_u32(abs(0u), _wgslsmith_sub_u32(4294967295u, 1u) >> (min(4294967295u, 0u) % 32u))));
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~(~4294967295u), countOneBits(~(9535u >> (1u % 32u))), 4294967295u), vec3<u32>(select(27421u, _wgslsmith_clamp_u32(firstTrailingBit(var_1.x), ~70681u, 46404u), !all(vec4<bool>(false, false, true, true))), reverseBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1664u, var_1.x, 33208u, var_1.x), vec4<u32>(4294967295u, var_1.x, 20657u, 43225u), vec4<bool>(false, true, true, false)), _wgslsmith_div_vec4_u32(vec4<u32>(96485u, 62957u, var_1.x, 1u), vec4<u32>(0u, 18813u, var_1.x, var_1.x)))), var_1.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, ~var_1.x, ~(~0u)), ~vec3<u32>(~var_1.x, reverseBits(var_1.x), var_1.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f) - _wgslsmith_div_f32(740f, 1910f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(322f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1043f, -716f, 1200f) + vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(462f, 367f, 116f), vec3<f32>(-844f, -1420f, 233f), false)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(365f)), _wgslsmith_f_op_f32(trunc(-485f)), 523f)));
    let var_3 = any(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-642f, _wgslsmith_f_op_f32(var_2.x + -1000f)))))) - _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(round(-244f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-502f, _wgslsmith_f_op_f32(func_1()), 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1592f, 1097f, 883f) - vec3<f32>(-218f, 1000f, -1141f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(996f, -591f, -318f)))))));
    var var_1 = _wgslsmith_mod_i32(i32(-1i) * -2147483647i, u_input.a);
    let var_2 = min(u_input.a, abs(u_input.a)) > ~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, u_input.a), -(~vec2<i32>(-1706i, -1i)));
    let var_3 = -216f;
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(~func_2(1u, 911f, -8381i, vec4<u32>(26714u, 0u, 28131u, 7038u)), ~u_input.a >> (~25819u % 32u)), u_input.a), vec2<i32>(-24995i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 44982i, u_input.a) & _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, -24930i, 44823i)), -vec3<i32>(2147483647i, u_input.a, u_input.a))));
    let var_4 = Struct_2(1166f);
    var_1 = func_2(_wgslsmith_clamp_u32(4294967295u, ~(~firstTrailingBit(19569u)), ~1u), _wgslsmith_f_op_f32(f32(-1f) * -962f), _wgslsmith_add_i32(-1i, u_input.a), firstTrailingBit(select(_wgslsmith_add_vec4_u32(vec4<u32>(29689u, 15818u, 0u, 36996u), vec4<u32>(1u, 1u, 1u, 1u)), max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(14068u, 4294967295u, 5512u, 4294967295u)), !vec4<bool>(true, var_2, var_2, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4.a, 473f, any(vec2<bool>(var_2, var_2)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 - var_0.a.x), var_4.a)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(f32(-1f) * -410f)));
}

