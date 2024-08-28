struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 50062u, 27914u, 69172u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(arg_0 - 552f)), 117f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -927f) * -1922f))), true, vec4<f32>(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(540f, -1238f)))), _wgslsmith_div_f32(456f, arg_0), -484f), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), !(!select(false, false, false)), all(vec4<bool>(true, arg_0 != -501f, false, u_input.a > u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(sign(-461f))) - 250f)));
    var var_1 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(36695u, ~u_input.c, global1.x), ~u_input.d.xwz), vec3<u32>(u_input.d.x, countOneBits(u_input.c & 0u), u_input.b.x));
    var_1 = reverseBits(~(~select(global1.yzx, vec3<u32>(var_1.x, global0[_wgslsmith_index_u32(global1.x, 25u)], 20928u), var_0.d.yww) | ~vec3<u32>(var_1.x, 19397u, 26250u)));
    var var_2 = vec2<bool>(u_input.a > abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i) << (global1.zx % vec2<u32>(32u)), vec2<i32>(u_input.a, -1i))), any(var_0.d.zz));
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 835f, var_0.e)) * var_0.c.zyz)), var_0.c.yzy), true, _wgslsmith_f_op_vec4_f32(max(var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(var_0.c.x, arg_0, arg_0, arg_0)) + _wgslsmith_div_vec4_f32(vec4<f32>(-976f, arg_0, -1892f, arg_0), vec4<f32>(-245f, var_0.c.x, var_0.c.x, -1000f)))))), vec4<bool>(any(vec3<bool>(all(vec3<bool>(var_2.x, var_0.b, true)), true | var_2.x, !var_2.x)), all(select(select(vec3<bool>(var_2.x, false, false), var_0.d.zyx, var_0.d.xzy), var_0.d.xwz, true)), false, true == any(var_0.d.yyz)), _wgslsmith_f_op_f32(ceil(-872f)));
    return abs(~_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -1i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2147483647i, 19283i, -1i)), -vec3<i32>(u_input.a, u_input.a, u_input.a)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<i32> {
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    global1 = ~(~abs(vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x), 45531u, u_input.b.x << (global1.x % 32u), ~0u)));
    global0 = array<u32, 25>();
    let var_0 = u_input.d.xy;
    return -arg_0.xy << (~var_0 % vec2<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> vec2<u32> {
    let var_0 = func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(func_3(_wgslsmith_div_f32(1000f, arg_1)), ~func_3(1821f)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -34695i, u_input.a), vec3<i32>(u_input.a, 9622i, u_input.a)), min(vec3<i32>(-2147483647i, 20426i, -10374i), vec3<i32>(u_input.a, 10241i, -20295i))) ^ select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1507i, 2147483647i, -14757i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 2147483647i), vec3<i32>(u_input.a, 0i, 1i)), true)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1305f, -212f, arg_1), vec3<f32>(711f, arg_1, arg_1))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 1153f)) + vec3<f32>(-1413f, arg_1, arg_1))), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-arg_1), arg_1, _wgslsmith_div_f32(-1365f, -330f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1386f, arg_1, 308f, 524f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_1, -298f, arg_1), vec4<f32>(427f, 521f, arg_1, 659f), arg_2.x)))), !arg_2, arg_1));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1891f * arg_1), _wgslsmith_f_op_f32(trunc(-1497f)), _wgslsmith_f_op_f32(min(-1000f, arg_1))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1694f, arg_1, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(426f, 1000f, 378f) + vec3<f32>(arg_1, -1354f, arg_1)))))), !any(!vec3<bool>(arg_0, arg_2.x, false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_1, 459f, -652f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(572f, arg_1, -1000f, arg_1))))), vec4<bool>(u_input.c < u_input.c, all(arg_2.yy), (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 92845u, u_input.b.x, global0[_wgslsmith_index_u32(1u, 25u)]), u_input.b) >> (~u_input.c % 32u)) <= 30873u, (true || !arg_2.x) | any(!arg_2.xx)), arg_1);
    let var_2 = vec4<bool>(true, !(!(!any(vec3<bool>(false, var_1.d.x, arg_0)))), 16997i != -var_0.x, true);
    let var_3 = var_0.x;
    let var_4 = Struct_1(var_1.c.xxz, var_1.d.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c.x, -1000f, var_1.c.x, -319f)))) + _wgslsmith_f_op_vec4_f32(-var_1.c)), _wgslsmith_f_op_vec4_f32(-var_1.c)), vec4<bool>(arg_2.x, all(select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(var_2.x, false, false), true), !var_2.zyw, arg_2.wxx)), ~_wgslsmith_div_i32(var_3, -51794i) == 51390i, var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1)), 358f))));
    return vec2<u32>(1u, max(global0[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_add_u32(~global1.x, ~min(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]))));
}

