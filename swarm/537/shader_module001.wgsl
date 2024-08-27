struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-2487f, Struct_1(vec3<i32>(-46099i, 2147483647i, -44319i), i32(-2147483648), 1873u, vec4<f32>(-1029f, -454f, 478f, -442f), vec2<i32>(2147483647i, -1i)));

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<i32>(22031i, 39661i, 71439i), 14575i, 34979u, vec4<f32>(-1768f, -305f, 1076f, 789f), vec2<i32>(-1i, 14095i)), Struct_1(vec3<i32>(-8056i, 1i, -3213i), 6284i, 4294967295u, vec4<f32>(-2054f, 1000f, 1043f, 568f), vec2<i32>(-30155i, 16707i)), Struct_1(vec3<i32>(31544i, 2147483647i, 21001i), -13935i, 43190u, vec4<f32>(-137f, -1272f, -1318f, -569f), vec2<i32>(36744i, 51027i)), Struct_1(vec3<i32>(38994i, 1i, 11889i), -1i, 79810u, vec4<f32>(1583f, -1069f, -421f, 1000f), vec2<i32>(1i, -1i)), Struct_1(vec3<i32>(-7086i, -12119i, 1i), 31253i, 44292u, vec4<f32>(352f, -748f, -260f, 1812f), vec2<i32>(-16840i, 26234i)), Struct_1(vec3<i32>(-28972i, 2147483647i, -14414i), -18913i, 4294967295u, vec4<f32>(1728f, 573f, -259f, -1356f), vec2<i32>(2147483647i, -33902i)), Struct_1(vec3<i32>(-1i, -1i, -34774i), i32(-2147483648), 0u, vec4<f32>(1867f, -1750f, 1186f, 1071f), vec2<i32>(58589i, 31789i)), Struct_1(vec3<i32>(-29616i, -1i, -1i), i32(-2147483648), 83912u, vec4<f32>(1388f, 610f, -305f, 228f), vec2<i32>(2147483647i, -1i)), Struct_1(vec3<i32>(40827i, 0i, 35012i), 1637i, 4294967295u, vec4<f32>(663f, 1573f, 241f, 927f), vec2<i32>(0i, 2147483647i)), Struct_1(vec3<i32>(11585i, -28924i, -30279i), i32(-2147483648), 69608u, vec4<f32>(581f, -366f, 633f, 747f), vec2<i32>(41866i, 0i)), Struct_1(vec3<i32>(-39060i, -27563i, 1i), 2147483647i, 4294967295u, vec4<f32>(139f, 1354f, -546f, -119f), vec2<i32>(2147483647i, -1i)), Struct_1(vec3<i32>(-1i, -66889i, 2147483647i), -38237i, 1u, vec4<f32>(-1630f, 1000f, 840f, 1000f), vec2<i32>(-75800i, -39360i)), Struct_1(vec3<i32>(12819i, -21757i, -2389i), 1i, 1u, vec4<f32>(593f, -880f, -1605f, 1000f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(2147483647i, -20496i, -37301i), 2147483647i, 81751u, vec4<f32>(706f, -1214f, -235f, 722f), vec2<i32>(4872i, 2147483647i)), Struct_1(vec3<i32>(-42201i, -24589i, 31281i), -1i, 1u, vec4<f32>(-601f, 1377f, 708f, -826f), vec2<i32>(21472i, i32(-2147483648))), Struct_1(vec3<i32>(22514i, 44853i, 0i), 0i, 0u, vec4<f32>(-689f, -1824f, 551f, -399f), vec2<i32>(24490i, 2147483647i)), Struct_1(vec3<i32>(-34566i, 1i, -27729i), -7013i, 25138u, vec4<f32>(-368f, 645f, 1493f, 398f), vec2<i32>(-242i, -1i)), Struct_1(vec3<i32>(16694i, 0i, i32(-2147483648)), 1i, 1u, vec4<f32>(-249f, 990f, -376f, -1960f), vec2<i32>(30304i, -1i)));

