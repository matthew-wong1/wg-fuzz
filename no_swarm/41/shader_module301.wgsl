struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, true, true, false, false, false, false, false, true, true, false, true, true, true, true, true, false);

var<private> global1: vec2<bool>;

var<private> global2: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>) -> u32 {
    global2 = Struct_2(~(~global2.a));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-110f)))), _wgslsmith_f_op_f32(903f + 234f), 1112f, 122f);
    global2 = Struct_2(u_input.a);
    global2 = Struct_2(0u);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 998f) - var_0.yy)))), Struct_1(u_input.b, vec2<bool>(true, true)), Struct_1(abs(20945i >> ((global2.a ^ global2.a) % 32u)), select(vec2<bool>(false, arg_1), !(!vec2<bool>(global0[_wgslsmith_index_u32(43713u, 17u)], false)), select(vec2<bool>(global1.x, global1.x), !vec2<bool>(false, arg_1), true))), _wgslsmith_div_vec4_u32(vec4<u32>(max(u_input.a, 81679u), ~u_input.a, firstTrailingBit(global2.a), countOneBits(global2.a)), min(~vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a), ~vec4<u32>(u_input.a, global2.a, 10145u, 0u))) | ((_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 26482u, 31806u, 4294967295u), vec4<u32>(global2.a, u_input.a, global2.a, 8319u), vec4<u32>(global2.a, u_input.a, u_input.a, u_input.a)) ^ ~vec4<u32>(global2.a, 20636u, global2.a, 16421u)) & (max(vec4<u32>(u_input.a, global2.a, 0u, u_input.a), vec4<u32>(0u, 19493u, global2.a, global2.a)) | _wgslsmith_add_vec4_u32(vec4<u32>(42446u, 0u, global2.a, 4294967295u), vec4<u32>(1u, 11251u, u_input.a, u_input.a)))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, abs(1i), _wgslsmith_add_i32(-1i, u_input.b), 12486i), -(~vec4<i32>(-3962i, 2917i, u_input.b, 18772i))));
    return ~3453u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = ~(~19686u);
    var var_1 = true;
    var var_2 = Struct_2(_wgslsmith_clamp_u32(max(func_3(_wgslsmith_f_op_vec2_f32(ceil(arg_2.yx)), arg_0.b.x, vec2<f32>(1509f, -711f)), 1u), reverseBits(0u), ~(~u_input.a)));
    global0 = array<bool, 17>();
    var var_3 = max(vec2<u32>(_wgslsmith_div_u32(~(~var_2.a), ~1u), abs(var_0)), countOneBits(~vec2<u32>(var_0 & 0u, 0u & u_input.a)));
    return Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, max(global2.a, var_2.a), 4294967295u, func_3(vec2<f32>(982f, arg_2.x), true, vec2<f32>(arg_2.x, 244f))) ^ vec4<u32>(3803u, ~global2.a, 35486u, ~var_2.a), _wgslsmith_sub_vec4_u32(vec4<u32>(33087u, ~var_2.a, var_3.x, global2.a), select(_wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, var_2.a, 0u, var_0), vec4<u32>(4294967295u, u_input.a, var_2.a, 4294967295u)), ~vec4<u32>(var_0, 1u, var_0, u_input.a), vec4<bool>(false, arg_0.b.x, false, global0[_wgslsmith_index_u32(74568u, 17u)])))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = -(-vec2<i32>(10847i, ~u_input.b) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.a, _wgslsmith_mod_u32(global2.a, global2.a)), firstLeadingBit(vec2<u32>(0u, 59137u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(17030u, 15271u), vec2<u32>(global2.a, 0u) & vec2<u32>(global2.a, 20352u))) % vec2<u32>(32u)));
    let var_1 = func_2(Struct_1(-62585i, vec2<bool>(true, !arg_0.x)), -firstLeadingBit(~vec2<i32>(var_0.x, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-917f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1795f, -572f)) - _wgslsmith_f_op_f32(select(-1000f, 1435f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f + -766f)) - _wgslsmith_f_op_f32(f32(-1f) * -2417f))));
    global0 = array<bool, 17>();
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), 2425f, _wgslsmith_f_op_f32(535f * 596f), _wgslsmith_f_op_f32(step(708f, -709f))) * vec4<f32>(_wgslsmith_f_op_f32(sign(-833f)), _wgslsmith_f_op_f32(-2437f * 449f), -560f, _wgslsmith_f_op_f32(1521f + 1008f))))));
    return Struct_3(_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, -1i), -vec2<i32>(-1i, 2147483647i))), vec2<i32>(u_input.b, ~var_0.x)), ~abs(vec3<u32>(50034u, func_3(vec2<f32>(var_3.x, -1149f), true, vec2<f32>(var_3.x, var_3.x)), 43073u)), Struct_1(18628i & firstLeadingBit(var_0.x & u_input.b), vec2<bool>(global1.x, !all(arg_0.yy))), 1000f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> vec3<f32> {
    let var_0 = func_2(Struct_1(_wgslsmith_mult_i32(arg_0.a, arg_1.e.x), vec2<bool>(arg_1.b.b.x, any(vec3<bool>(global0[_wgslsmith_index_u32(52u, 17u)], arg_1.b.b.x, false)))), arg_1.e.zw, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-843f, arg_1.a.x, arg_1.a.x))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_0.d), vec3<f32>(arg_0.d, arg_1.a.x, arg_0.d), false)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(712f * arg_1.a.x), 2419f, _wgslsmith_f_op_f32(1120f - 1268f)))))));
    global0 = array<bool, 17>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(264f, _wgslsmith_f_op_f32(f32(-1f) * -1062f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a + arg_1.a) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, arg_1.a.x), vec2<f32>(arg_1.a.x, arg_1.a.x)))))), func_1(!select(select(vec3<bool>(global1.x, true, false), vec3<bool>(arg_0.c.b.x, false, true), vec3<bool>(arg_1.b.b.x, false, true)), select(vec3<bool>(false, global1.x, arg_1.b.b.x), vec3<bool>(false, true, false), true), arg_0.c.b.x)).c, arg_0.c, arg_1.d, vec4<i32>(_wgslsmith_mod_i32(-(~2147483647i), ~arg_1.b.a), ~(~func_1(vec3<bool>(global0[_wgslsmith_index_u32(global2.a, 17u)], global1.x, true)).a), arg_0.c.a, 43534i));
    global1 = arg_0.c.b;
    global0 = array<bool, 17>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -784f), 241f))), -853f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(_wgslsmith_sub_u32(~1u, u_input.a)) >> (u_input.a % 32u);
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f - 1046f), -1000f, _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_vec3_f32(func_4(func_1(vec3<bool>(false, global1.x, global0[_wgslsmith_index_u32(u_input.a, 17u)])), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1172f, 968f) * vec2<f32>(1000f, 201f)), func_1(vec3<bool>(global0[_wgslsmith_index_u32(global2.a, 17u)], global1.x, global1.x)).c, func_1(vec3<bool>(global1.x, global1.x, true)).c, ~vec4<u32>(26186u, global2.a, 20575u, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(7433i, -10600i, -3181i, 2147483647i), vec4<i32>(u_input.b, -2147483647i, 0i, u_input.b)))))))));
    var var_2 = any(vec4<bool>(!global0[_wgslsmith_index_u32(~(~u_input.a), 17u)], global0[_wgslsmith_index_u32(select(10911u, u_input.a, true), 17u)], false, all(vec3<bool>(any(vec3<bool>(global1.x, global1.x, false)), false, !global0[_wgslsmith_index_u32(global2.a, 17u)]))));
    let var_3 = 25894u;
    let var_4 = func_2(func_1(!(!vec3<bool>(true, global1.x, false))).c, countOneBits(-_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-44280i, 0i) | vec2<i32>(1i, u_input.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-608f, var_1.x, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x))))));
    var var_5 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, -174f, 1868f), vec4<f32>(-535f, var_1.x, -392f, -1514f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1606f, 946f, -1642f, var_1.x)), vec4<f32>(var_1.x, var_1.x, 954f, -697f), !vec4<bool>(true, true, false, global1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, 1299f, var_1.x), vec4<f32>(467f, -1445f, var_1.x, var_1.x))), vec4<f32>(1384f, var_1.x, var_1.x, -460f))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -994f), var_1.x, 1000f))), 19025i, -max(abs(~vec4<i32>(u_input.b, u_input.b, 1i, 6587i)), select(vec4<i32>(2147483647i, -240i, 43017i, 0i) ^ vec4<i32>(u_input.b, -1i, -15753i, u_input.b), min(vec4<i32>(u_input.b, u_input.b, -1i, 2147483647i), vec4<i32>(78285i, 2147483647i, 26266i, 2277i)), !vec4<bool>(global0[_wgslsmith_index_u32(68819u, 17u)], true, false, global1.x))));
}

