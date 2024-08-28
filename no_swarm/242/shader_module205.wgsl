struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 11060u, 2671u), vec3<u32>(2091u, 0u, 70795u), vec3<u32>(44058u, 4294967295u, 13379u), vec3<u32>(11808u, 0u, 4294967295u), vec3<u32>(0u, 25222u, 4294967295u));

var<private> global1: array<u32, 24> = array<u32, 24>(4786u, 1u, 80073u, 4294967295u, 13077u, 16488u, 43694u, 20411u, 4416u, 61715u, 1u, 4294967295u, 1u, 12036u, 119398u, 57080u, 12058u, 0u, 0u, 4294967295u, 33716u, 61326u, 41537u, 41746u);

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<bool>(false, true), vec4<bool>(true, true, true, false), true, vec2<f32>(607f, 732f)), Struct_2(vec2<bool>(false, true), vec4<bool>(true, false, true, false), false, vec2<f32>(729f, -329f)), Struct_2(vec2<bool>(false, false), vec4<bool>(true, true, false, true), true, vec2<f32>(598f, -512f)), Struct_2(vec2<bool>(false, true), vec4<bool>(true, true, true, false), false, vec2<f32>(914f, -1083f)), Struct_2(vec2<bool>(true, true), vec4<bool>(true, false, false, false), false, vec2<f32>(823f, 426f)), Struct_2(vec2<bool>(true, true), vec4<bool>(true, true, false, false), true, vec2<f32>(598f, 166f)), Struct_2(vec2<bool>(false, false), vec4<bool>(false, true, false, false), true, vec2<f32>(-547f, -759f)), Struct_2(vec2<bool>(true, false), vec4<bool>(false, false, true, false), false, vec2<f32>(827f, -492f)), Struct_2(vec2<bool>(false, false), vec4<bool>(false, true, true, false), false, vec2<f32>(-960f, 631f)), Struct_2(vec2<bool>(true, true), vec4<bool>(false, true, false, true), false, vec2<f32>(683f, 1591f)), Struct_2(vec2<bool>(true, false), vec4<bool>(false, true, false, true), true, vec2<f32>(-310f, -635f)), Struct_2(vec2<bool>(false, true), vec4<bool>(true, false, false, false), false, vec2<f32>(285f, -149f)), Struct_2(vec2<bool>(false, true), vec4<bool>(false, true, true, true), false, vec2<f32>(-459f, 1476f)), Struct_2(vec2<bool>(true, false), vec4<bool>(false, true, false, true), true, vec2<f32>(-915f, -1205f)), Struct_2(vec2<bool>(false, false), vec4<bool>(true, true, false, false), false, vec2<f32>(1000f, -818f)), Struct_2(vec2<bool>(false, true), vec4<bool>(false, false, false, true), true, vec2<f32>(-477f, 300f)));

