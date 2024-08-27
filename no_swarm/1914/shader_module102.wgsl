struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(1u, vec3<f32>(1604f, 781f, 1907f), 53824u), Struct_1(48492u, vec3<f32>(1849f, -525f, -1474f), 3309u), Struct_1(4294967295u, vec3<f32>(778f, -1257f, 210f), 54482u), Struct_1(1u, vec3<f32>(-724f, 195f, -233f), 29807u), Struct_1(54093u, vec3<f32>(-464f, -1478f, -699f), 27184u), Struct_1(1u, vec3<f32>(-456f, -1600f, -1560f), 34608u), Struct_1(93333u, vec3<f32>(-1502f, 1012f, -600f), 0u), Struct_1(92449u, vec3<f32>(867f, 667f, -1302f), 4294967295u), Struct_1(1u, vec3<f32>(353f, 1915f, -1579f), 0u), Struct_1(13682u, vec3<f32>(1763f, 466f, 583f), 41487u), Struct_1(8194u, vec3<f32>(-1040f, -812f, -395f), 0u), Struct_1(1u, vec3<f32>(770f, -610f, 1245f), 4294967295u), Struct_1(34714u, vec3<f32>(1000f, -670f, -1000f), 4294967295u), Struct_1(55518u, vec3<f32>(-2352f, 1000f, 1568f), 1u), Struct_1(9563u, vec3<f32>(-2076f, 742f, 1702f), 54048u), Struct_1(4294967295u, vec3<f32>(-1214f, -1966f, 1106f), 51254u), Struct_1(1u, vec3<f32>(359f, -1000f, -1389f), 3919u), Struct_1(0u, vec3<f32>(686f, -181f, 126f), 1u), Struct_1(1u, vec3<f32>(-377f, 2031f, -1105f), 1u), Struct_1(73666u, vec3<f32>(-342f, -1000f, 1000f), 34840u), Struct_1(22585u, vec3<f32>(1000f, 1143f, -1000f), 24371u), Struct_1(1u, vec3<f32>(-2163f, -272f, -972f), 27533u), Struct_1(47326u, vec3<f32>(-1087f, -229f, 1709f), 0u), Struct_1(8111u, vec3<f32>(2848f, -946f, 1000f), 0u), Struct_1(30357u, vec3<f32>(-158f, 1507f, -1017f), 19174u), Struct_1(24905u, vec3<f32>(2161f, 1818f, 856f), 30148u), Struct_1(1u, vec3<f32>(271f, 1387f, 697f), 21392u));

var<private> global2: array<vec4<f32>, 7>;

var<private> global3: array<u32, 6> = array<u32, 6>(13143u, 4294967295u, 369u, 0u, 1u, 4294967295u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: Struct_4) -> f32 {
    let var_0 = arg_0.a.a;
    var var_1 = u_input.a;
    return -1348f;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec3<bool>) -> bool {
    var var_0 = vec3<i32>(0i, u_input.b, _wgslsmith_dot_vec4_i32(min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 22524i, 1i, u_input.b), vec4<i32>(1i, 86369i, 44342i, 4043i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(10876i, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.b, 37013i, 3105i, u_input.b))), _wgslsmith_sub_vec4_i32(select(~vec4<i32>(u_input.a, 2147483647i, -1i, u_input.b), reverseBits(vec4<i32>(-1i, u_input.a, 231i, u_input.b)), true), -_wgslsmith_mod_vec4_i32(vec4<i32>(-53644i, u_input.a, u_input.a, u_input.b), vec4<i32>(u_input.b, 14928i, u_input.a, -9270i)))));
    var var_1 = ~var_0.x & 2147483647i;
    var_1 = firstLeadingBit(u_input.a);
    var var_2 = arg_2.x;
    var var_3 = Struct_4(global1[_wgslsmith_index_u32(4294967295u, 27u)], arg_0);
    return true;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~countOneBits(u_input.d), 6u)], 7u)]) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -487f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(374f - 335f))), 300f));
    var var_1 = _wgslsmith_div_u32(abs(countOneBits(~u_input.c.x)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(u_input.c.wzw, vec3<u32>(21617u, 0u, 0u)), 30088u)), 6u)]);
    let var_2 = Struct_5(561f, u_input.c, u_input.a, !func_3(var_0.zzw, vec3<u32>(23537u, 108545u, global3[_wgslsmith_index_u32(u_input.d, 6u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], true)) || all(!select(vec4<bool>(global0[_wgslsmith_index_u32(55633u, 6u)], global0[_wgslsmith_index_u32(u_input.c.x, 6u)], global0[_wgslsmith_index_u32(u_input.d, 6u)], true), vec4<bool>(global0[_wgslsmith_index_u32(47984u, 6u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(u_input.d, 6u)]), true)), vec4<bool>(global0[_wgslsmith_index_u32(~1u | _wgslsmith_sub_u32(1u, ~u_input.c.x), 6u)], (~25630u | (9701u << (u_input.c.x % 32u))) < abs(u_input.e), global0[_wgslsmith_index_u32(u_input.d, 6u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(u_input.c.xz, vec2<u32>(13236u, 11165u)), _wgslsmith_div_vec2_u32(u_input.c.yy, vec2<u32>(147752u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)]))), 6u)] > global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 47104u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], 6u)], 6u)]), ~vec4<u32>(0u, 1u, global3[_wgslsmith_index_u32(0u, 6u)], u_input.e)), 6u)]));
    let var_3 = -(~arg_0);
    global1 = array<Struct_1, 27>();
    return Struct_3(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(~vec4<i32>(2147483647i, -2147483647i, -2794i, -2147483647i)), select(vec4<i32>(-18599i, arg_0, var_3, 2147483647i), vec4<i32>(var_2.c, -13173i, -12886i, var_3), true)), vec4<i32>(-2147483647i, -arg_0, max(1i, 1i), -arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -193f), 429f, true));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_4(global1[_wgslsmith_index_u32(27249u, 27u)], vec3<f32>(-838f, var_0, var_0)))) + _wgslsmith_f_op_f32(316f * var_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(554f * var_0) + _wgslsmith_f_op_f32(f32(-1f) * -1484f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) * -668f));
    global0 = array<bool, 6>();
    var var_2 = u_input.d;
    global2 = array<vec4<f32>, 7>();
    let var_3 = func_2(u_input.a);
    var_2 = ~reverseBits(1u);
    global1 = array<Struct_1, 27>();
    var var_4 = func_2(-(~1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(func_2(1i).a.x, 12219i), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32((_wgslsmith_div_u32(1u, u_input.c.x) & 115350u) | global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, select(u_input.c, u_input.c, false)), 6u)], 0u), 6u)]);
}

