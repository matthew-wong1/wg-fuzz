struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(arg_1.e.x, vec2<i32>(-arg_1.b.x, 1i), !select(vec3<bool>(!global0[_wgslsmith_index_u32(0u, 20u)], false, arg_1.d.x), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], arg_0.d.x, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, arg_0.c.x), arg_0.c, true)), !select(vec3<bool>(select(false, false, arg_1.c.x), false, true), vec3<bool>(false, true, 1600f != arg_0.a), arg_0.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.e.x), -177f) + vec2<f32>(_wgslsmith_div_f32(525f, -231f), arg_0.a)) - arg_1.e));
    global0 = array<bool, 20>();
    var var_1 = _wgslsmith_mod_u32(93535u, _wgslsmith_add_u32(firstLeadingBit(131141u), u_input.a.x));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(0i, u_input.d.x, arg_1.b.x, -1i))) >> (vec4<u32>(u_input.b, u_input.a.x | u_input.a.x, 50137u, 39507u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(-arg_0.b.x, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d), i32(-1i) * -10172i, var_0.b.x))), -arg_1.b.x);
    global0 = array<bool, 20>();
    return var_0.d;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2.e.x;
    global0 = array<bool, 20>();
    let var_1 = u_input.a.zy;
    var var_2 = select(vec4<bool>(arg_2.d.x, !(_wgslsmith_f_op_f32(var_0 + arg_2.e.x) != _wgslsmith_f_op_f32(abs(-1000f))), arg_1.d.x, arg_2.c.x), !vec4<bool>(func_3(arg_1, arg_2).x, false, !(arg_1.b.x >= u_input.e.x), !any(vec4<bool>(true, arg_2.d.x, false, arg_1.c.x))), !vec4<bool>(all(vec2<bool>(arg_1.d.x, global0[_wgslsmith_index_u32(5152u, 20u)])), true, any(!vec4<bool>(true, arg_2.c.x, arg_1.c.x, arg_1.d.x)), any(select(arg_2.d, arg_1.d, arg_1.d.x))));
    let var_3 = arg_1;
    return _wgslsmith_mod_u32(arg_0, u_input.b);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = func_4(u_input.a.x, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1576f), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-1i, 0i)), select(vec2<i32>(2147483647i, u_input.e.x), u_input.d.xz, vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], false))), (u_input.d.zy | arg_0) >> (u_input.a.yy % vec2<u32>(32u)), -vec2<i32>(arg_0.x, 1i)), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true, global0[_wgslsmith_index_u32(31901u, 20u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(56810u, 20u)], true), false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 20u)], true, true), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(55820u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]), global0[_wgslsmith_index_u32(u_input.c, 20u)])), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 20u)], true, true))), select(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 20u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 20u)], false), global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false, global0[_wgslsmith_index_u32(0u, 20u)]), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c, 20u)]), !global0[_wgslsmith_index_u32(u_input.b, 20u)]), global0[_wgslsmith_index_u32(11509u, 20u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-697f, _wgslsmith_f_op_f32(abs(1943f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1753f + -1327f) - 247f)), reverseBits(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, arg_0.x), arg_0.x)), select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 20u)], false), global0[_wgslsmith_index_u32(42668u, 20u)]), func_3(Struct_1(-827f, arg_0, vec3<bool>(true, true, true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(7106u, 20u)]), vec2<f32>(815f, -1335f)), Struct_1(-1335f, vec2<i32>(u_input.e.x, arg_0.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 20u)], false, true), vec2<f32>(-545f, -2358f))), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(4797u, 20u)])), !(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(41123u, 20u)])), global0[_wgslsmith_index_u32(4535u, 20u)]), !func_3(Struct_1(-518f, vec2<i32>(-10653i, 7241i), vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false), vec2<f32>(1193f, 1811f)), Struct_1(1000f, vec2<i32>(0i, -2147483647i), vec3<bool>(false, true, global0[_wgslsmith_index_u32(39713u, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], true, true), vec2<f32>(645f, 293f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(275f, -918f) + vec2<f32>(-1000f, 1656f))) - vec2<f32>(1f, _wgslsmith_f_op_f32(-103f - -769f)))));
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1678f - -2745f) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(174f, 1000f), 2608f)))), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0.x, -u_input.e.x), 0i, -4226i), ~u_input.e.x), vec3<bool>(true || all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_0, 20u)])), any(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(var_0, 20u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(29708u, 20u)]), func_3(Struct_1(-654f, vec2<i32>(2147483647i, u_input.d.x), vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(var_0, 20u)], false), vec2<f32>(-1444f, -635f)), Struct_1(1496f, arg_0, vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 20u)], true, global0[_wgslsmith_index_u32(u_input.b, 20u)]), vec2<f32>(-2243f, 1673f))).zz)), all(select(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_0, 20u)], false, global0[_wgslsmith_index_u32(u_input.b, 20u)]), true), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 20u)], true), true))), func_3(Struct_1(852f, vec2<i32>(-u_input.d.x, u_input.d.x), !select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 20u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], true, true)), select(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 20u)]), vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(var_0, 20u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0, 20u)], true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_0, 20u)]), global0[_wgslsmith_index_u32(61122u, 20u)]), all(vec2<bool>(global0[_wgslsmith_index_u32(var_0, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-257f, -823f) * vec2<f32>(1189f, -928f)), vec2<f32>(1f, 1f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -205f)), ~abs(u_input.d.yx), func_3(Struct_1(1000f, arg_0, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(82080u, 20u)], true), vec2<f32>(1492f, -308f)), Struct_1(-461f, u_input.d.zz, vec3<bool>(global0[_wgslsmith_index_u32(6954u, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0, 20u)], global0[_wgslsmith_index_u32(var_0, 20u)]), vec2<f32>(1173f, 107f))), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], true, global0[_wgslsmith_index_u32(33698u, 20u)]), vec2<f32>(_wgslsmith_f_op_f32(695f - 810f), -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(738f, -1765f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1063f, -541f)), true)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-601f, -140f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(916f, 721f) + vec2<f32>(169f, 322f))))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(abs(-1264f)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, u_input.d.x << ((var_0 & 1u) % 32u)), var_1.b), vec3<bool>(var_1.d.x, any(!vec4<bool>(global0[_wgslsmith_index_u32(500u, 20u)], global0[_wgslsmith_index_u32(var_0, 20u)], global0[_wgslsmith_index_u32(55795u, 20u)], true)), true), select(!vec3<bool>(var_1.c.x, var_1.c.x == false, true), vec3<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(var_0), 20u)], false, select(global0[_wgslsmith_index_u32(countOneBits(u_input.c), 20u)], true, any(vec3<bool>(true, var_1.c.x, true)))), global0[_wgslsmith_index_u32(select(var_0, _wgslsmith_mult_u32(var_0 | 6479u, ~var_0), false), 20u)]), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.e.x)))), _wgslsmith_f_op_f32(max(var_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e.x, 2373f))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), vec2<i32>(u_input.e.x, ~37831i), vec3<bool>(select(any(vec2<bool>(false, true)), !var_1.d.x, func_3(Struct_1(var_1.a, vec2<i32>(arg_0.x, 0i), var_1.c, vec3<bool>(global0[_wgslsmith_index_u32(56268u, 20u)], global0[_wgslsmith_index_u32(3226u, 20u)], var_1.d.x), var_1.e), Struct_1(var_1.a, vec2<i32>(var_1.b.x, 25981i), var_1.d, vec3<bool>(true, false, false), var_1.e)).x), var_0 < 0u, false), var_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.e) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 638f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, 1515f) - var_1.e))))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(1i ^ _wgslsmith_dot_vec2_i32(arg_0.b, vec2<i32>(arg_0.b.x, u_input.d.x)), firstTrailingBit(select(arg_0.b.x, arg_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 20u)])), ~_wgslsmith_add_i32(u_input.d.x, arg_0.b.x))));
    let var_1 = arg_0.e.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))))));
    return func_2(arg_0.b);
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> f32 {
    var var_0 = abs(_wgslsmith_clamp_vec3_i32(firstLeadingBit(firstTrailingBit(vec3<i32>(u_input.e.x, u_input.e.x, 0i))) & u_input.d, vec3<i32>(max(u_input.e.x, ~u_input.e.x), reverseBits(max(34420i, -77558i)), u_input.e.x), vec3<i32>(~u_input.e.x, ~u_input.e.x << (~u_input.c % 32u), -max(u_input.e.x, u_input.e.x))));
    var_0 = firstLeadingBit(u_input.d);
    var var_1 = func_5(func_2(vec2<i32>(var_0.x, -var_0.x >> ((0u | u_input.a.x) % 32u))));
    let var_2 = func_2(vec2<i32>(u_input.e.x, countOneBits(_wgslsmith_add_i32(-15795i, -33242i))) ^ ~var_1.b);
    var_0 = u_input.d;
    return -578f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(940f, -570f, -1425f, 801f)))) + vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(-1228f + _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-831f * 1000f), vec3<f32>(-480f, -150f, -1397f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(306f))) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(-399f, vec3<f32>(-479f, 1000f, 348f)))))), 343f), !select(select(select(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.b, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 20u)], true, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(21467u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)])), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 20u)], false, false, global0[_wgslsmith_index_u32(u_input.c, 20u)]), false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 20u)] | global0[_wgslsmith_index_u32(27520u, 20u)], u_input.b > 3551u), true)));
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(var_0.x, 1470f, global0[_wgslsmith_index_u32(1u, 20u)])), vec2<i32>(-2147483647i << (~u_input.a.x % 32u), ~1i), !(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)])))), select(vec3<bool>(true, false, func_2(vec2<i32>(22164i, u_input.e.x)).c.x), vec3<bool>(firstTrailingBit(u_input.b) <= ~0u, any(func_5(Struct_1(-667f, u_input.e, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false, global0[_wgslsmith_index_u32(46893u, 20u)]), var_0.zx)).d.yz), true), vec3<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, 1u), 20u)], any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)])), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a.x), 20u)])), _wgslsmith_f_op_vec2_f32(abs(var_0.zz)));
    global0 = array<bool, 20>();
    var_1 = func_2(var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<u32>(38709u, ~(~u_input.a.x), 12251u, 9207u), vec4<f32>(func_2(var_1.b).e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(167f - var_0.x))), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1026f + var_1.e.x)))), vec4<i32>((min(var_1.b.x, u_input.d.x) >> (firstTrailingBit(24092u) % 32u)) ^ (func_5(Struct_1(-485f, vec2<i32>(2147483647i, var_1.b.x), var_1.c, var_1.d, var_0.ww)).b.x >> ((4294967295u & u_input.a.x) % 32u)), ~abs(-3251i), var_1.b.x, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x), ~vec3<i32>(u_input.e.x, u_input.d.x, var_1.b.x))), _wgslsmith_f_op_f32(var_0.x + -1470f));
}