var<private> global2: i32 = 2147483647i;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, 2954i), vec2<i32>(0i, 2147483647i), vec2<i32>(22688i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(11753i, 1i), vec2<i32>(-15116i, -3348i), vec2<i32>(0i, -29999i), vec2<i32>(i32(-2147483648), 6032i), vec2<i32>(1i, 7397i), vec2<i32>(2147483647i, -2981i), vec2<i32>(51172i, 37962i), vec2<i32>(-9444i, -2855i), vec2<i32>(45395i, 0i), vec2<i32>(2147483647i, -22294i), vec2<i32>(-17980i, 0i), vec2<i32>(-18360i, -5866i), vec2<i32>(2147483647i, -1i), vec2<i32>(10752i, -31438i), vec2<i32>(1i, 13768i), vec2<i32>(-54609i, -18502i), vec2<i32>(-27106i, -22100i), vec2<i32>(71925i, 2147483647i), vec2<i32>(27486i, 2147483647i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> vec4<bool> {
    global1 = array<Struct_1, 18>();
    global4 = array<vec2<i32>, 24>();
    global0 = arg_2;
    var var_0 = false;
    let var_1 = global0.b;
    return !(!vec4<bool>(all(vec3<bool>(arg_0, true, false)), global3.x, true, !global3.x));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_clamp_u32(select(~(~4294967295u), abs(~_wgslsmith_add_u32(6139u, global0.b.c)), true), ~u_input.c, 34556u | u_input.c);
    var var_1 = ~(select(~(vec3<i32>(85766i, global0.b.a.x, u_input.a.x) ^ vec3<i32>(global0.b.a.x, global0.b.b, 0i)), global0.b.a, vec3<bool>(func_1(global3.x, 1i, Struct_2(1057f, global1[_wgslsmith_index_u32(global0.b.c, 18u)]), Struct_1(global0.b.a, global0.b.a.x, 0u, vec4<f32>(100f, -601f, global0.a, -703f), vec2<i32>(-2147483647i, 2147483647i))).x, global3.x, global0.b.a.x >= 0i)) ^ firstLeadingBit(vec3<i32>(-20935i, global0.b.b, u_input.d) << (_wgslsmith_add_vec3_u32(vec3<u32>(var_0, 0u, global0.b.c), vec3<u32>(var_0, 46502u, 26826u)) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(778f, _wgslsmith_f_op_f32(floor(global0.b.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1044f + 1f) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.a, global0.b.d.x), _wgslsmith_f_op_f32(global0.b.d.x - global0.a), true)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.b.d.wwz, _wgslsmith_f_op_vec3_f32(-global0.b.d.yww))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.b.d.zyy, vec3<f32>(global0.a, 437f, global0.a)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2220f, global0.b.d.x, -842f))), !select(!vec3<bool>(global3.x, global3.x, true), vec3<bool>(false, global3.x, global3.x), !vec3<bool>(true, global3.x, global3.x)))));
    global2 = (abs(reverseBits(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_1.x, u_input.a.x, -2147483647i, var_1.x)))) | select(min(-5602i, global0.b.a.x), 28567i, all(func_1(global3.x, 22173i, Struct_2(global0.b.d.x, global0.b), global0.b)))) << (var_0 % 32u);
    var var_3 = _wgslsmith_f_op_f32(select(-596f, _wgslsmith_f_op_f32(-775f * 1008f), true));
    return _wgslsmith_div_u32(var_0, _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(global0.b.c, global0.b.c, 54649u)) | reverseBits(vec3<u32>(u_input.c, u_input.c, var_0)), vec3<u32>(_wgslsmith_sub_u32(global0.b.c, abs(36135u)), ~(var_0 | 21928u), u_input.c)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = select(vec3<bool>(global3.x, global3.x, !global3.x), !vec3<bool>(true, true, global3.x), vec3<bool>(!any(!vec2<bool>(global3.x, true)), !global3.x, global3.x));
    var var_1 = ~_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(arg_0, _wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(4294967295u, arg_0.x, u_input.c, 62331u))), global0.b.c);
    var var_2 = true;
    let var_3 = vec4<u32>(77687u, 1u, ~1u, 1u) >> ((~arg_0 | _wgslsmith_sub_vec4_u32(vec4<u32>(58796u, 1u, ~arg_0.x, 0u), arg_0)) % vec4<u32>(32u));
    global2 = ~(u_input.d >> (u_input.c % 32u));
    return abs(_wgslsmith_mod_u32(func_3(), 49317u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.b.b ^ u_input.b;
    let var_0 = true;
    global4 = array<vec2<i32>, 24>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -1169f, 113f, global0.b.d.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(403f, global0.b.d.x, global0.a, 551f) - global0.b.d))));
    var var_2 = all(select(select(vec4<bool>(!global3.x, global3.x, u_input.a.x == 1i, true), func_1(all(vec3<bool>(false, global3.x, var_0)), u_input.a.x, Struct_2(-165f, Struct_1(global0.b.a, global0.b.e.x, 1u, vec4<f32>(global0.b.d.x, -206f, 362f, global0.b.d.x), u_input.a.xy)), Struct_1(vec3<i32>(-1i, 57164i, 1i), -2147483647i, 31532u, var_1, global4[_wgslsmith_index_u32(30328u, 24u)])), var_0), !select(!vec4<bool>(var_0, true, false, global3.x), select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(var_0, global3.x, true, var_0), var_0), global3.x && global3.x), !(!vec4<bool>(var_0, global3.x, global3.x, var_0))));
    var var_3 = ((4294967295u ^ global0.b.c) << (global0.b.c % 32u)) >> (~func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(22467u, 4294967295u, u_input.c, u_input.c), vec4<u32>(global0.b.c, u_input.c, global0.b.c, 6794u) ^ vec4<u32>(u_input.c, u_input.c, 1u, u_input.c))) % 32u);
    let var_4 = Struct_3(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(u_input.a, vec4<i32>(global0.b.b, global0.b.a.x, u_input.a.x, u_input.b), var_0), vec4<i32>(u_input.b, u_input.b, global0.b.b, global0.b.e.x) | vec4<i32>(global0.b.a.x, 1i, u_input.d, 0i)), u_input.a), Struct_1(min(max(u_input.a.xzy, global0.b.a), global0.b.a) ^ vec3<i32>(-61211i, global0.b.a.x | -6218i, global0.b.a.x), _wgslsmith_sub_i32(u_input.b, abs(u_input.a.x)), 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global0.b.d)))), vec2<i32>(u_input.b, 1i)), Struct_1(_wgslsmith_div_vec3_i32(u_input.a.wzz, global0.b.a ^ select(u_input.a.yxy, vec3<i32>(u_input.d, -2147483647i, u_input.d), global3.x)), u_input.d, ~(~(~4294967295u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1417f, -1000f, -1246f, _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b.d * vec4<f32>(var_1.x, global0.b.d.x, global0.b.d.x, global0.a)))), select(vec2<i32>(-global0.b.b, _wgslsmith_clamp_i32(74453i, u_input.d, u_input.b)), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b.a.x, -2147483647i), vec2<i32>(-2147483647i, u_input.a.x), global0.b.e), global0.b.a.xx), true)), vec2<i32>(-u_input.b, u_input.a.x));
    var var_5 = Struct_1(vec3<i32>(-1i, global0.b.a.x | -_wgslsmith_clamp_i32(-31734i, u_input.a.x, global0.b.b), -13543i), firstLeadingBit(-2147483647i << (func_2(vec4<u32>(0u, var_4.c.c, 40816u, 17420u)) % 32u)) << (_wgslsmith_dot_vec3_u32(select(~vec3<u32>(69485u, 28110u, u_input.c), vec3<u32>(var_4.b.c, 1u, 18412u), !var_0), ~(~vec3<u32>(var_4.c.c, var_4.b.c, 1u))) % 32u), countOneBits(u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, global0.a, -1000f, global0.b.d.x))))))), ~(-_wgslsmith_mod_vec2_i32(abs(global0.b.e), -vec2<i32>(global0.b.a.x, u_input.b))));
    var var_6 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~7757u, ~(~firstTrailingBit(vec4<u32>(1u, 4294967295u, 63138u, var_4.b.c) ^ vec4<u32>(global0.b.c, 34787u, global0.b.c, 6836u))));
}

