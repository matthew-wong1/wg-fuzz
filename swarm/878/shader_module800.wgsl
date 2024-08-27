struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: vec3<bool>;

var<private> global2: u32;

var<private> global3: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(188f, -841f, -2167f), vec3<f32>(-2004f, 774f, -1832f), vec3<f32>(1295f, -1091f, -485f), vec3<f32>(128f, 1347f, -699f), vec3<f32>(-579f, -252f, 838f), vec3<f32>(1667f, 368f, -1356f), vec3<f32>(-1264f, 1418f, -106f), vec3<f32>(-394f, -344f, 564f), vec3<f32>(1737f, 1770f, 1414f), vec3<f32>(178f, -803f, 111f), vec3<f32>(-1494f, -640f, 524f), vec3<f32>(1000f, -388f, 595f), vec3<f32>(-1002f, 2273f, -129f), vec3<f32>(-261f, -1076f, -130f), vec3<f32>(-754f, -1096f, -342f), vec3<f32>(-856f, 210f, -511f), vec3<f32>(1000f, -1081f, -699f), vec3<f32>(-1793f, -442f, 511f), vec3<f32>(-1253f, -510f, -1665f), vec3<f32>(475f, -582f, -2019f), vec3<f32>(1897f, 355f, -1535f), vec3<f32>(1000f, -305f, -1884f), vec3<f32>(-118f, -1559f, -1071f), vec3<f32>(2737f, 1258f, 955f), vec3<f32>(106f, -870f, 1099f), vec3<f32>(-1810f, 254f, 1978f), vec3<f32>(-368f, 1301f, -1080f), vec3<f32>(1622f, 227f, 214f), vec3<f32>(1489f, 2009f, -1000f));

