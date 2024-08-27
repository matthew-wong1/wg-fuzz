struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(0u, 8448u), vec2<u32>(26865u, 70574u), vec2<u32>(94660u, 4294967295u), vec2<u32>(25088u, 32974u), vec2<u32>(59934u, 30581u), vec2<u32>(4294967295u, 67873u), vec2<u32>(65475u, 0u), vec2<u32>(16956u, 30766u), vec2<u32>(1u, 37083u), vec2<u32>(22878u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 44130u), vec2<u32>(54671u, 0u), vec2<u32>(1u, 46860u), vec2<u32>(4294967295u, 29077u), vec2<u32>(13380u, 27050u), vec2<u32>(0u, 6701u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> bool {
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    var var_0 = !(!(!select(!vec4<bool>(arg_0.a.c.x, false, arg_0.a.c.x, false), select(vec4<bool>(true, false, arg_0.a.c.x, arg_0.a.c.x), vec4<bool>(arg_0.a.c.x, arg_0.b, true, true), vec4<bool>(arg_0.b, false, false, arg_0.b)), true | arg_0.b)));
    global0 = array<vec2<u32>, 17>();
    return all(select(!var_0.wzz, !(!var_0.wzx), any(vec3<bool>(true, true, !var_0.x))));
}

fn func_2(arg_0: u32) -> f32 {
    global0 = array<vec2<u32>, 17>();
    var var_0 = Struct_3(Struct_1(global0[_wgslsmith_index_u32(38248u, 17u)], -21112i, vec2<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false)), _wgslsmith_f_op_f32(round(-1000f)) == _wgslsmith_f_op_f32(max(1271f, -138f))), u_input.b), any(select(vec3<bool>(true, true, select(true, false, true)), vec3<bool>(any(vec2<bool>(true, false)), true, true), vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1275f + 606f), 1607f))), 1553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(232f, _wgslsmith_f_op_f32(f32(-1f) * -1647f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1381f, -1005f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-329f, 2090f, false)) + -1000f)))));
    let var_2 = vec3<bool>(any(vec3<bool>(var_0.a.c.x, true, var_0.b)), var_0.b, any(select(!vec3<bool>(var_0.a.c.x, false, var_0.b), !vec3<bool>(var_0.b, var_0.b, false), func_3(Struct_3(Struct_1(vec2<u32>(68473u, 10818u), 0i, vec2<bool>(true, true), 0i), false), vec4<i32>(-19136i, var_0.a.d, var_0.a.b, 0i) & vec4<i32>(-29890i, 62093i, -50194i, u_input.b)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.zzy * var_1.yyy)))))));
    return var_3.x;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = vec2<i32>(u_input.b, 1826i & firstTrailingBit(_wgslsmith_div_i32(17681i, -54340i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, -444f, -498f))), vec4<f32>(_wgslsmith_f_op_f32(1455f - 202f), _wgslsmith_div_f32(703f, 3143f), _wgslsmith_f_op_f32(func_2(arg_0)), _wgslsmith_div_f32(655f, -472f)), vec4<bool>(false, arg_1.x, true, false))))));
    var var_2 = Struct_1(countOneBits(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_0), global0[_wgslsmith_index_u32(arg_0, 17u)]))), var_0.x, select(!select(select(vec2<bool>(arg_1.x, arg_1.x), arg_1.yx, arg_1.x), vec2<bool>(false, arg_1.x), select(arg_1.x, true, arg_1.x)), select(vec2<bool>(false, true), arg_1.xy, vec2<bool>(arg_0 < u_input.a, arg_1.x & true)), arg_1.zy), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(-13888i, u_input.b), vec2<i32>(57061i, 1i)) >> ((59268u | u_input.a) % 32u)));
    var_2 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(11368u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 74983u, 4294967295u, u_input.a), vec4<u32>(25685u, 89u, var_2.a.x, 68088u)), var_2.a.x ^ arg_0)), 10013u), -66921i, select(!select(!vec2<bool>(var_2.c.x, true), var_2.c, arg_1.xx), vec2<bool>((var_2.a.x >= arg_0) & var_2.c.x, _wgslsmith_clamp_i32(var_2.b, 18458i, var_0.x) <= -7250i), arg_1.yx), _wgslsmith_dot_vec3_i32(-(vec3<i32>(var_0.x, -7906i, var_0.x) ^ vec3<i32>(1i, var_2.d, var_0.x)) << (vec3<u32>(var_2.a.x, u_input.a, var_2.a.x) % vec3<u32>(32u)), reverseBits((vec3<i32>(-48037i, var_2.b, -61810i) << (vec3<u32>(var_2.a.x, u_input.a, 62858u) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, arg_0, 23815u), vec3<u32>(0u, u_input.a, 28944u)) % vec3<u32>(32u)))));
    let var_3 = Struct_3(Struct_1(var_2.a, -16228i, !select(vec2<bool>(false, arg_1.x), arg_1.xy, !arg_1.x), ~(-(~var_0.x))), true);
    return var_3;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> vec2<u32> {
    global0 = array<vec2<u32>, 17>();
    let var_0 = Struct_1(arg_0.a.a << (vec2<u32>((arg_0.a.a.x << (4294967295u % 32u)) >> (_wgslsmith_div_u32(u_input.a, arg_0.a.a.x) % 32u), firstLeadingBit(arg_0.a.a.x)) % vec2<u32>(32u)), _wgslsmith_div_i32(firstLeadingBit(-2147483647i), ~(-arg_0.a.b)), !select(arg_0.a.c, vec2<bool>(func_1(arg_0.a.a.x, vec3<bool>(arg_0.a.c.x, true, arg_0.a.c.x)).b, all(vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, false, true))), all(!vec3<bool>(true, arg_0.b, true))), select(-2147483647i, 22422i >> (countOneBits(62471u) % 32u), ~(-16293i) > (-13962i | _wgslsmith_mod_i32(u_input.b, u_input.b))));
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a.b, var_0.b), ~vec2<i32>(reverseBits(12806i), 1i), countOneBits(vec2<i32>(var_0.d, -2147483647i)));
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    return select(vec2<u32>(~1u, 4294967295u), ~vec2<u32>(49040u, var_0.a.x), !((_wgslsmith_sub_u32(var_0.a.x, 4294967295u) != _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a.x, 13459u, var_0.a.x, 33926u), vec4<u32>(u_input.a, u_input.a, var_0.a.x, 1u))) && arg_0.a.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    var var_0 = Struct_3(Struct_1(func_4(func_1(1u >> (1u % 32u), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1591f, -138f, -677f))), 1i, vec2<bool>(true, true), _wgslsmith_add_i32(u_input.b, reverseBits(u_input.b))), true);
    global0 = array<vec2<u32>, 17>();
    var var_1 = Struct_2(-188f, vec4<f32>(-849f, -175f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1408f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1086f), 1f, all(vec3<bool>(false, var_0.b, var_0.a.c.x)))))), func_1(92729u, !(!vec3<bool>(false, var_0.b, false))).a);
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(min(max(0i, u_input.b), u_input.b << (15693u % 32u))), var_1.c.b, select((-1i | var_1.c.b) >> (var_1.c.a.x % 32u), 26975i, all(vec3<bool>(false, true, var_1.c.c.x))), abs(_wgslsmith_mult_i32(func_1(39849u, vec3<bool>(var_0.b, var_1.c.c.x, var_1.c.c.x)).a.b, ~u_input.b))), vec4<i32>(_wgslsmith_mult_i32(~(-4799i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.a.d), vec2<i32>(-26476i, u_input.b))), var_1.c.b, _wgslsmith_mult_i32(-20585i, min(u_input.b, 2147483647i)) & ~(-22825i), (-1001i >> (~var_0.a.a.x % 32u)) | -66406i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-576f)), countOneBits(~select(vec3<u32>(4294967295u, 1u, var_0.a.a.x), vec3<u32>(u_input.a, var_1.c.a.x, 1u), vec3<bool>(var_1.c.c.x, false, var_1.c.c.x)) | ~vec3<u32>(var_0.a.a.x, u_input.a, var_0.a.a.x)), max(vec2<i32>(max(firstTrailingBit(8264i), 0i), var_1.c.d), _wgslsmith_mod_vec2_i32(~vec2<i32>(4377i, 0i), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(1i, var_1.c.d)))), countOneBits(vec2<u32>(countOneBits(var_0.a.a.x), var_0.a.a.x)) << (~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.c.a, vec2<u32>(u_input.a, 4952u)), ~vec2<u32>(8625u, u_input.a)) % vec2<u32>(32u)));
}

