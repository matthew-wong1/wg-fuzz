struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(111f, -1000f), vec2<f32>(205f, -1284f), vec2<f32>(-1173f, -1448f), vec2<f32>(-1000f, -2409f), vec2<f32>(-1383f, 1020f), vec2<f32>(-178f, 358f), vec2<f32>(-238f, 165f), vec2<f32>(-891f, -365f), vec2<f32>(-195f, 265f), vec2<f32>(-523f, 591f), vec2<f32>(1000f, 1104f), vec2<f32>(-740f, 691f), vec2<f32>(1963f, 1015f));

var<private> global1: array<u32, 22>;

var<private> global2: Struct_2 = Struct_2(Struct_1(-31411i, 2147483647i, vec3<bool>(true, false, false)), 76746i, Struct_1(0i, -21373i, vec3<bool>(true, false, false)), 4658i, 54324u);

var<private> global3: f32 = -1000f;

var<private> global4: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(0i, 2147483647i, -7154i), vec3<i32>(40331i, 24908i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(-17468i, 2994i, -37251i), vec3<i32>(-35720i, 50139i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, -11011i), vec3<i32>(-2895i, 47264i, -16328i), vec3<i32>(-39793i, 2147483647i, -307i), vec3<i32>(-34629i, 58888i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(-12138i, 2147483647i, i32(-2147483648)), vec3<i32>(18434i, -49078i, 5629i));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -946f);
    global0 = array<vec2<f32>, 13>();
    global4 = array<vec3<i32>, 12>();
    let var_0 = Struct_2(Struct_1(-abs(global2.a.a) >> (~(~global1[_wgslsmith_index_u32(34836u, 22u)]) % 32u), ~global2.c.a, select(arg_0, arg_0, !vec3<bool>(global2.c.c.x, false, global2.c.c.x))), -max(firstTrailingBit(min(u_input.a, 2147483647i)), global2.a.a), global2.a, _wgslsmith_mult_i32(min(1i, _wgslsmith_add_i32(u_input.a, 1i)), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-4144i, u_input.a, 2777i, u_input.a)), vec4<i32>(u_input.a, 0i, 2147483647i, -2147483647i | global2.c.a))), global1[_wgslsmith_index_u32(global2.e, 22u)]);
    global2 = var_0;
    return -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(min(arg_2.b.x, global1[_wgslsmith_index_u32(4294967295u, 22u)]), global2.e), abs(_wgslsmith_sub_u32(1u, 0u))), global2.e), global2.e);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-225f * arg_2.c.x), _wgslsmith_div_f32(-1000f, 194f), any(vec3<bool>(false, false, false)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-119f * _wgslsmith_f_op_f32(trunc(arg_2.d)))))), 1888f, Struct_2(arg_0, u_input.a, Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2734i, global2.a.a, -3147i, u_input.a), vec4<i32>(-51438i, -1i, 35389i, 1i)), vec4<i32>(global2.b, -1i, global2.d, arg_0.a) & vec4<i32>(-16783i, arg_1, 4497i, -1i)), u_input.a, vec3<bool>(true & global2.c.c.x, arg_2.d >= 1000f, arg_0.c.x)), ~0i, _wgslsmith_mod_u32(~(~12549u), arg_2.a)));
    global2 = Struct_2(var_1.c.c, func_3(global2.a.c), var_1.c.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_add_i32(global2.a.b & -8424i, min(var_1.c.a.b, arg_3))), -vec2<i32>(firstLeadingBit(arg_3), firstTrailingBit(-23962i))), 21798u);
    let var_2 = Struct_3(var_1.c.e, arg_2.b >> (~vec2<u32>(select(58895u, 1u, false), 27586u) % vec2<u32>(32u)), arg_2.c, _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-180f * _wgslsmith_f_op_f32(-arg_2.d))));
    var var_3 = Struct_5(Struct_2(var_1.c.c, select(-11145i ^ arg_1, arg_3, !var_1.c.a.c.x), arg_0, arg_3, ~(~(~arg_2.a))), var_1, vec4<bool>(!all(arg_0.c), !(!global2.a.c.x | true), false, true));
    return arg_1;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    var var_0 = global2.c;
    let var_1 = Struct_3(1u, vec2<u32>(4294967295u, countOneBits(~32502u) >> (global2.e % 32u)), global0[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(824f, -663f) * _wgslsmith_f_op_f32(-1010f * -418f)))));
    var var_2 = var_1;
    let var_3 = _wgslsmith_div_f32(251f, -1504f);
    global2 = Struct_2(global2.c, global2.d, global2.c, _wgslsmith_mult_i32(_wgslsmith_mult_i32(~0i, func_4(global2.c, global2.b, var_1, func_3(global2.c.c))), 72816i), 85028u);
    return var_0.c;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(global2.d, global2.c.a, !func_2(~(~72722u)));
    global1 = array<u32, 22>();
    global0 = array<vec2<f32>, 13>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2350f * 822f), _wgslsmith_div_f32(-1370f, -447f)), -874f)))));
    let var_2 = true;
    return Struct_1(_wgslsmith_dot_vec2_i32(-(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(var_0.a, 13551i)) ^ (vec2<i32>(global2.c.a, global2.c.a) ^ vec2<i32>(2147483647i, -88202i))), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, global2.b) | abs(vec2<i32>(u_input.a, -44151i)), -vec2<i32>(global2.d, 0i) | (vec2<i32>(global2.c.a, var_0.a) >> (vec2<u32>(0u, global1[_wgslsmith_index_u32(global2.e, 22u)]) % vec2<u32>(32u))))), global2.a.b, !var_0.c);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: Struct_5) -> Struct_2 {
    global2 = arg_3.a;
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(-arg_3.b.b);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.b.a))) - arg_2.b.a) + _wgslsmith_f_op_f32(trunc(117f))));
    global0 = array<vec2<f32>, 13>();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(19832i, 0i), u_input.a)), max(~(~(vec2<i32>(-2147483647i, global2.d) >> (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], 70315u) % vec2<u32>(32u)))), _wgslsmith_add_vec2_i32(vec2<i32>(33428i, -31462i), vec2<i32>(24394i, 1i) | vec2<i32>(u_input.a, -2147483647i)) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.e, 22u)], 12u)], vec3<i32>(global2.a.a, 1i, global2.a.b)), firstTrailingBit(-39992i))), Struct_5(Struct_2(global2.a, ~abs(u_input.a), func_1(abs(u_input.a)), _wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~60147u, 22u)], 12u)], vec3<i32>(2147483647i, 34057i, global2.b)), global2.e), Struct_4(_wgslsmith_f_op_f32(779f - _wgslsmith_f_op_f32(1000f * 688f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(900f - 345f))), Struct_2(Struct_1(2147483647i, -2147483647i, global2.a.c), _wgslsmith_mult_i32(u_input.a, global2.a.b), func_1(63312i), u_input.a, _wgslsmith_add_u32(7314u, 33643u))), !(!(!vec4<bool>(global2.c.c.x, global2.c.c.x, true, true)))), Struct_5(Struct_2(func_1(u_input.a), -u_input.a, func_1(_wgslsmith_mod_i32(-2147483647i, global2.b)), _wgslsmith_add_i32(-1i, -1i), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(29374u, 22u)] & global1[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_add_u32(1u, 48610u))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(381f * 1827f) + -308f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -494f))), Struct_2(func_1(u_input.a), u_input.a, Struct_1(global2.d, -1i, global2.a.c), 1i, ~global2.e)), !select(!vec4<bool>(true, false, global2.a.c.x, global2.c.c.x), vec4<bool>(global2.a.c.x, true, true, true), !vec4<bool>(true, global2.a.c.x, true, global2.c.c.x))));
    var var_1 = Struct_3(global2.e, vec2<u32>(var_0.e, (abs(131654u) << (var_0.e % 32u)) << (18110u % 32u)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1564f, 1000f))), -242f), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(453f)), _wgslsmith_f_op_f32(-771f * -678f))), -308f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-812f - 731f) + _wgslsmith_f_op_f32(trunc(100f))), 1f))));
    let var_2 = max(var_1.b, ~vec2<u32>(max(0u, global1[_wgslsmith_index_u32(var_1.a, 22u)]), ~81868u) << ((~_wgslsmith_mult_vec2_u32(var_1.b, var_1.b) ^ abs(reverseBits(vec2<u32>(var_1.a, 1u)))) % vec2<u32>(32u)));
    var_0 = Struct_2(func_5(func_5(func_5(var_0.c, max(vec2<i32>(32137i, var_0.d), vec2<i32>(-19200i, global2.d)), Struct_5(Struct_2(global2.c, u_input.a, Struct_1(21483i, var_0.c.b, vec3<bool>(var_0.c.c.x, global2.c.c.x, true)), -28693i, var_1.b.x), Struct_4(-747f, 269f, Struct_2(var_0.a, 2147483647i, global2.c, global2.b, global1[_wgslsmith_index_u32(global2.e, 22u)])), vec4<bool>(true, true, true, global2.c.c.x)), Struct_5(Struct_2(global2.a, 0i, Struct_1(1i, var_0.a.b, vec3<bool>(true, global2.c.c.x, global2.a.c.x)), -1i, global2.e), Struct_4(765f, var_1.c.x, Struct_2(var_0.a, u_input.a, Struct_1(global2.c.a, u_input.a, global2.a.c), -14219i, 48572u)), vec4<bool>(false, true, global2.c.c.x, var_0.a.c.x))).c, max(vec2<i32>(-30659i, 0i) ^ vec2<i32>(var_0.b, -2147483647i), max(vec2<i32>(-46352i, global2.d), vec2<i32>(-10693i, -2147483647i))), Struct_5(Struct_2(global2.a, u_input.a, Struct_1(2147483647i, var_0.a.b, var_0.a.c), 26766i, 12092u), Struct_4(var_1.c.x, -1068f, Struct_2(var_0.c, 0i, var_0.c, u_input.a, 0u)), vec4<bool>(var_0.c.c.x, true, global2.c.c.x, var_0.c.c.x)), Struct_5(func_5(var_0.c, vec2<i32>(u_input.a, global2.b), Struct_5(Struct_2(Struct_1(var_0.c.a, -1i, vec3<bool>(false, global2.a.c.x, true)), var_0.c.b, Struct_1(var_0.d, -1i, vec3<bool>(var_0.c.c.x, true, global2.a.c.x)), 2147483647i, 0u), Struct_4(var_1.d, -830f, Struct_2(global2.c, var_0.c.a, var_0.a, -46781i, 31900u)), vec4<bool>(true, var_0.c.c.x, true, var_0.c.c.x)), Struct_5(Struct_2(Struct_1(2294i, 2147483647i, vec3<bool>(global2.c.c.x, global2.c.c.x, global2.a.c.x)), global2.b, Struct_1(var_0.a.b, -2147483647i, vec3<bool>(true, true, false)), -2147483647i, 4294967295u), Struct_4(var_1.d, 655f, Struct_2(var_0.a, 45831i, global2.c, 2147483647i, var_1.b.x)), vec4<bool>(global2.a.c.x, false, false, false))), Struct_4(1358f, var_1.d, Struct_2(var_0.c, -1i, var_0.c, u_input.a, var_0.e)), !vec4<bool>(var_0.c.c.x, var_0.a.c.x, false, var_0.a.c.x))).a, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a) | -vec2<i32>(27839i, global2.a.b), vec2<i32>(u_input.a, u_input.a) | _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.a, 1i), vec2<i32>(global2.c.b, global2.d))), Struct_5(Struct_2(func_1(-3583i), _wgslsmith_dot_vec4_i32(vec4<i32>(-62986i, -2147483647i, var_0.a.b, -10253i), vec4<i32>(global2.b, var_0.d, 2147483647i, 13092i)), func_1(-29251i), ~2147483647i, global2.e), Struct_4(-324f, _wgslsmith_f_op_f32(select(var_1.c.x, var_1.c.x, true)), func_5(global2.a, vec2<i32>(u_input.a, -27721i), Struct_5(Struct_2(global2.c, u_input.a, Struct_1(u_input.a, u_input.a, global2.a.c), u_input.a, 4294967295u), Struct_4(var_1.d, 1000f, Struct_2(var_0.a, global2.a.b, Struct_1(1i, 0i, vec3<bool>(global2.c.c.x, global2.c.c.x, global2.a.c.x)), -2147483647i, var_2.x)), vec4<bool>(global2.a.c.x, global2.a.c.x, true, var_0.c.c.x)), Struct_5(Struct_2(var_0.c, -2147483647i, var_0.c, global2.a.b, 44324u), Struct_4(var_1.c.x, 1646f, Struct_2(Struct_1(var_0.c.b, 2147483647i, vec3<bool>(true, false, var_0.c.c.x)), var_0.d, global2.a, -1i, global1[_wgslsmith_index_u32(3254u, 22u)])), vec4<bool>(false, true, false, var_0.a.c.x)))), vec4<bool>(false, var_0.c.c.x | true, false, true)), Struct_5(func_5(Struct_1(var_0.b, global2.b, vec3<bool>(var_0.a.c.x, true, true)), -vec2<i32>(global2.d, var_0.b), Struct_5(Struct_2(global2.c, global2.a.b, Struct_1(79132i, 2147483647i, vec3<bool>(global2.a.c.x, false, global2.c.c.x)), global2.c.b, global2.e), Struct_4(-742f, -364f, Struct_2(var_0.a, -1i, var_0.c, var_0.a.b, var_2.x)), vec4<bool>(false, global2.a.c.x, false, true)), Struct_5(Struct_2(Struct_1(global2.b, global2.d, var_0.c.c), u_input.a, global2.c, -20879i, 65595u), Struct_4(var_1.c.x, -827f, Struct_2(var_0.c, u_input.a, var_0.c, u_input.a, var_1.a)), vec4<bool>(false, true, global2.a.c.x, var_0.c.c.x))), Struct_4(_wgslsmith_f_op_f32(366f + 439f), var_1.c.x, func_5(Struct_1(-1i, u_input.a, var_0.a.c), vec2<i32>(global2.b, -2147483647i), Struct_5(Struct_2(var_0.c, global2.c.a, global2.a, global2.d, 1u), Struct_4(813f, -152f, Struct_2(Struct_1(-13033i, 1i, var_0.a.c), -72621i, var_0.a, -1i, var_0.e)), vec4<bool>(var_0.c.c.x, true, global2.c.c.x, global2.a.c.x)), Struct_5(Struct_2(var_0.c, 21987i, var_0.c, 3020i, var_0.e), Struct_4(var_1.d, 325f, Struct_2(Struct_1(-17604i, var_0.c.a, global2.c.c), -2147483647i, global2.a, 36161i, 0u)), vec4<bool>(false, global2.a.c.x, false, global2.c.c.x)))), !(!vec4<bool>(global2.c.c.x, true, global2.a.c.x, false)))).a, -abs(~(u_input.a >> (var_2.x % 32u))), Struct_1(1i, max(-3959i, -(17038i << (var_0.e % 32u))), !vec3<bool>(var_0.a.c.x, false, false)), min(_wgslsmith_mult_i32(~var_0.b, func_1(var_0.c.b >> (91536u % 32u)).b), -1i), var_1.a);
    var var_3 = global2.d;
    let var_4 = var_0.d;
    var var_5 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_1.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_5.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1530f) - var_5.x))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.e, ~var_2.x), 22u)] <= ~var_0.e)));
}

