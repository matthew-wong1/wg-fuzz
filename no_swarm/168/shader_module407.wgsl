struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(4294967295u, 0u, 57598u, 1u, 23087u, 0u, 1u, 46283u, 34156u, 20113u, 0u, 1u, 4294967295u, 76798u, 0u, 29332u, 33608u, 1u, 4294967295u, 0u, 43609u, 1u, 4294967295u, 3310u, 98445u, 4294967295u, 0u);

var<private> global1: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-631f, -659f, 230f, 1991f), vec4<f32>(-1003f, -600f, 1000f, -2236f), vec4<f32>(366f, 1113f, 522f, -406f), vec4<f32>(-520f, -588f, -340f, 1000f), vec4<f32>(242f, 1348f, 1000f, 946f), vec4<f32>(-1112f, 2339f, 1584f, 395f), vec4<f32>(-994f, 856f, -357f, 2048f), vec4<f32>(-1356f, 1919f, 1787f, 1030f), vec4<f32>(-1425f, -2076f, 519f, 1540f), vec4<f32>(-114f, -149f, 1139f, 275f), vec4<f32>(874f, 150f, 880f, -522f), vec4<f32>(209f, -970f, 188f, 1046f), vec4<f32>(-693f, 977f, -874f, -878f), vec4<f32>(-1305f, 101f, -1378f, -548f), vec4<f32>(516f, -1155f, 630f, 631f), vec4<f32>(191f, -1008f, 100f, 165f), vec4<f32>(454f, -1319f, 479f, -1288f), vec4<f32>(475f, -737f, 1071f, -719f), vec4<f32>(138f, 1388f, 1000f, 150f), vec4<f32>(1176f, 1006f, 1474f, 211f), vec4<f32>(-1207f, -372f, -1100f, -401f), vec4<f32>(-2052f, 341f, 1388f, -599f), vec4<f32>(1000f, 1252f, 453f, 352f), vec4<f32>(-880f, 344f, -572f, -256f));

