struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    global0 = array<f32, 5>();
    let var_0 = -1i;
    return Struct_3(_wgslsmith_f_op_f32(select(585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(arg_1), 5u)])), all(vec3<bool>(true, true, true)))), arg_2.b, ~_wgslsmith_mult_u32(select(69168u, 17727u, true), 4294967295u), 0i ^ arg_2.d, 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec2<u32> {
    global0 = array<f32, 5>();
    var var_0 = select(~u_input.b.x, arg_1.b.a.x, any(!select(vec3<bool>(true, true, false), !arg_1.c, select(arg_1.c, arg_1.c, arg_1.c))));
    return _wgslsmith_sub_vec2_u32(max(~(vec2<u32>(u_input.a, 31878u) >> (vec2<u32>(u_input.a, 42477u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.c, u_input.c)), ~vec2<u32>(1u, u_input.c)) | ~(~vec2<u32>(u_input.c, u_input.a))), vec2<u32>(_wgslsmith_sub_u32(1u, ~u_input.c & 1u), ~_wgslsmith_add_u32(1836u, max(u_input.c, 42190u))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    var var_0 = Struct_2(vec2<bool>(true, true), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.b.zxx))), arg_1.c, func_1(arg_0.b.b.xwz, 4294967295u, Struct_3(_wgslsmith_f_op_f32(arg_0.b.b.x - -927f), func_1(vec3<f32>(-1073f, -743f, -372f), u_input.c, Struct_3(1000f, Struct_1(vec2<i32>(1i, 1i), arg_1.b.b), arg_1.e, arg_1.d, arg_0.c)).b, ~arg_1.e, abs(arg_2.x), ~20541u))).b, select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), !(1u != u_input.c)), vec3<bool>(!(-621f > global0[_wgslsmith_index_u32(arg_1.e, 5u)]), false, any(vec2<bool>(true, true)))), vec3<f32>(arg_0.b.b.x, -100f, _wgslsmith_f_op_f32(-303f - _wgslsmith_f_op_f32(func_1(arg_0.b.b.wyy, u_input.c, Struct_3(global0[_wgslsmith_index_u32(55179u, 5u)], Struct_1(vec2<i32>(0i, arg_0.d), vec4<f32>(-1850f, -1244f, arg_0.a, 1057f)), u_input.a, 7669i, arg_0.c)).a * global0[_wgslsmith_index_u32(u_input.a, 5u)]))));
    var_0 = Struct_2(!var_0.a, Struct_1(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(abs(arg_0.d), _wgslsmith_dot_vec2_i32(vec2<i32>(6592i, -1i), vec2<i32>(2147483647i, arg_2.x)))), _wgslsmith_f_op_vec4_f32(var_0.b.b * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.b.x, global0[_wgslsmith_index_u32(arg_3, 5u)], -145f, global0[_wgslsmith_index_u32(arg_1.e, 5u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, 948f, -377f, arg_0.b.b.x) * arg_0.b.b), var_0.c.x & var_0.a.x)))), vec3<bool>(true, true, all(vec4<bool>(true, arg_0.c == arg_1.c, all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true)), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-243f, global0[_wgslsmith_index_u32(arg_0.e, 5u)], -663f))));
    var var_1 = Struct_1(max(vec2<i32>(u_input.b.x << (7182u % 32u), ~1i), vec2<i32>(42350i, arg_1.b.a.x)) | arg_0.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(259f, -663f, 566f, global0[_wgslsmith_index_u32(u_input.c, 5u)]), arg_1.b.b))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1432f, arg_1.a, var_0.b.b.x, global0[_wgslsmith_index_u32(arg_3, 5u)]) + arg_0.b.b))))));
    return Struct_1(-reverseBits(vec2<i32>(_wgslsmith_clamp_i32(arg_2.x, 0i, -17828i), -62043i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_1.b.b))), vec4<f32>(-411f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 5u)] - 638f), -292f, _wgslsmith_f_op_f32(-1650f * 1000f)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> StorageBuffer {
    let var_0 = select(arg_0.c, select(select(select(select(vec3<bool>(arg_0.a.x, arg_0.a.x, true), arg_0.c, arg_0.c), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), arg_0.c.x), select(vec3<bool>(false, arg_0.c.x, arg_0.a.x), vec3<bool>(false, arg_0.a.x, arg_0.a.x), arg_0.c.x)), !arg_0.c, false), vec3<bool>(any(arg_0.c.zx), !(!arg_0.c.x), arg_0.a.x), !arg_0.c.x), any(!select(select(vec4<bool>(arg_0.a.x, false, arg_0.c.x, arg_0.c.x), vec4<bool>(true, false, arg_0.a.x, arg_0.a.x), true), !vec4<bool>(arg_0.c.x, true, false, true), !arg_0.c.x)));
    var var_1 = select(vec4<bool>(arg_0.c.x && var_0.x, false, var_0.x, true), !select(!select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(arg_0.a.x, arg_0.c.x, true, false), true), !(!vec4<bool>(false, false, false, var_0.x)), select(arg_0.c.x, false, false) | (arg_0.b.a.x != -2147483647i)), arg_0.a.x);
    var var_2 = arg_0.b.a;
    var_1 = !select(vec4<bool>(any(select(vec4<bool>(arg_0.a.x, false, arg_0.a.x, true), vec4<bool>(var_0.x, var_0.x, var_1.x, arg_0.c.x), true)), any(!vec2<bool>(arg_0.c.x, false)), !(arg_0.b.b.x <= arg_0.d.x), false), !vec4<bool>(!var_1.x, all(vec4<bool>(true, var_1.x, false, false)), true, global0[_wgslsmith_index_u32(52673u, 5u)] <= 734f), vec4<bool>(!var_1.x, true, true, true));
    var var_3 = vec3<u32>(_wgslsmith_add_u32(1u, ~arg_3.c) ^ ~arg_3.c, select(~abs(arg_3.e), arg_3.c, any(select(vec2<bool>(var_0.x, arg_0.c.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_0.x)))), 36444u) << (select(~reverseBits(~vec3<u32>(u_input.c, 0u, arg_3.e)), reverseBits(vec3<u32>(~arg_3.e, ~69682u, ~arg_3.c)), !select(!var_0, var_1.yzw, var_1.xxw)) % vec3<u32>(32u));
    return StorageBuffer(-vec3<i32>(~arg_0.b.a.x, _wgslsmith_div_i32(~81083i, var_2.x ^ -1300i), -1i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_3.b.b)), arg_3.b.b), _wgslsmith_sub_i32(-46913i | _wgslsmith_mult_i32(u_input.b.x, 13709i), min(_wgslsmith_sub_i32(~var_2.x, 0i), arg_3.d)), abs(min(select(vec3<i32>(32818i, arg_0.b.a.x, var_2.x), vec3<i32>(0i, -16864i, var_2.x) & vec3<i32>(-1i, u_input.b.x, 18055i), var_0), _wgslsmith_sub_vec3_i32(vec3<i32>(16183i, 67468i, var_2.x), min(vec3<i32>(var_2.x, arg_3.b.a.x, arg_2), vec3<i32>(7426i, 1i, arg_3.d))))), vec2<u32>(1119u, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(u_input.b.x, reverseBits(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x) << ((u_input.a ^ 0u) % 32u)));
    var_0 = u_input.b.x;
    global0 = array<f32, 5>();
    let x = u_input.a;
    s_output = func_4(Struct_2(vec2<bool>(false, any(vec2<bool>(true, true))), func_3(Struct_3(_wgslsmith_div_f32(-1178f, global0[_wgslsmith_index_u32(28489u, 5u)]), Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), vec4<f32>(841f, global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], 431f)), 4294967295u, u_input.b.x, u_input.a), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)])), u_input.c ^ u_input.c, Struct_3(global0[_wgslsmith_index_u32(74573u, 5u)], Struct_1(u_input.b, vec4<f32>(-227f, global0[_wgslsmith_index_u32(26543u, 5u)], 1000f, -674f)), 1u, 1i, u_input.c)), ~(-vec2<i32>(-17483i, -2147483647i)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 1u), func_2(vec2<bool>(false, false), Struct_2(vec2<bool>(false, true), Struct_1(u_input.b, vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], 204f, global0[_wgslsmith_index_u32(u_input.c, 5u)], -1057f)), vec3<bool>(false, true, false), vec3<f32>(global0[_wgslsmith_index_u32(45989u, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)], 1717f)), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)])))), vec3<bool>(true, all(vec2<bool>(true, true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)))), func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(62674u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], -686f) - vec3<f32>(461f, 1381f, -969f)))), ~u_input.a, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-712f, -668f, -1000f)), 1u, func_1(vec3<f32>(377f, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(17554u, 5u)]), 38351u, Struct_3(-102f, Struct_1(u_input.b, vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], -956f, global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(397u, 5u)])), u_input.a, 22097i, 5015u)))).b.b.yyz), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec3<f32>(-1000f, -250f, global0[_wgslsmith_index_u32(0u, 5u)]), u_input.c, Struct_3(global0[_wgslsmith_index_u32(u_input.c, 5u)], Struct_1(u_input.b, vec4<f32>(1710f, global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], -377f)), u_input.c, u_input.b.x, u_input.c)).b.b.x * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 5u)] - global0[_wgslsmith_index_u32(46292u, 5u)])))))), 62799i, Struct_3(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 5u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2055f)) + -2093f)), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), firstLeadingBit(vec2<i32>(u_input.b.x, 1i))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], 811f, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], 451f, global0[_wgslsmith_index_u32(u_input.a, 5u)]))))), ~u_input.c ^ 23072u, func_3(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-399f, global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(19773u, 5u)])), ~u_input.a, func_1(vec3<f32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(13230u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]), 48473u, Struct_3(1602f, Struct_1(u_input.b, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], -1895f, global0[_wgslsmith_index_u32(u_input.a, 5u)], -1123f)), u_input.a, 22835i, u_input.c))), Struct_3(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(96561u, 5u)]), Struct_1(vec2<i32>(-2147483647i, u_input.b.x), vec4<f32>(global0[_wgslsmith_index_u32(4313u, 5u)], global0[_wgslsmith_index_u32(8994u, 5u)], 758f, global0[_wgslsmith_index_u32(24505u, 5u)])), _wgslsmith_clamp_u32(u_input.c, u_input.a, 4294967295u), ~u_input.b.x, u_input.c), select(u_input.b, select(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x), true), vec2<bool>(true, true)), ~26358u).a.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, 28481u, u_input.c)) >> (vec3<u32>(u_input.a, 37886u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, 44324u, u_input.a), vec3<u32>(36787u, 0u, u_input.c) ^ vec3<u32>(u_input.c, u_input.a, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.c), vec3<u32>(u_input.c, 1u, u_input.a))))));
}