var<private> global4: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = vec4<f32>(1f, 1f, 1f, 1f);
    global2 = _wgslsmith_div_u32(~18085u, abs(1u));
    var var_1 = ~abs(~vec2<i32>(_wgslsmith_add_i32(-18573i, u_input.d), -38535i));
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(u_input.e, u_input.e));
    var var_3 = Struct_4(!select(vec4<bool>(global1.x || global1.x, false, true, false), vec4<bool>(global1.x, 121115u < arg_0.x, !global1.x, false || global1.x), false), arg_0.xx, global0[_wgslsmith_index_u32(66261u, 14u)]);
    return _wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_3.a.x));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-1078f * 329f);
    let var_1 = _wgslsmith_add_u32(arg_0 >> (arg_0 % 32u), 25593u);
    var var_2 = Struct_4(select(vec4<bool>(global1.x, global1.x, !global1.x, !global1.x), select(vec4<bool>(true, global1.x, true, true), vec4<bool>(all(vec4<bool>(global1.x, global1.x, global1.x, false)), true, all(global1.zz), true), !(false & global1.x)), vec4<bool>(!global1.x, !(global1.x & false), var_1 > var_1, global1.x)), _wgslsmith_div_vec2_u32(~vec2<u32>(firstLeadingBit(4294967295u), u_input.b.x), vec2<u32>(_wgslsmith_sub_u32(27563u, u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0), u_input.b)) >> (((vec2<u32>(arg_0, 4294967295u) & vec2<u32>(4294967295u, 0u)) ^ ~vec2<u32>(var_1, 1u)) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(reverseBits(var_1), 14u)]);
    global1 = select(var_2.a.wzw, var_2.a.wzy, any(!select(var_2.a, !vec4<bool>(global1.x, var_2.a.x, false, false), any(vec4<bool>(false, global1.x, var_2.a.x, false)))));
    let var_3 = Struct_2(var_2.b, global0[_wgslsmith_index_u32(~(~18665u), 14u)], 30739u, var_2.c, vec4<bool>(any(!(!vec3<bool>(false, global1.x, var_2.a.x))), select(var_2.a.x, !global1.x | !global1.x, true), any(vec2<bool>(any(vec2<bool>(true, true)), all(var_2.a))), true));
    return min(abs(~firstLeadingBit(4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(arg_0, 0u, var_3.c), var_3.c, var_3.c), firstLeadingBit(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(59773u, 0u, 13386u))) | vec3<u32>(1u, 47255u, var_1 & var_1)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: f32) -> vec2<u32> {
    global0 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(4294967295u, 97186u, 50798u))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !global1.x))));
    let var_1 = Struct_2(max(vec2<u32>(_wgslsmith_mult_u32(arg_1.x, ~arg_1.x), _wgslsmith_add_u32(1u, max(4294967295u, arg_1.x))), vec2<u32>(u_input.c.x, u_input.a)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(56149u, select(1u, 4294967295u, true), ~_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(4294967295u, u_input.c.x, u_input.c.x))), 14u)], (32667u << (arg_0.a % 32u)) >> (((~arg_0.a | 1u) | 49058u) % 32u), global0[_wgslsmith_index_u32(reverseBits(func_3(arg_1.x) | ~arg_0.a) >> (arg_0.a % 32u), 14u)], vec4<bool>(true, true, true, true));
    var var_2 = Struct_4(select(var_1.e, var_1.e, true), ~(~u_input.c.yx), global0[_wgslsmith_index_u32(8290u, 14u)]);
    var var_3 = var_1;
    return countOneBits(abs(var_3.a ^ _wgslsmith_mod_vec2_u32(arg_1.zy, _wgslsmith_add_vec2_u32(var_1.a, var_3.a))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_add_u32(arg_0.b.x, ~(~(~arg_1.c))), vec2<i32>(_wgslsmith_sub_i32(~abs(arg_0.c.a.x), arg_0.c.a.x), 20829i), _wgslsmith_div_i32(0i, min(1i, arg_1.d.a.x)), u_input.d);
    let var_1 = arg_1;
    let var_2 = Struct_2(abs(~abs(abs(vec2<u32>(var_1.c, 0u)))), global0[_wgslsmith_index_u32(arg_1.a.x, 14u)], _wgslsmith_add_u32(var_0.a, max(~(var_1.c | var_0.a), _wgslsmith_sub_u32(arg_1.a.x, firstLeadingBit(10135u)))), arg_0.c, vec4<bool>(!(arg_0.c.a.x >= (i32(-1i) * -7905i)), false, all(arg_1.e.xw), all(select(select(arg_0.a, vec4<bool>(false, arg_0.a.x, true, arg_0.a.x), arg_0.a), arg_0.a, arg_1.b.a.x >= var_1.b.a.x))));
    var var_3 = -_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.d, u_input.e.x, var_1.b.a.x) ^ (vec3<i32>(-1i) * -vec3<i32>(1i, -116306i, var_1.b.a.x)), max(-vec3<i32>(-1i, 55400i, -22627i), var_1.b.a));
    global1 = vec3<bool>(true, !any(!select(arg_1.e, var_2.e, global1.x)), global1.x);
    return arg_0.c;
}

