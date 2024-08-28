struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3>;

var<private> global1: array<i32, 32> = array<i32, 32>(51894i, -20084i, 0i, i32(-2147483648), 2147483647i, i32(-2147483648), 1i, 2147483647i, 1i, 14166i, 72413i, -30287i, i32(-2147483648), 2147483647i, 32743i, 0i, 34200i, -1i, -14316i, 947i, 14583i, -17969i, 6760i, -70i, 50581i, -8274i, 2147483647i, 29501i, 2147483647i, 1i, -8664i, -18342i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 32u)], 1274i), 0u, select(!vec2<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, false, false))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), false && select(false, true, true)), true), ~1u, firstTrailingBit(-_wgslsmith_add_vec2_i32(firstTrailingBit(u_input.a.zz), u_input.a.xy)));
    var var_1 = Struct_1(firstLeadingBit(select(_wgslsmith_mod_i32(~2147483647i, abs(global1[_wgslsmith_index_u32(27215u, 32u)])), 5973i, true)), _wgslsmith_clamp_u32(var_0.b | ~firstLeadingBit(var_0.b), ~_wgslsmith_add_u32(var_0.b, 0u) | _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 4232u), ~37639u, 12931u), 1u), !var_0.c, 1u, select(vec2<i32>(10024i, ~(-36105i)) << ((vec2<u32>(var_0.d, 4294967295u) & vec2<u32>(var_0.d, 4294967295u)) % vec2<u32>(32u)), var_0.e, vec2<bool>(!var_0.c.x, var_0.c.x)));
    global0 = array<vec4<i32>, 3>();
    var var_2 = Struct_1(_wgslsmith_mod_i32(i32(-1i) * -17864i, -(i32(-1i) * -15832i)) >> (var_1.b % 32u), 56847u, var_1.c, _wgslsmith_dot_vec4_u32(vec4<u32>(8158u, 41655u, 1u, min(1u, ~var_0.d)), countOneBits(vec4<u32>(1u, _wgslsmith_mod_u32(var_1.b, var_0.b), 1u, max(var_0.d, var_0.b)))), _wgslsmith_div_vec2_i32(min(vec2<i32>(~u_input.a.x, global1[_wgslsmith_index_u32(var_0.b, 32u)]), ~countOneBits(var_1.e)), vec2<i32>(firstLeadingBit(select(var_1.e.x, 0i, true)), ~(~(-2147483647i)))));
    var var_3 = Struct_1(_wgslsmith_sub_i32(-u_input.a.x | (i32(-1i) * -1i), var_1.a), var_0.b | abs(~var_2.d), !(!var_2.c), ~var_0.b, vec2<i32>(u_input.a.x, _wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(-2147483647i, ~u_input.a.x))));
    return -2147483647i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec4<u32>, arg_3: u32) -> vec2<u32> {
    global0 = array<vec4<i32>, 3>();
    let var_0 = 16886i;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(816f, -2084f), _wgslsmith_f_op_f32(f32(-1f) * -920f), -586f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(404f)), _wgslsmith_f_op_f32(1557f + -170f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-124f, -252f, 493f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1163f, 330f, 1556f), vec3<f32>(752f, 422f, 346f))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(194f, 182f, _wgslsmith_f_op_f32(max(-230f, -1697f)))))));
    let var_2 = global0[_wgslsmith_index_u32(~min(arg_3, arg_3), 3u)];
    global1 = array<i32, 32>();
    return ~(arg_2.zx & vec2<u32>(arg_2.x, arg_3));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = func_4(func_3(), !any(select(select(vec3<bool>(false, arg_0.x, arg_0.x), arg_0.xyz, arg_0.x), arg_0.wxx, vec3<bool>(false, arg_0.x, false))), vec4<u32>(~_wgslsmith_clamp_u32(~25283u, 22992u, 10553u), firstTrailingBit(4294967295u), _wgslsmith_clamp_u32(reverseBits(abs(116967u)), ~0u, ~19443u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4402u, 58464u), vec3<u32>(9573u, 49163u, 32081u)) & ~86015u)), reverseBits(0u));
    let var_1 = var_0;
    let var_2 = Struct_1(u_input.a.x, var_0.x, arg_0.xy, var_0.x | ~var_0.x, max(u_input.a.yz, vec2<i32>(~u_input.a.x, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(var_1.x, 32u)], 0i))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(func_4(u_input.a.x, arg_0.x, vec4<u32>(48279u, 0u, 0u, var_0.x), 1u).x, _wgslsmith_add_u32(0u, var_0.x)), abs(~vec2<u32>(var_1.x, var_1.x))) % vec2<u32>(32u)));
    var var_3 = !((-max(u_input.a.x, u_input.a.x) < var_2.e.x) | any(var_2.c));
    let var_4 = -2147483647i;
    return var_2;
}

fn func_1() -> vec2<bool> {
    global0 = array<vec4<i32>, 3>();
    let var_0 = vec3<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(55175u, 1u, 1044u), ~vec3<u32>(66588u, 6007u, 4294967295u)) ^ 1u, 38625u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(4294967295u, 0u, 1u)), vec3<u32>(abs(139556u), 1u, ~9626u)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(26019u, 1u, 3547u)))));
    var var_1 = ~(-vec3<i32>(u_input.a.x, 4316i, -47023i));
    var var_2 = func_2(vec4<bool>(true, true, !(!select(false, false, false)), false));
    global0 = array<vec4<i32>, 3>();
    return !var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))));
    var var_1 = select(vec2<bool>(false, false), select(func_1(), !vec2<bool>(false, all(vec2<bool>(var_0, var_0))), func_2(vec4<bool>(any(vec2<bool>(true, var_0)), any(vec4<bool>(var_0, false, false, false)), true, var_0)).c), vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-553f)))) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-215f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(480f * 658f))) > 1021f));
    var_1 = !vec2<bool>(!var_1.x, true);
    var_1 = func_2(select(select(select(select(vec4<bool>(var_0, var_0, false, var_1.x), vec4<bool>(var_0, var_1.x, false, var_1.x), true), select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_0, var_0, true, false), false), !var_1.x), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, false, var_0)), vec4<bool>(!any(vec2<bool>(var_1.x, var_0)), true, true, true), var_1.x)).c;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(794f, 2229f, 1163f, 509f))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1082f, -498f, 263f, 1144f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1196f, 1165f, -677f, 1127f) * vec4<f32>(341f, -135f, 1941f, -341f)), select(vec4<bool>(var_0, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, false, var_0), vec4<bool>(false, true, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(656f, -272f, 1000f, 1767f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-324f, 969f, 108f, -1827f))))))));
    var var_3 = -_wgslsmith_div_i32(~global1[_wgslsmith_index_u32(24300u, 32u)], u_input.a.x);
    var_1 = !func_1();
    let var_4 = ~_wgslsmith_mult_u32(func_2(select(select(vec4<bool>(false, var_0, true, false), vec4<bool>(var_1.x, true, true, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(var_0, false, false, var_0), vec4<bool>(var_1.x, var_1.x, false, var_1.x)), vec4<bool>(var_0, var_1.x, var_0, false))).d, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_sub_vec2_i32(-u_input.a.xy, min(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yy))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4, 45816u, ~2932u), vec3<u32>(49559u, 4294967295u, min(28654u, 1u))), ~(~var_4)));
}