fn func_1() -> u32 {
    let var_0 = -(~vec4<i32>(u_input.a, 0i, -u_input.a, ~u_input.a) & reverseBits(~countOneBits(vec4<i32>(1i, -43361i, -15733i, -1i))));
    let var_1 = ~global1.wxz;
    global1 = ~_wgslsmith_sub_vec4_u32(select(firstLeadingBit(_wgslsmith_div_vec4_u32(u_input.b, u_input.b)), ~firstTrailingBit(vec4<u32>(54082u, global0[_wgslsmith_index_u32(40374u, 25u)], var_1.x, 1u)), true), vec4<u32>(~(4294967295u ^ u_input.b.x), ~global1.x, 0u, _wgslsmith_dot_vec2_u32(func_2(false, -426f, vec4<bool>(true, false, true, true)), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], u_input.c))));
    var var_2 = 900f;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-725f, 539f, 1734f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1553f, -1946f, -1000f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f)), -380f, _wgslsmith_f_op_f32(trunc(1013f))))), !(true && all(vec4<bool>(false, true, true, false))) && true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(964f, -2136f, 212f, 1000f))))) + vec4<f32>(1f, _wgslsmith_f_op_f32(-1838f + -427f), _wgslsmith_f_op_f32(-261f - -552f), 1f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-224f, -285f, _wgslsmith_f_op_f32(422f * -439f), -1894f), vec4<f32>(_wgslsmith_f_op_f32(trunc(-910f)), _wgslsmith_f_op_f32(floor(734f)), 1f, -1000f)))), vec4<bool>(any(vec4<bool>(true, true, any(vec2<bool>(true, true)), true)), true, !(!(var_0.x != var_0.x)), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-1018f * _wgslsmith_f_op_f32(f32(-1f) * -1878f)));
    return ~(~_wgslsmith_mod_u32(~1u, 26234u) | ~(~49979u << (global0[_wgslsmith_index_u32(var_1.x, 25u)] % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~u_input.d.x, ~(global0[_wgslsmith_index_u32(func_1(), 25u)] << (~132u % 32u)), firstLeadingBit(~(~global1.x))) ^ vec3<u32>(4294967295u, _wgslsmith_div_u32(reverseBits(u_input.b.x), ~select(0u, 1u, false)), _wgslsmith_mult_u32(u_input.b.x, 4294967295u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-1000f - -344f), -1088f, _wgslsmith_f_op_f32(select(-674f, -564f, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, _wgslsmith_f_op_f32(step(-996f, -956f)), 733f)))), true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-180f, 2129f)), _wgslsmith_f_op_f32(min(-389f, -802f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -425f))))), -1000f, 1f), !vec4<bool>(all(vec2<bool>(false, false)), select(true, true, all(vec3<bool>(false, true, true))), true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(382f - 228f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(525f + -366f)) + _wgslsmith_f_op_f32(sign(-943f)))));
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(14384i, 0i, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a))), -20935i), _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, -15639i) | -vec2<i32>(u_input.a, -64795i), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(30029i, -279i), vec2<i32>(55558i, u_input.a), vec2<i32>(u_input.a, 2147483647i)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1387f, var_1.a.x, var_1.c.x) - var_1.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.x, -872f, var_1.a.x), var_1.a)), var_1.a, var_1.d.yzy)))))), true, var_1.c, !(!select(var_1.d, vec4<bool>(true, var_1.d.x, true, var_1.d.x), vec4<bool>(false, true, var_1.d.x, var_1.b))), -496f);
    var var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -586f))), -420f), select(!(all(vec2<bool>(var_3.d.x, var_3.d.x)) & false), any(!vec4<bool>(var_3.d.x, var_3.b, true, var_1.d.x)), all(var_3.d.zwx)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1815f) + var_3.c.x), _wgslsmith_f_op_f32(exp2(var_3.a.x)), _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(trunc(815f))), var_1.c), var_1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1379f * var_1.c.x) - 1000f))));
    var var_5 = _wgslsmith_sub_u32(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(u_input.d.x, global0[_wgslsmith_index_u32(60019u, 25u)], global1.x), 1u), 4294967295u) != ~var_0.x;
    var_5 = any(!select(select(select(vec2<bool>(var_3.d.x, var_1.b), vec2<bool>(false, var_3.d.x), vec2<bool>(var_1.b, var_1.b)), var_4.d.zx, !var_3.b), !select(var_3.d.xw, vec2<bool>(var_4.d.x, false), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.x, _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_add_u32(firstTrailingBit(15559u), u_input.d.x)), 0u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.e))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f - var_3.a.x))), var_1.e, 1222f), global1.x, abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, u_input.a, var_2, -2147483647i), vec4<i32>(~0i, ~2147483647i, 0i, -1i), vec4<i32>(-25251i, _wgslsmith_dot_vec4_i32(vec4<i32>(2446i, var_2, u_input.a, -49994i), vec4<i32>(var_2, -1i, -1i, 0i)), 17903i, firstLeadingBit(-1i)))), _wgslsmith_sub_vec2_i32(-(vec2<i32>(-79764i, -51445i) ^ vec2<i32>(u_input.a, -32435i)) & _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(55931i, -3516i), vec2<i32>(var_2, 2147483647i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-6262i, 1i), vec2<i32>(-1i, u_input.a))), abs(func_4(vec3<i32>(var_2, var_2, 1i), Struct_1(var_1.c.zxy, true, var_4.c, vec4<bool>(var_3.b, var_4.d.x, true, false), -2214f))) | vec2<i32>(-var_2, -15124i)));
}