fn func_5(arg_0: Struct_1) -> i32 {
    global2 = 37837u >> (u_input.b.x % 32u);
    var var_0 = Struct_3(u_input.c.x, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(~arg_0.a.x, -u_input.d), arg_0.a.x), vec2<i32>(0i, -3106i)), u_input.d, -arg_0.a.x);
    return -34395i;
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: vec3<u32>) -> StorageBuffer {
    let var_0 = u_input.b.x;
    global4 = global1.x;
    var var_1 = Struct_3(~abs(0u & _wgslsmith_sub_u32(u_input.c.x, 1u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 0i) | ~select(u_input.e.xz, u_input.e.yy, global1.zz), abs(select(vec2<i32>(u_input.d, arg_2), vec2<i32>(u_input.d, -54885i), global1.x) & -u_input.e.yy), ~(-u_input.e.xz)), 14715i, arg_1);
    var var_2 = ~81469u;
    var var_3 = i32(-1i) * -_wgslsmith_add_i32(25182i, i32(-1i) * -46771i);
    return StorageBuffer(firstLeadingBit(~(~(~vec3<u32>(0u, 1u, var_0)))), vec4<u32>(_wgslsmith_mult_u32(0u, ~var_1.a), min(abs(~28320u), 0u), ~(~var_0), _wgslsmith_add_u32(_wgslsmith_div_u32(var_0 >> (u_input.a % 32u), var_0), 4294967295u)), 449f, ~select(~4294967295u, abs(~var_0), !arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -1i), -(u_input.e.yx >> ((u_input.c.xz | ~u_input.c.zz) % vec2<u32>(32u))));
    global0 = array<Struct_1, 14>();
    let var_1 = select(vec3<bool>(false, true, _wgslsmith_div_u32(~u_input.c.x, u_input.c.x) >= 32734u), vec3<bool>(global1.x, (any(global1.yy) & (0i != var_0.x)) & global1.x, !all(!vec3<bool>(global1.x, global1.x, global1.x))), global1.x);
    var var_2 = u_input.e;
    var_2 = ~u_input.e;
    global4 = true;
    let x = u_input.a;
    s_output = func_6(any(select(global1.zy, !(!var_1.xy), !var_1.x)), func_5(func_4(Struct_4(select(vec4<bool>(var_1.x, false, global1.x, var_1.x), vec4<bool>(false, var_1.x, global1.x, false), vec4<bool>(var_1.x, var_1.x, true, global1.x)), func_1(Struct_3(1824u, vec2<i32>(var_0.x, 0i), var_2.x, 0i), u_input.c, 409f), global0[_wgslsmith_index_u32(min(u_input.a, u_input.b.x), 14u)]), Struct_2(u_input.b, global0[_wgslsmith_index_u32(82808u, 14u)], _wgslsmith_dot_vec3_u32(vec3<u32>(122119u, 62099u, 50261u), vec3<u32>(0u, 0u, u_input.c.x)), Struct_1(vec3<i32>(var_2.x, 33182i, var_0.x)), select(vec4<bool>(global1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(global1.x, true, true, false), global1.x)))), func_4(Struct_4(select(!vec4<bool>(global1.x, true, false, true), select(vec4<bool>(global1.x, true, var_1.x, var_1.x), vec4<bool>(global1.x, var_1.x, global1.x, var_1.x), var_1.x), false), u_input.b, func_4(Struct_4(vec4<bool>(var_1.x, var_1.x, false, global1.x), u_input.b, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]), Struct_2(vec2<u32>(1u, 45118u), global0[_wgslsmith_index_u32(13719u, 14u)], u_input.a, Struct_1(u_input.e), vec4<bool>(true, true, var_1.x, true)))), Struct_2(vec2<u32>(4294967295u, u_input.b.x), Struct_1(vec3<i32>(var_0.x, u_input.d, -1258i)), firstTrailingBit(~53167u), Struct_1(-vec3<i32>(var_2.x, 0i, var_2.x)), !vec4<bool>(global1.x, false, var_1.x, var_1.x))).a.x, vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), max(~firstTrailingBit(u_input.a), _wgslsmith_dot_vec4_u32(min(vec4<u32>(20500u, u_input.a, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c.x, u_input.a, u_input.b.x, 42843u)), _wgslsmith_mod_vec4_u32(vec4<u32>(44005u, u_input.b.x, 1430u, u_input.b.x), vec4<u32>(45380u, 4294967295u, u_input.c.x, 2685u)))), select(_wgslsmith_dot_vec2_u32(~vec2<u32>(79862u, 14318u), func_1(Struct_3(u_input.c.x, var_2.xz, u_input.d, 39717i), u_input.c, 524f)), ~(~4294967295u), !any(vec4<bool>(false, var_1.x, false, var_1.x)))));
}

