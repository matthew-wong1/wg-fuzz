struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-440f, 857f, 1674f), vec3<f32>(-1334f, 684f, -1161f), vec3<f32>(749f, 610f, -840f), vec3<f32>(2022f, 742f, -864f), vec3<f32>(509f, -1065f, 324f), vec3<f32>(-280f, -514f, 1250f), vec3<f32>(684f, 848f, -684f), vec3<f32>(656f, -1292f, 1645f), vec3<f32>(-806f, -1442f, 639f), vec3<f32>(-322f, -351f, 1106f), vec3<f32>(1695f, 1183f, -369f), vec3<f32>(777f, -115f, 1724f), vec3<f32>(-659f, -1280f, 1000f), vec3<f32>(-148f, 1617f, 354f), vec3<f32>(506f, 893f, 810f));

var<private> global1: array<bool, 28>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(868f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1502f + arg_2.a), arg_2.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1)))) + _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -261f) + 1f))), arg_2.c, vec2<bool>(!global1[_wgslsmith_index_u32(arg_0, 28u)], all(arg_2.d)), arg_2.e);
    global1 = array<bool, 28>();
    let var_1 = select(!(!select(!vec2<bool>(global1[_wgslsmith_index_u32(7694u, 28u)], true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(arg_2.d.x & select(!global1[_wgslsmith_index_u32(arg_0, 28u)], true && arg_2.d.x, arg_2.d.x), all(select(vec2<bool>(false, true), select(vec2<bool>(arg_2.d.x, var_0.d.x), var_0.d, false), !var_0.d))), !(arg_2.e.x < var_0.e.x));
    global1 = array<bool, 28>();
    var var_2 = !(true & var_1.x);
    return -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<f32> {
    var var_0 = Struct_3(~_wgslsmith_mult_u32(0u, arg_0.e.x), ~arg_0.c.x, 2265f, Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0.e.xyz | vec3<u32>(arg_0.e.x, arg_0.e.x, arg_0.e.x), abs(arg_0.e.wxy)), arg_0.e.x | 1u)));
    let var_1 = ~(_wgslsmith_clamp_u32(~var_0.d.a, arg_0.e.x >> (arg_0.e.x % 32u), arg_0.e.x) | var_0.d.a) >= ~1u;
    global0 = array<vec3<f32>, 15>();
    let var_2 = Struct_3(0u, min(arg_0.c.x, -select(_wgslsmith_div_i32(0i, u_input.a.x), 2147483647i, true)), 1383f, var_0.d);
    var_0 = var_2;
    return arg_1.yx;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    global0 = array<vec3<f32>, 15>();
    let var_0 = arg_3;
    let var_1 = arg_1.d.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_1.c)), arg_2, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.a, 0u), vec2<u32>(var_1, 0u)), 28u)])), arg_1.c), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(0i, arg_1.b, u_input.a.x, u_input.a.x)), vec4<i32>(_wgslsmith_mult_i32(arg_1.b, u_input.a.x), 0i, ~1i, func_3(arg_1.a, arg_2, Struct_1(arg_1.c, arg_0, vec4<i32>(-15859i, 2147483647i, arg_1.b, -73530i), var_0.yx, vec4<u32>(var_1, arg_1.d.a, 24884u, var_1)), u_input.a.x)), select(vec4<i32>(8087i, 1i, arg_1.b, arg_1.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 39156i, u_input.a.x, -1i), vec4<i32>(u_input.a.x, arg_1.b, 1i, arg_1.b), vec4<i32>(1i, -2147483647i, arg_1.b, -2147483647i)), true)), !vec2<bool>(!var_0.x, global1[_wgslsmith_index_u32(4294967295u, 28u)] & var_0.x), vec4<u32>(arg_1.a ^ _wgslsmith_mult_u32(1u, 0u), arg_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, var_1, var_1), ~vec4<u32>(33523u, 5910u, var_1, 25059u)), 1u)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(1000f, -611f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 * 808f), _wgslsmith_f_op_f32(arg_0 * -377f)), -960f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-476f, arg_1.c, arg_1.c), global0[_wgslsmith_index_u32(0u, 15u)])) * _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_1, 15u)] - global0[_wgslsmith_index_u32(arg_1.a, 15u)])), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(1u, 15u)] + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 314f, arg_1.c))), all(var_0.yy)))))));
    global1 = array<bool, 28>();
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1376f, arg_1.c)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)))))), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(~arg_1.b, _wgslsmith_add_i32(-72259i, arg_1.b), i32(-1i) * -1i, _wgslsmith_div_i32(67450i, 31083i)), max(vec4<i32>(-1i, arg_1.b, u_input.a.x, -2147483647i), vec4<i32>(16723i, 0i, u_input.a.x, 1i)) & ~vec4<i32>(arg_1.b, arg_1.b, -27932i, 14721i))), !select(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 28u)])), !arg_3.xy, global1[_wgslsmith_index_u32(~reverseBits(4294967295u), 28u)]), ~select(~max(vec4<u32>(104853u, arg_1.d.a, 0u, var_1), vec4<u32>(356u, 0u, 2478u, arg_1.a)), ~vec4<u32>(var_1, arg_1.a, var_1, 10982u), true));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = all(!vec4<bool>(arg_0.e.x >= firstTrailingBit(arg_0.e.x), arg_2, all(!arg_0.d), select(false, arg_2, true)));
    var var_1 = !vec4<bool>(any(vec4<bool>(true, true, true, true)), var_0, (var_0 || true) && arg_2, arg_0.d.x);
    var var_2 = Struct_3(arg_0.e.x ^ ~1u, ~(-(~_wgslsmith_mult_i32(-9920i, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(974f - 783f)), Struct_2(4294967295u));
    var var_3 = Struct_3(0u, ~(~_wgslsmith_dot_vec2_i32(~u_input.a, -vec2<i32>(2147483647i, u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1220f), var_2.d);
    var var_4 = -firstTrailingBit(-arg_0.c.zxy);
    return arg_0.a;
}

fn func_1() -> f32 {
    global1 = array<bool, 28>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) - -987f);
    return _wgslsmith_f_op_f32(func_5(func_2(_wgslsmith_f_op_f32(-1f), Struct_3(abs(3300u), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f - -1000f)), Struct_2(~22364u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f) * -941f)), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(reverseBits(1u), 28u)], global1[_wgslsmith_index_u32(1u, 28u)]), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 28u)], false, global1[_wgslsmith_index_u32(3793u, 28u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, _wgslsmith_mod_u32(4294967295u, 4294967295u)), 28u)])), u_input.a.x, !all(select(vec2<bool>(false, global1[_wgslsmith_index_u32(10287u, 28u)]), vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(87584u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]))) || any(vec2<bool>(global1[_wgslsmith_index_u32(firstTrailingBit(34472u), 28u)], false)), -254f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 28>();
    var var_0 = _wgslsmith_dot_vec4_u32(~select(firstLeadingBit(~vec4<u32>(63379u, 85007u, 32443u, 4294967295u)), ~(~vec4<u32>(6204u, 0u, 4294967295u, 1u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 37652u, 4294967295u), vec3<u32>(4294967295u, 68938u, 59743u)), 28u)] | true), firstLeadingBit(max(min(_wgslsmith_div_vec4_u32(vec4<u32>(33280u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 42582u, 4294967295u, 25425u)), ~vec4<u32>(16934u, 36097u, 113309u, 52131u)), vec4<u32>(~9741u, ~12306u, max(4294967295u, 1u), abs(0u)))));
    var var_1 = !(!(!global1[_wgslsmith_index_u32(~80309u, 28u)]));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -406f);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2642f * _wgslsmith_f_op_f32(func_1())) - -978f)));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -433f);
    var var_4 = Struct_3(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 4881u), vec2<u32>(1u, 1u)), vec2<u32>(~0u, reverseBits(48453u))) | _wgslsmith_mod_u32(~(~43366u), 1805u << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 37781u), vec2<u32>(105273u, 6656u)) % 32u)), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -459f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(301f, var_3) + _wgslsmith_f_op_f32(f32(-1f) * -671f)))), Struct_2(4294967295u));
    global0 = array<vec3<f32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-573f, var_4.c, var_3, var_4.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_3, 426f, 378f) * vec4<f32>(-480f, var_3, var_3, var_3))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_4.c, 1000f, var_4.c, 658f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(217f, 1903f, 350f, -485f)))))))), u_input.a.x, max(var_4.d.a, 1u), _wgslsmith_add_vec4_i32(abs(vec4<i32>(-2147483647i & var_4.b, _wgslsmith_mod_i32(var_4.b, 33036i), 23663i, -u_input.a.x)), vec4<i32>(0i, -(~u_input.a.x), u_input.a.x, (0i << (var_4.a % 32u)) | (i32(-1i) * -2147483647i))));
}

