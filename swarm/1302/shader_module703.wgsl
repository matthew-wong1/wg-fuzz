struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec4<i32> {
    let var_0 = reverseBits(~(-_wgslsmith_clamp_i32(1i, u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, u_input.d.x), vec2<i32>(arg_0, -12958i)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-231f, -1349f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(584f, 151f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1689f, 1631f) + vec2<f32>(1345f, -1000f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-722f, 2335f), vec2<f32>(-675f, -1237f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(781f, _wgslsmith_f_op_f32(-1888f + 944f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-2201f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1688f, 351f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-304f, _wgslsmith_f_op_f32(f32(-1f) * -547f))))));
    let var_2 = vec2<bool>(!any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), all(vec2<bool>(false, ~u_input.b.x == firstLeadingBit(u_input.b.x))));
    let var_3 = vec4<bool>(!select(firstTrailingBit(1u) >= 1u, !var_2.x, true), false, var_2.x, true);
    global0 = 29665i >> (~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, u_input.b.x, global1.x, global1.x), vec4<u32>(7755u, 49961u, 0u, 4294967295u)), firstTrailingBit(vec4<u32>(56062u, 1u, u_input.b.x, 102331u))), u_input.a.x) % 32u);
    return -vec4<i32>(~abs(-1i), -arg_1, 1i, abs(-2147483647i));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = vec3<u32>(4294967295u, _wgslsmith_div_u32(arg_0.x, countOneBits(~40334u)), ~1u);
    var var_1 = Struct_1(1f, var_0.x, -func_3(2147483647i, reverseBits(-19045i)), select(false, any(vec2<bool>(true, true)), 28391u <= abs(~arg_0.x)), vec2<f32>(_wgslsmith_f_op_f32(select(-1810f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-514f - 912f) * _wgslsmith_f_op_f32(1078f + -1318f)), true)), 1220f));
    global1 = _wgslsmith_div_vec2_u32(max(arg_0.xw | ~reverseBits(vec2<u32>(arg_0.x, u_input.a.x)), u_input.b), vec2<u32>(0u, min(44781u, reverseBits(u_input.b.x))));
    var var_2 = abs(arg_0.x & 1u);
    var var_3 = Struct_1(var_1.e.x, _wgslsmith_add_u32(~countOneBits(~var_0.x), min(1u, 30307u << (min(var_0.x, var_1.b) % 32u))), func_3(_wgslsmith_dot_vec4_i32(~(var_1.c & var_1.c), var_1.c), -19084i), !var_1.d, vec2<f32>(-2141f, _wgslsmith_f_op_f32(-935f - var_1.a)));
    return _wgslsmith_f_op_f32(-var_1.e.x);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global1 = vec2<u32>(~_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_mult_u32(global1.x, 34115u)), ~select(arg_2.b, u_input.a.x, true)), arg_1.b);
    global0 = 1i;
    let var_0 = Struct_1(arg_0, _wgslsmith_add_u32(~(~reverseBits(u_input.b.x)), 88501u), vec4<i32>(-1i) * -vec4<i32>(-12211i, ~12198i, _wgslsmith_dot_vec3_i32(arg_2.c.zwx, arg_2.c.xww), ~(-1i)), !(!(arg_2.b < 53725u) && true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.ww * arg_1.e) * arg_2.e));
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(~(-2147483647i)), arg_2.c.x), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-23176i, arg_1.c.x, var_0.c.x, -3016i), ~arg_2.c), _wgslsmith_sub_i32(arg_1.c.x, -firstLeadingBit(0i))));
    global1 = vec2<u32>(u_input.a.x >> ((~global1.x | ~_wgslsmith_clamp_u32(0u, 0u, arg_1.b)) % 32u), global1.x);
    return 1u;
}

fn func_1() -> vec2<u32> {
    let var_0 = 35914u >> (firstTrailingBit(u_input.a.x) % 32u);
    global1 = ~vec2<u32>(~min(global1.x, global1.x), 4294967295u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-982f, -1000f))), -2160f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1764f), -1038f))), abs(_wgslsmith_add_u32(func_4(_wgslsmith_f_op_f32(func_2(vec4<u32>(11544u, var_0, var_0, var_0))), Struct_1(-336f, 0u, vec4<i32>(-1i, u_input.d.x, -2147483647i, 2147483647i), false, vec2<f32>(1000f, -193f)), Struct_1(859f, var_0, vec4<i32>(u_input.d.x, 6374i, 1i, u_input.c), false, vec2<f32>(267f, 693f)), vec4<f32>(-915f, 1691f, -1564f, -380f)), ~(~1u))), -vec4<i32>(i32(-1i) * -10085i, u_input.d.x, min(u_input.c, _wgslsmith_add_i32(u_input.d.x, u_input.d.x)), u_input.d.x), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(924f, -210f) + vec2<f32>(-887f, -1360f))))));
    var var_2 = var_1;
    var var_3 = any(select(vec4<bool>(true, !(!var_2.d), true, select(var_2.d, var_1.d, any(vec3<bool>(false, true, false)))), !vec4<bool>(!var_2.d, false, !var_2.d, var_1.a <= 509f), true));
    return u_input.a.zy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~func_1();
    let var_0 = Struct_1(-397f, u_input.a.x, vec4<i32>(42999i, 2147483647i, ~27552i, _wgslsmith_mod_i32(u_input.c & min(2147483647i, 18322i), u_input.d.x)), all(vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true)) | (select(true, all(vec2<bool>(false, false)), any(vec3<bool>(true, false, true))) & true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -418f))), vec2<f32>(_wgslsmith_f_op_f32(-1076f * -543f), -1000f)))));
    global0 = func_3(~u_input.d.x, abs(countOneBits(-1i))).x & -2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.e.x, var_0.e.x, var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -262f)), var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), 850f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.e.x, 667f, -737f)))))));
    var var_2 = vec4<i32>((14296i & u_input.c) ^ _wgslsmith_mod_i32(max(select(52977i, -2147483647i, var_0.d), var_0.c.x | -11204i), -2147483647i), max(~((var_0.c.x ^ u_input.c) >> (u_input.a.x % 32u)), -u_input.d.x), -(-var_0.c.x | ~61680i) | ~min(_wgslsmith_dot_vec3_i32(var_0.c.yzz, var_0.c.yyy), func_3(u_input.d.x, u_input.c).x), countOneBits(-9098i));
    var var_3 = var_0;
    var var_4 = var_0;
    var var_5 = !select(vec2<bool>(all(select(vec4<bool>(var_3.d, true, var_3.d, var_4.d), vec4<bool>(var_3.d, false, var_3.d, var_3.d), vec4<bool>(false, var_3.d, false, true))), (u_input.b.x & 12958u) == 4294967295u), vec2<bool>(false, var_0.d || true), vec2<bool>(true, !select(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_u32(1u, ~_wgslsmith_div_u32(1u, 40355u))));
}