var<private> global3: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec3<f32>(131f, 427f, -952f), vec4<bool>(true, false, true, false), vec3<u32>(13569u, 4294967295u, 4294967295u), vec2<f32>(-581f, 465f), Struct_2(vec2<bool>(true, false), vec4<bool>(true, true, false, false), true, vec2<f32>(-397f, 446f))), Struct_3(vec3<f32>(1212f, -482f, -854f), vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 79478u, 651u), vec2<f32>(-1048f, 106f), Struct_2(vec2<bool>(false, true), vec4<bool>(false, false, false, false), true, vec2<f32>(-514f, -1000f))), Struct_3(vec3<f32>(-1357f, -325f, -209f), vec4<bool>(true, false, true, true), vec3<u32>(4294967295u, 32236u, 4294967295u), vec2<f32>(104f, -1364f), Struct_2(vec2<bool>(false, true), vec4<bool>(true, false, false, false), false, vec2<f32>(-190f, 991f))), Struct_3(vec3<f32>(198f, -1269f, -801f), vec4<bool>(false, false, true, true), vec3<u32>(23263u, 4294967295u, 4294967295u), vec2<f32>(924f, 523f), Struct_2(vec2<bool>(false, false), vec4<bool>(true, false, true, false), false, vec2<f32>(-477f, -273f))), Struct_3(vec3<f32>(-1000f, -919f, 2309f), vec4<bool>(true, false, true, true), vec3<u32>(30032u, 0u, 0u), vec2<f32>(-1000f, 845f), Struct_2(vec2<bool>(true, false), vec4<bool>(true, false, true, false), true, vec2<f32>(-123f, -1352f))), Struct_3(vec3<f32>(-396f, -987f, 1429f), vec4<bool>(false, true, false, true), vec3<u32>(150897u, 70710u, 1u), vec2<f32>(-1000f, -524f), Struct_2(vec2<bool>(true, true), vec4<bool>(false, true, true, true), true, vec2<f32>(1489f, 788f))), Struct_3(vec3<f32>(233f, 1611f, 250f), vec4<bool>(false, false, true, false), vec3<u32>(1u, 57453u, 4294967295u), vec2<f32>(-336f, -443f), Struct_2(vec2<bool>(true, true), vec4<bool>(true, true, false, true), false, vec2<f32>(977f, 829f))), Struct_3(vec3<f32>(-774f, -566f, 853f), vec4<bool>(false, true, false, true), vec3<u32>(6762u, 0u, 2415u), vec2<f32>(1000f, 973f), Struct_2(vec2<bool>(true, false), vec4<bool>(true, true, true, true), false, vec2<f32>(-2469f, -1000f))), Struct_3(vec3<f32>(1192f, -165f, -281f), vec4<bool>(false, false, false, false), vec3<u32>(33284u, 4294967295u, 1u), vec2<f32>(1741f, -1215f), Struct_2(vec2<bool>(true, true), vec4<bool>(false, true, false, false), false, vec2<f32>(1363f, -418f))), Struct_3(vec3<f32>(1408f, 1005f, -150f), vec4<bool>(false, true, true, true), vec3<u32>(1u, 3442u, 1u), vec2<f32>(663f, -883f), Struct_2(vec2<bool>(true, true), vec4<bool>(false, true, true, false), true, vec2<f32>(-1657f, -1561f))), Struct_3(vec3<f32>(580f, 559f, -936f), vec4<bool>(true, false, false, true), vec3<u32>(10188u, 4294967295u, 0u), vec2<f32>(-262f, 491f), Struct_2(vec2<bool>(true, true), vec4<bool>(true, false, false, false), true, vec2<f32>(-673f, -155f))), Struct_3(vec3<f32>(2071f, 193f, 1187f), vec4<bool>(true, true, true, true), vec3<u32>(73467u, 41990u, 26486u), vec2<f32>(-1141f, -1737f), Struct_2(vec2<bool>(false, false), vec4<bool>(false, true, true, false), true, vec2<f32>(-898f, 489f))), Struct_3(vec3<f32>(-659f, -1051f, -205f), vec4<bool>(false, false, true, true), vec3<u32>(120181u, 22278u, 30860u), vec2<f32>(1172f, 694f), Struct_2(vec2<bool>(false, true), vec4<bool>(false, true, true, false), false, vec2<f32>(371f, -2107f))), Struct_3(vec3<f32>(148f, 216f, 923f), vec4<bool>(true, false, false, false), vec3<u32>(1u, 4294967295u, 4294967295u), vec2<f32>(-406f, 1664f), Struct_2(vec2<bool>(true, true), vec4<bool>(false, true, false, true), false, vec2<f32>(579f, -1649f))), Struct_3(vec3<f32>(-232f, -180f, -1662f), vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 4294967295u, 31335u), vec2<f32>(1084f, -536f), Struct_2(vec2<bool>(false, true), vec4<bool>(false, true, false, true), false, vec2<f32>(-837f, -169f))), Struct_3(vec3<f32>(891f, 404f, 1424f), vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 1u, 19094u), vec2<f32>(-1218f, 753f), Struct_2(vec2<bool>(true, false), vec4<bool>(true, false, true, true), false, vec2<f32>(-2230f, 1000f))), Struct_3(vec3<f32>(-1276f, 2613f, 470f), vec4<bool>(true, true, true, false), vec3<u32>(16377u, 18195u, 27576u), vec2<f32>(1720f, 1437f), Struct_2(vec2<bool>(true, true), vec4<bool>(true, true, false, false), false, vec2<f32>(405f, -506f))));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = countOneBits(-10337i);
    var var_1 = abs(_wgslsmith_clamp_vec2_u32(u_input.e.yz, min(vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7816u, 24u)], 24u)]), reverseBits(vec2<u32>(10601u, 4294967295u))), select(vec2<u32>(50583u, 4294967295u), u_input.e.xy ^ u_input.e.zy, select(vec2<bool>(false, false), vec2<bool>(false, false), false))) ^ vec2<u32>(u_input.e.x, _wgslsmith_mod_u32(~0u, 4294967295u)));
    var_0 = _wgslsmith_dot_vec4_i32(~u_input.d, u_input.d);
    let var_2 = true;
    var_0 = (firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.c >> (u_input.e.xx % vec2<u32>(32u)), u_input.c)) | -u_input.d.x) ^ select(~(-3869i), -2147483647i, true);
    return abs(9478u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec3<f32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(abs(u_input.e.x), 16u)];
    global2 = array<Struct_2, 16>();
    let var_1 = Struct_3(arg_2, var_0.b, ~_wgslsmith_clamp_vec3_u32(u_input.e << (~u_input.e % vec3<u32>(32u)), select(vec3<u32>(30138u, arg_0.x, arg_0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(39096u, 24u)], arg_0.x, global1[_wgslsmith_index_u32(u_input.e.x, 24u)]), vec3<u32>(4294967295u, 33686u, 9334u), vec3<u32>(1u, 58458u, 4294967295u)), true && var_0.c), _wgslsmith_add_vec3_u32(~u_input.e, global0[_wgslsmith_index_u32(abs(39889u), 6u)])), var_0.d, Struct_2(arg_1, vec4<bool>(true, !(arg_1.x != true), true, true), var_0.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 959f) - vec2<f32>(var_0.d.x, -1900f)), _wgslsmith_f_op_vec2_f32(-var_0.d))))));
    let var_2 = Struct_5(Struct_4(vec3<u32>(_wgslsmith_sub_u32(31482u, ~var_1.c.x), global1[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(arg_2.x - 2355f)), 24u)], min(_wgslsmith_clamp_u32(0u, global1[_wgslsmith_index_u32(1u, 24u)], var_1.c.x), ~arg_0.x)), ~(~(~4294967295u)), Struct_1(_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.d.x, 1i, u_input.d.x, u_input.d.x), u_input.d), vec4<i32>(u_input.c.x, u_input.a, 15569i, u_input.a)), !var_0.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), u_input.d.yyz & u_input.d.wxz)), _wgslsmith_f_op_f32(trunc(1f))), var_1.e.b.wxw);
    global2 = array<Struct_2, 16>();
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> Struct_4 {
    global2 = array<Struct_2, 16>();
    global1 = array<u32, 24>();
    global0 = array<vec3<u32>, 6>();
    global3 = array<Struct_3, 17>();
    return Struct_4(vec3<u32>(_wgslsmith_mult_u32(39314u, 32313u), reverseBits(4294967295u), arg_1.b), _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.e.yx, u_input.e.zy), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(arg_1.a.x, 24u)])), ~0u), Struct_1(u_input.d, select(select(vec2<bool>(true, arg_1.c.b.x), select(arg_1.c.b, arg_1.c.b, arg_1.c.b.x), true), select(vec2<bool>(true, true), arg_1.c.b, !arg_1.c.b.x), arg_1.c.b.x), _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(select(arg_1.c.a.yzz, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<bool>(true, true, false)), vec3<i32>(51917i, u_input.a, 2147483647i)))), _wgslsmith_f_op_f32(-arg_1.d));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    global3 = array<Struct_3, 17>();
    let var_0 = u_input.e;
    var var_1 = _wgslsmith_div_u32(firstLeadingBit(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(37156u, 24u)] >> ((1u >> (u_input.e.x % 32u)) % 32u), 24u)]), ~u_input.e.x) & var_0.x;
    var var_2 = func_4(global1[_wgslsmith_index_u32(46546u, 24u)], Struct_4(~(~u_input.e) << (abs(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], global1[_wgslsmith_index_u32(82894u, 24u)], 1u)) % vec3<u32>(32u)), func_2(u_input.e.yz, vec2<bool>(arg_0.x, !arg_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -163f, -518f)) * vec3<f32>(-808f, -1000f, -989f))), Struct_1(_wgslsmith_div_vec4_i32(~u_input.d, ~u_input.d), select(vec2<bool>(arg_0.x, true), vec2<bool>(false, arg_0.x), true), select(u_input.d.x, ~u_input.d.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-792f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-762f)))))));
    global0 = array<vec3<u32>, 6>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_4(firstLeadingBit(vec3<u32>(~9386u, 41988u, global1[_wgslsmith_index_u32(func_1(vec4<bool>(false, false, true, false)), 24u)])), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 24u)], func_4(~u_input.e.x ^ (global1[_wgslsmith_index_u32(13638u, 24u)] | 53768u), func_4(64069u, Struct_4(u_input.e, 1u, Struct_1(vec4<i32>(2147483647i, 26553i, u_input.c.x, 2147483647i), vec2<bool>(true, true), u_input.a), -1498f))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1698f)))))), vec3<bool>(~_wgslsmith_clamp_u32(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 24u)], 1u) <= ~(~1u), any(vec2<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(false, true, false, false)))), (~u_input.a <= 2147483647i) || (4294967295u != (global1[_wgslsmith_index_u32(92948u, 24u)] & u_input.b))));
    var var_1 = 532f;
    global0 = array<vec3<u32>, 6>();
    global2 = array<Struct_2, 16>();
    let var_2 = abs(abs(_wgslsmith_dot_vec4_i32(select(u_input.d, var_0.a.c.a, var_0.b.x), -var_0.a.c.a)) >> (~60833u % 32u));
    let var_3 = func_4(~u_input.e.x, Struct_4(global0[_wgslsmith_index_u32(~4294967295u, 6u)], global1[_wgslsmith_index_u32((~33122u & ~var_0.a.b) << (~firstLeadingBit(0u) % 32u), 24u)], func_4(4294967295u, func_4(37697u, Struct_4(u_input.e, 26126u, Struct_1(var_0.a.c.a, var_0.a.c.b, 12206i), var_0.a.d))).c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.d - func_4(15050u, Struct_4(vec3<u32>(var_0.a.a.x, 4294967295u, global1[_wgslsmith_index_u32(u_input.e.x, 24u)]), 4294967295u, var_0.a.c, var_0.a.d)).d)))));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-var_3.d), var_0.a.d, _wgslsmith_div_f32(var_0.a.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.d, var_3.d) * var_0.a.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.x | _wgslsmith_mod_u32(var_3.b, global1[_wgslsmith_index_u32(firstLeadingBit(45061u), 24u)]), vec2<f32>(-905f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(var_4.x + 1055f)) * 811f)));
}