var<private> global2: array<vec2<u32>, 19>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = arg_2.xy;
    var_0 = reverseBits(_wgslsmith_mod_vec2_i32(~vec2<i32>(~arg_0.a, u_input.d), _wgslsmith_mult_vec2_i32(firstLeadingBit(arg_2.yz) << (select(vec2<u32>(u_input.a.x, 0u), u_input.a, true) % vec2<u32>(32u)), vec2<i32>(u_input.b, u_input.d))));
    global0 = array<u32, 27>();
    var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a, 0i), vec2<i32>(~2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(43928i, 2147483647i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)] % 32u)), -1i)));
    let var_1 = ~u_input.c;
    return -firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(arg_2.x, arg_0.a), arg_2.x, var_0.x, _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(-55502i, -2147483647i, -2147483647i))) ^ vec4<i32>(~arg_0.a, -15409i, _wgslsmith_div_i32(-2147483647i, var_0.x), _wgslsmith_div_i32(27100i, u_input.d)));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_2.c.c.yx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_1.e.b.yz, vec2<f32>(1898f, 536f)))))));
    var var_1 = global0[_wgslsmith_index_u32(31901u, 27u)];
    return _wgslsmith_mod_u32(102430u, 35524u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_5(vec2<bool>(any(vec2<bool>(true, true)), select(!all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, true)))), Struct_2(true, vec3<i32>(~u_input.b, u_input.d, _wgslsmith_div_i32(u_input.d, u_input.d)) | (vec3<i32>(-1i) * -vec3<i32>(u_input.b, -1i, 2147483647i)), Struct_1(_wgslsmith_div_f32(511f, _wgslsmith_f_op_f32(164f + -634f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(-505f)), 109f, -1000f), vec3<f32>(_wgslsmith_f_op_f32(min(-1386f, 474f)), -2525f, -1735f)), vec4<u32>(3238u, 4294967295u, _wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)], 27u)], 27u)]) | min(34004u, 4294967295u), func_3(u_input.b & u_input.b, Struct_5(vec2<bool>(false, false), Struct_2(false, vec3<i32>(32439i, 1i, -1i), Struct_1(287f, vec3<f32>(844f, -145f, 191f), vec3<f32>(-749f, -1979f, 787f)), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 14444u, 5192u, 21833u)), vec2<i32>(18470i, -1i), Struct_4(u_input.b), Struct_1(-216f, vec3<f32>(-980f, 509f, -363f), vec3<f32>(715f, 2163f, 490f))), Struct_2(true, vec3<i32>(u_input.d, 10416i, -16238i), Struct_1(-1557f, vec3<f32>(-1479f, -162f, 1374f), vec3<f32>(1655f, -1000f, -1292f)), vec4<u32>(u_input.e, u_input.a.x, u_input.c, global0[_wgslsmith_index_u32(12155u, 27u)]))))), vec2<i32>(-abs(_wgslsmith_add_i32(u_input.d, u_input.b)), _wgslsmith_div_i32(-u_input.b, -23395i)), Struct_4(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, u_input.b)), u_input.b) ^ 0i), Struct_1(_wgslsmith_f_op_f32(round(972f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -689f, -843f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2991f, -625f, -1000f))))));
    global1 = array<vec4<f32>, 24>();
    global0 = array<u32, 27>();
    var var_1 = var_0.c.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(var_0.b.d.x, 24u)]);
    return var_0.b.c;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_5 {
    var var_0 = Struct_4(-u_input.d);
    global1 = array<vec4<f32>, 24>();
    var var_1 = Struct_2(false, min(vec3<i32>(var_0.a, _wgslsmith_sub_i32(countOneBits(var_0.a), _wgslsmith_add_i32(-19514i, -24426i)), -29761i), firstLeadingBit(firstLeadingBit(vec3<i32>(-25173i, -2147483647i, u_input.b))) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(27831u, arg_2, arg_2), vec3<u32>(global0[_wgslsmith_index_u32(0u, 27u)], u_input.a.x, arg_2)) % vec3<u32>(32u))), func_2(), abs(vec4<u32>(_wgslsmith_div_u32(arg_2, arg_2), 88059u, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(43923u, arg_0, 4294967295u), vec3<u32>(55591u, 4294967295u, 71771u))), 77993u)));
    var_0 = Struct_4(-1i);
    var var_2 = any(vec3<bool>(any(select(vec4<bool>(false, var_1.a, arg_1.x, var_1.a), vec4<bool>(false, false, arg_1.x, true), true)) || false, all(!vec3<bool>(arg_1.x, var_1.a, false)), true));
    return Struct_5(!(!select(vec2<bool>(true, arg_1.x), select(vec2<bool>(false, var_1.a), vec2<bool>(false, var_1.a), false), arg_1)), Struct_2(var_1.a, vec3<i32>(~(~var_1.b.x), _wgslsmith_div_i32(-11345i << (var_1.d.x % 32u), firstLeadingBit(var_0.a)), 0i >> (arg_2 % 32u)), Struct_1(_wgslsmith_f_op_f32(-var_1.c.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(305f, arg_3.a, 534f) * var_1.c.b), vec3<f32>(arg_3.b.x, var_1.c.a, -501f), vec3<bool>(var_1.a, true, var_1.a))), var_1.c.b), select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(arg_0, 27u)], 16846u), vec4<u32>(arg_0, 0u, arg_0, arg_0)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, arg_0), vec4<u32>(0u, global0[_wgslsmith_index_u32(var_1.d.x, 27u)], 18869u, 1u)), select(!vec4<bool>(arg_1.x, false, arg_1.x, false), select(vec4<bool>(var_1.a, true, var_1.a, true), vec4<bool>(true, false, false, false), vec4<bool>(false, arg_1.x, false, true)), select(vec4<bool>(false, true, var_1.a, false), vec4<bool>(true, arg_1.x, true, true), true)))), var_1.b.zy, Struct_4(_wgslsmith_div_i32(-35423i, var_0.a)), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.d, ~u_input.d, u_input.d, 18477i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), _wgslsmith_sub_vec4_i32(-vec4<i32>(0i, -20530i, u_input.d, 10481i), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 0i, 30069i), vec4<i32>(u_input.d, 1i, -1i, 15905i)))), func_1(Struct_4(0i), true, select(vec3<i32>(-13920i, -50114i, u_input.b), vec3<i32>(9143i, 4236i, u_input.d), vec3<bool>(false, true, false))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.e, 70410u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(27471u, 27u)], u_input.e, u_input.a.x)) % vec4<u32>(32u))));
    global2 = array<vec2<u32>, 19>();
    let var_1 = func_4(~(~u_input.a.x), select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, true, true)), true)), 14413u, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(1u, 4294967295u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, 0u), 55330u, countOneBits(0u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, var_1.b.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8261u, 27u)], 27u)], 27u)]), ~var_1.b.d.yww)), 20801u, var_0.yyw ^ firstTrailingBit(var_0.zxx), var_0.ywy);
}

