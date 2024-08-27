struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-376f, 2397f, 1009f, 1551f), vec4<f32>(-455f, -1377f, 1277f, 846f), vec4<f32>(-249f, -257f, -1060f, 712f), vec4<f32>(-1000f, 806f, -642f, -1517f), vec4<f32>(-560f, -1070f, -1000f, 1331f), vec4<f32>(363f, -235f, 1000f, -1690f), vec4<f32>(393f, -176f, -1255f, -1270f));

var<private> global1: u32;

var<private> global2: bool = true;

var<private> global3: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = arg_3;
    let var_1 = Struct_3(Struct_1(238f, var_0.b.b, vec3<u32>(_wgslsmith_sub_u32(~2208u, var_0.a.x), reverseBits(abs(arg_3.b.c.x)), arg_3.a.x), _wgslsmith_clamp_i32(-1i, _wgslsmith_div_i32(select(-70830i, -1i, arg_3.c.b.x), reverseBits(-1i)), (i32(-1i) * -1i) & (u_input.b & var_0.b.d)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.c.a, arg_3.d.e.x, var_0.c.e.x, arg_0.x), vec4<f32>(-346f, -1361f, var_0.b.a, -319f), arg_3.b.e.x != arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-390f, var_0.b.e.x, 655f, arg_1.x) * vec4<f32>(var_0.b.a, arg_1.x, arg_1.x, arg_3.d.e.x)))))));
    let var_2 = ~var_1.a.c.x >= arg_3.d.c.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.a.e.x)))))) + -1363f);
    var_0 = Struct_2(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(arg_3.c.c.x, 22618u, 14479u)), ~arg_3.c.c), vec3<u32>(4294967295u, _wgslsmith_mod_u32(0u, arg_2) & var_0.a.x, _wgslsmith_dot_vec3_u32(var_1.a.c, _wgslsmith_mod_vec3_u32(var_1.a.c, arg_3.c.c)))), var_0.b, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3 + 141f), arg_0.x)))), !vec4<bool>(true, all(arg_3.d.b.zz), true, true), var_1.a.c, _wgslsmith_dot_vec2_i32(~u_input.a.yz ^ _wgslsmith_sub_vec2_i32(u_input.a.yz, vec2<i32>(2147483647i, var_1.a.d)), vec2<i32>(var_1.a.d, u_input.b << (10942u % 32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(162f, 558f, var_1.a.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1487f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d.a - var_1.a.a) - 178f), -824f, _wgslsmith_f_op_f32(-1586f + 374f))), Struct_1(_wgslsmith_f_op_f32(105f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3, var_1.a.e.x), _wgslsmith_f_op_f32(step(-776f, -1140f))))), arg_3.c.b, arg_3.a, 17768i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - -753f), -692f, _wgslsmith_f_op_f32(-arg_3.d.a), _wgslsmith_f_op_f32(abs(arg_1.x))))), arg_3.c.d > ~min(9467i, _wgslsmith_div_i32(u_input.a.x, -25476i)));
    return vec2<u32>(~(~(~4294967295u)), 45877u);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_3) -> bool {
    global3 = array<vec2<bool>, 21>();
    global1 = 0u;
    global2 = false;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(f32(-1f) * -141f)))), _wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -772f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1351f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * arg_3.a.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_3.a.a, arg_1.x), -657f)))));
    global0 = array<vec4<f32>, 7>();
    return all(select(select(select(select(vec2<bool>(arg_3.a.b.x, arg_3.a.b.x), global3[_wgslsmith_index_u32(0u, 21u)], vec2<bool>(arg_3.a.b.x, false)), select(vec2<bool>(arg_3.a.b.x, arg_3.a.b.x), arg_3.a.b.ww, global3[_wgslsmith_index_u32(19699u, 21u)]), !arg_3.a.b.x), vec2<bool>(!arg_3.a.b.x, 19110u <= arg_3.a.c.x), true), vec2<bool>(true, arg_3.a.b.x), !global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(5119u, arg_0.x), func_3(var_0.zzz, arg_3.a.e.www, 10163u, Struct_2(arg_3.a.c, Struct_1(-2161f, arg_3.a.b, arg_3.a.c, arg_3.a.d, vec4<f32>(872f, 1843f, -285f, arg_1.x)), Struct_1(var_0.x, arg_3.a.b, arg_3.a.c, arg_3.a.d, vec4<f32>(var_0.x, arg_1.x, var_0.x, 278f)), Struct_1(arg_2, vec4<bool>(false, arg_3.a.b.x, arg_3.a.b.x, arg_3.a.b.x), vec3<u32>(arg_3.a.c.x, 31236u, 19618u), 1i, global0[_wgslsmith_index_u32(arg_0.x, 7u)]), false)).x, ~arg_0.x), 21u)]));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    let var_0 = false;
    global2 = !(!(!any(global3[_wgslsmith_index_u32(1u, 21u)]))) & func_4(func_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(arg_2)))), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), arg_2.x, arg_2.x), _wgslsmith_clamp_u32(1u >> (1u % 32u), arg_0, 129245u), Struct_2(vec3<u32>(arg_0, arg_0, 36451u) << (vec3<u32>(0u, arg_0, 1u) % vec3<u32>(32u)), Struct_1(arg_2.x, vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec3<u32>(arg_0, arg_0, arg_0), -2147483647i, vec4<f32>(1708f, arg_2.x, arg_2.x, arg_2.x)), Struct_1(-441f, vec4<bool>(var_0, false, false, true), vec3<u32>(arg_0, arg_0, 79548u), u_input.b, global0[_wgslsmith_index_u32(93494u, 7u)]), Struct_1(arg_2.x, vec4<bool>(false, true, var_0, false), vec3<u32>(1u, arg_0, arg_0), 0i, global0[_wgslsmith_index_u32(29409u, 7u)]), any(vec3<bool>(var_0, true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_2.x)), _wgslsmith_f_op_vec2_f32(arg_2.zy + vec2<f32>(arg_2.x, arg_2.x))) * vec2<f32>(-961f, _wgslsmith_f_op_f32(-arg_2.x))), -1000f, Struct_3(Struct_1(arg_2.x, !vec4<bool>(arg_1, arg_1, arg_1, false), select(vec3<u32>(1102u, arg_0, arg_0), vec3<u32>(arg_0, arg_0, arg_0), true), u_input.a.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.x, 707f, 1011f, arg_2.x), global0[_wgslsmith_index_u32(arg_0, 7u)])))));
    let var_1 = u_input.a.x;
    global3 = array<vec2<bool>, 21>();
    global2 = !arg_1;
    return select(func_3(_wgslsmith_f_op_vec3_f32(-arg_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) * arg_2), _wgslsmith_clamp_u32(10021u, 11708u, 72099u), Struct_2(vec3<u32>(arg_0, arg_0, arg_0), Struct_1(arg_2.x, vec4<bool>(var_0, arg_1, false, false), vec3<u32>(arg_0, arg_0, arg_0), u_input.a.x, vec4<f32>(-346f, 553f, arg_2.x, arg_2.x)), Struct_1(arg_2.x, vec4<bool>(arg_1, arg_1, arg_1, true), vec3<u32>(arg_0, 0u, arg_0), var_1, global0[_wgslsmith_index_u32(0u, 7u)]), Struct_1(arg_2.x, vec4<bool>(arg_1, false, arg_1, arg_1), vec3<u32>(arg_0, 1u, 1u), 11452i, vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -1000f)), var_0)).x << (_wgslsmith_sub_u32(~arg_0, arg_0) % 32u), func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_2 * arg_2))), arg_2, 0u, Struct_2(abs(vec3<u32>(arg_0, 0u, arg_0)), Struct_1(479f, vec4<bool>(true, true, arg_1, false), vec3<u32>(arg_0, arg_0, arg_0), 0i, vec4<f32>(-1593f, arg_2.x, arg_2.x, 776f)), Struct_1(-1369f, vec4<bool>(var_0, false, arg_1, arg_1), vec3<u32>(arg_0, arg_0, 29228u), 2147483647i, vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 731f)), Struct_1(678f, vec4<bool>(arg_1, true, true, true), vec3<u32>(1u, arg_0, arg_0), 2147483647i, vec4<f32>(-1187f, arg_2.x, arg_2.x, arg_2.x)), var_0 || arg_1)).x, any(!select(vec2<bool>(var_0, arg_1), vec2<bool>(var_0, true), vec2<bool>(var_0, true)))) | ~arg_0;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global2 = true;
    var var_0 = -_wgslsmith_mod_i32(29843i, ~(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(0i, 0i)) & 1i));
    let var_1 = Struct_1(-1721f, vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)))), all(vec4<bool>(false, all(vec4<bool>(true, true, false, true)), true, true)), true, false), vec3<u32>(arg_0 & _wgslsmith_mult_u32(~arg_0, arg_0 << (58228u % 32u)), arg_0, min(_wgslsmith_div_u32(4294967295u, arg_0), _wgslsmith_clamp_u32(func_2(4294967295u, true, vec3<f32>(1430f, -1000f, 222f)), 9244u, arg_0))), u_input.a.x, _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(reverseBits(0u) | _wgslsmith_mult_u32(arg_0, 0u), 7u)] - global0[_wgslsmith_index_u32(arg_0, 7u)]));
    var var_2 = firstTrailingBit(var_1.d);
    global3 = array<vec2<bool>, 21>();
    return select(vec4<bool>(var_1.b.x, all(!vec3<bool>(false, false, var_1.b.x)), true, false), var_1.b, any(!(!vec2<bool>(var_1.b.x, var_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1879f, -270f)), !func_1(countOneBits(5789u)), ~vec3<u32>(~(~20561u), 0u, abs(4294967295u)), reverseBits(0i), global0[_wgslsmith_index_u32(37537u, 7u)]);
    var var_1 = select(vec3<u32>(min(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.c.x, 4294967295u), ~var_0.c.x), var_0.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x) | (var_0.c | var_0.c), firstTrailingBit(vec3<u32>(var_0.c.x, var_0.c.x, 68623u))), var_0.c.x), vec3<u32>(~countOneBits(39027u), _wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(var_0.c.x, var_0.c.x, 42237u, 0u), vec4<u32>(1u, var_0.c.x, 0u, 1u), vec4<bool>(var_0.b.x, false, true, var_0.b.x))), ~firstLeadingBit(vec4<u32>(84454u, var_0.c.x, var_0.c.x, 0u))), ~var_0.c.x), !var_0.b.x);
    var var_2 = var_0.b.x;
    let var_3 = 1i;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-857f - var_0.e.x), func_1(1u), vec3<u32>(2311u, var_1.x, ~(~29255u)), 5322i, global0[_wgslsmith_index_u32(func_2(7524u, var_0.c.x >= ~var_0.c.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.e.yyx - var_0.e.xzw), _wgslsmith_div_vec3_f32(var_0.e.xwy, vec3<f32>(-747f, var_0.e.x, -902f)), vec3<bool>(true, var_0.b.x, false))), vec3<f32>(var_0.a, _wgslsmith_div_f32(-873f, var_0.a), _wgslsmith_f_op_f32(abs(var_0.a)))))), 7u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -7981i, var_0.d, ~(~(~49392i)), abs(-2147483647i) >> (var_0.c.x % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0.a)))), var_4.a)))), vec4<u32>(var_4.c.x, 102855u >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_4.c.xx, var_4.c.zx), var_1.x) % 32u), min(var_4.c.x, var_4.c.x), (var_4.c.x | var_1.x) >> (_wgslsmith_mult_u32(abs(var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 29536u, var_1.x), vec4<u32>(55350u, 1u, 6146u, var_0.c.x))) % 32u)), _wgslsmith_add_i32(var_3, min(19812i, 9879i)));
}

