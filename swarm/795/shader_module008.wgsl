struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: Struct_3 = Struct_3(true);

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(vec2<f32>(1225f, -651f), Struct_2(vec3<i32>(i32(-2147483648), -4570i, 2147483647i), -986f, -1i, true, vec4<bool>(false, true, false, false)), vec3<i32>(0i, i32(-2147483648), 40546i)), Struct_4(vec2<f32>(1559f, 217f), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 0i), -495f, 1i, false, vec4<bool>(false, false, false, true)), vec3<i32>(1328i, -1i, -1i)), Struct_4(vec2<f32>(1000f, 1607f), Struct_2(vec3<i32>(17669i, 18836i, i32(-2147483648)), -789f, -1i, false, vec4<bool>(true, true, true, false)), vec3<i32>(2147483647i, 42937i, i32(-2147483648))), Struct_4(vec2<f32>(-1445f, 2874f), Struct_2(vec3<i32>(2147483647i, -56141i, 0i), 1470f, 28284i, false, vec4<bool>(false, false, true, true)), vec3<i32>(-1i, -8817i, -57962i)), Struct_4(vec2<f32>(297f, 1584f), Struct_2(vec3<i32>(168i, 0i, 2147483647i), -1602f, 0i, false, vec4<bool>(false, true, false, false)), vec3<i32>(-20818i, -9675i, 59255i)), Struct_4(vec2<f32>(-104f, 720f), Struct_2(vec3<i32>(37845i, -5445i, -4477i), -865f, -32189i, false, vec4<bool>(false, false, true, true)), vec3<i32>(-44951i, 2147483647i, 0i)), Struct_4(vec2<f32>(241f, -683f), Struct_2(vec3<i32>(2147483647i, 68662i, -33436i), 250f, -1i, false, vec4<bool>(false, true, true, false)), vec3<i32>(1i, 1i, 0i)), Struct_4(vec2<f32>(178f, 1206f), Struct_2(vec3<i32>(i32(-2147483648), -30923i, 0i), -775f, -12341i, false, vec4<bool>(true, false, true, false)), vec3<i32>(i32(-2147483648), -1i, 2147483647i)), Struct_4(vec2<f32>(-2236f, 1000f), Struct_2(vec3<i32>(77893i, -6296i, 12609i), 2278f, -21519i, true, vec4<bool>(false, false, false, true)), vec3<i32>(i32(-2147483648), 2147483647i, 1i)), Struct_4(vec2<f32>(-617f, -765f), Struct_2(vec3<i32>(40639i, -14670i, 26227i), 1000f, -1i, true, vec4<bool>(true, false, true, true)), vec3<i32>(-50846i, 14133i, 12203i)), Struct_4(vec2<f32>(394f, 993f), Struct_2(vec3<i32>(i32(-2147483648), 34453i, -1i), -968f, 3684i, true, vec4<bool>(false, true, false, true)), vec3<i32>(28725i, 1i, -8080i)), Struct_4(vec2<f32>(593f, 457f), Struct_2(vec3<i32>(0i, -24880i, -1i), -275f, 36321i, false, vec4<bool>(true, true, true, true)), vec3<i32>(-44276i, i32(-2147483648), 1745i)), Struct_4(vec2<f32>(1559f, -1000f), Struct_2(vec3<i32>(i32(-2147483648), -22861i, -32235i), -200f, 7916i, true, vec4<bool>(false, true, false, false)), vec3<i32>(2147483647i, 46010i, 2147483647i)), Struct_4(vec2<f32>(1000f, 613f), Struct_2(vec3<i32>(-1i, 3430i, i32(-2147483648)), 1000f, 18097i, false, vec4<bool>(false, true, true, false)), vec3<i32>(40276i, -1i, -1i)), Struct_4(vec2<f32>(853f, -383f), Struct_2(vec3<i32>(2147483647i, -6692i, -1i), 527f, -1i, true, vec4<bool>(false, false, true, true)), vec3<i32>(-1i, 2147483647i, i32(-2147483648))), Struct_4(vec2<f32>(-1187f, -568f), Struct_2(vec3<i32>(-19589i, -1i, 1i), -1000f, 18302i, false, vec4<bool>(false, true, false, false)), vec3<i32>(0i, 1i, -4280i)), Struct_4(vec2<f32>(-204f, -1097f), Struct_2(vec3<i32>(0i, -21720i, 1586i), -1055f, 1i, true, vec4<bool>(false, false, true, false)), vec3<i32>(-1i, 0i, 1i)), Struct_4(vec2<f32>(-1070f, -1586f), Struct_2(vec3<i32>(0i, 35168i, 1i), 238f, -16271i, true, vec4<bool>(false, true, true, false)), vec3<i32>(1i, 16393i, 2147483647i)), Struct_4(vec2<f32>(-347f, -510f), Struct_2(vec3<i32>(0i, 0i, 1i), 669f, -21828i, true, vec4<bool>(false, false, true, false)), vec3<i32>(-1i, i32(-2147483648), -15794i)), Struct_4(vec2<f32>(348f, -201f), Struct_2(vec3<i32>(48820i, 0i, 5300i), 399f, -52667i, true, vec4<bool>(true, false, true, false)), vec3<i32>(1i, i32(-2147483648), i32(-2147483648))), Struct_4(vec2<f32>(-1000f, -288f), Struct_2(vec3<i32>(1i, -30377i, i32(-2147483648)), 1056f, 35233i, false, vec4<bool>(true, false, false, false)), vec3<i32>(40339i, 38982i, 1i)), Struct_4(vec2<f32>(-1914f, 472f), Struct_2(vec3<i32>(-22924i, 43628i, 32600i), 389f, -3061i, false, vec4<bool>(false, false, true, false)), vec3<i32>(i32(-2147483648), -2742i, 0i)), Struct_4(vec2<f32>(376f, 2226f), Struct_2(vec3<i32>(1722i, 1i, -1i), 1443f, 7545i, false, vec4<bool>(false, false, true, true)), vec3<i32>(-1i, 1i, 0i)), Struct_4(vec2<f32>(270f, -254f), Struct_2(vec3<i32>(8973i, -1i, 56162i), -264f, -1909i, true, vec4<bool>(true, true, false, true)), vec3<i32>(-36704i, 2147483647i, -18269i)), Struct_4(vec2<f32>(-1505f, 212f), Struct_2(vec3<i32>(-14842i, -1i, -1i), 791f, 9283i, false, vec4<bool>(true, false, true, false)), vec3<i32>(6529i, 15925i, 13375i)), Struct_4(vec2<f32>(-281f, 373f), Struct_2(vec3<i32>(2147483647i, -1i, i32(-2147483648)), 195f, -4614i, false, vec4<bool>(false, true, false, true)), vec3<i32>(-14177i, -32481i, 2147483647i)), Struct_4(vec2<f32>(-1140f, -510f), Struct_2(vec3<i32>(0i, 0i, 46855i), -268f, 35365i, false, vec4<bool>(false, true, true, true)), vec3<i32>(i32(-2147483648), i32(-2147483648), 1787i)), Struct_4(vec2<f32>(-1045f, -521f), Struct_2(vec3<i32>(-37021i, i32(-2147483648), 1i), 1331f, -21432i, true, vec4<bool>(false, true, true, true)), vec3<i32>(1i, 0i, 15560i)), Struct_4(vec2<f32>(379f, -310f), Struct_2(vec3<i32>(i32(-2147483648), -36284i, 52439i), -1071f, 2147483647i, false, vec4<bool>(true, false, false, false)), vec3<i32>(-1i, 2147483647i, 0i)), Struct_4(vec2<f32>(-164f, 1646f), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), -6492i), 405f, 27532i, false, vec4<bool>(true, true, true, false)), vec3<i32>(1i, -1i, -41558i)));

var<private> global4: Struct_4 = Struct_4(vec2<f32>(1000f, 575f), Struct_2(vec3<i32>(-1i, i32(-2147483648), 56125i), -382f, i32(-2147483648), false, vec4<bool>(false, false, true, true)), vec3<i32>(-14190i, 5729i, -21672i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: i32) -> vec3<bool> {
    var var_0 = u_input.a;
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 30u)];
    var var_1 = Struct_1(select(!all(vec3<bool>(global0.x, false, global0.x)), global1.a, true) && true);
    let var_2 = Struct_5(max(~(~firstTrailingBit(u_input.a)), vec3<u32>(u_input.a.x, 16016u, ~0u) & select(select(u_input.a, vec3<u32>(u_input.a.x, var_0.x, 1u), vec3<bool>(global0.x, true, false)), ~vec3<u32>(u_input.a.x, var_0.x, 4294967295u), !global0.yww)), vec2<bool>(false, true), vec4<u32>(1u << (1u % 32u), 26418u, 4294967295u, ~(~0u)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global4.b.a.xx, global2.zx), -1415i), global4.c.x), 32121i), vec4<bool>(true, false, false, any(vec4<bool>(true, any(global4.b.e), true, global4.b.c >= -9163i))));
    var var_3 = _wgslsmith_sub_u32(u_input.a.x, 22934u) ^ 16657u;
    return var_2.e.zyy;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = global4.b;
    let var_1 = select((var_0.a ^ global2.wxw) & var_0.a, var_0.a, select(select(!global0.zyw, global0.yyy, global1.a), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-305f, 585f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1000f, 150f)))), u_input.b), vec3<bool>(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4.a.x, global4.b.b, arg_0.x))), ~(-72001i)).x, !select(global1.a, var_0.d, global1.a), var_0.e.x)));
    var var_2 = vec4<bool>(abs(countOneBits(-var_1.x)) == u_input.b, global0.x, any(vec2<bool>(!any(var_0.e), select(false, all(vec2<bool>(true, true)), true))), global0.x | all(select(select(vec4<bool>(global0.x, true, global4.b.d, global1.a), vec4<bool>(var_0.d, false, false, global1.a), var_0.e), vec4<bool>(global4.b.d, false, global4.b.d, false), !var_0.e.x)));
    let var_3 = firstLeadingBit(countOneBits(~(max(0u, 4294967295u) & (u_input.a.x | 1u))));
    return Struct_1(global0.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = arg_1.e;
    global3 = array<Struct_4, 30>();
    global3 = array<Struct_4, 30>();
    var var_1 = Struct_4(global4.a, global4.b, (~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.c, global2.x, -10306i), vec3<i32>(14803i, arg_1.a.x, global4.c.x), vec3<i32>(global2.x, arg_1.c, 9583i)) ^ -global4.b.a) << (~vec3<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, 1u), _wgslsmith_add_u32(u_input.a.x, 4054u), ~66843u) % vec3<u32>(32u)));
    var var_2 = func_2(vec2<f32>(arg_1.b, 211f));
    return global4.b.e;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    let var_0 = func_4(func_2(arg_3.xz), Struct_2(abs(global4.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(566f, global4.a.x))), -463f), arg_0.x, all(!select(vec4<bool>(global0.x, global4.b.e.x, false, global1.a), vec4<bool>(false, global1.a, true, global1.a), global1.a)), select(vec4<bool>(true, true, global1.a, global1.a), vec4<bool>(true, false, false, arg_2 < 1u), false)));
    let var_1 = Struct_5(u_input.a, !func_4(Struct_1(global4.b.d), Struct_2(arg_0 & global4.c, 179f, 1i, func_3(arg_3.wz, arg_3.zxx, -12993i).x, vec4<bool>(true, var_0.x, var_0.x, true))).zy, vec4<u32>(_wgslsmith_mult_u32(1u, 0u >> (0u % 32u)), ~19635u, _wgslsmith_mod_u32(arg_2, arg_2) | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 11195u, 1u, arg_2), vec4<u32>(arg_2, u_input.a.x, arg_2, u_input.a.x)), 0u) | ~vec4<u32>(_wgslsmith_clamp_u32(arg_2, 0u, arg_2), 32465u >> (1u % 32u), 12048u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), ~vec2<i32>(1i, 0i), !var_0);
    global4 = global3[_wgslsmith_index_u32(4100u, 30u)];
    let var_2 = Struct_5(u_input.a, !vec2<bool>(var_1.b.x, false), ~vec4<u32>(~_wgslsmith_add_u32(1u, 128398u), ~(~arg_2), _wgslsmith_sub_u32(~24033u, min(32137u, var_1.c.x)), 66039u), vec2<i32>(max(-_wgslsmith_mod_i32(-16858i, global2.x), -363i >> (u_input.a.x % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, var_1.d.x, 0i, arg_0.x), vec4<i32>(2147483647i, global2.x, -26942i, global4.b.c)), vec4<i32>(-2147483647i, -2147483647i, 21420i, var_1.d.x))), vec4<bool>(global0.x, all(select(global0.yy, global4.b.e.xy, true)), false & (func_4(Struct_1(global4.b.d), global4.b).x && !global1.a), true == global4.b.e.x));
    global2 = vec4<i32>(global2.x << (~select(4294967295u, _wgslsmith_dot_vec3_u32(var_1.c.yzy, vec3<u32>(52688u, 45225u, u_input.a.x)), true) % 32u), 0i, _wgslsmith_add_i32(global2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(41270i, 2147483647i, -23593i), global2.yzz)), _wgslsmith_mod_i32(-5150i, -32887i));
    return arg_2 ^ u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(-23154i));
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a ^ vec3<u32>(1u, 4294967295u, u_input.a.x), ~u_input.a), firstTrailingBit(51950u) & 26048u, 14767u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(85917u, u_input.a.x), vec2<u32>(43321u, 0u)), u_input.a.x << (u_input.a.x % 32u))), ~vec4<u32>(func_1(global4.c, global4.a, u_input.a.x, vec4<f32>(global4.a.x, -1000f, global4.b.b, -1036f)), u_input.a.x, 4294967295u, 1321u)), select(countOneBits(~vec4<u32>(1u, u_input.a.x, 56180u, u_input.a.x)), vec4<u32>(min(44039u, u_input.a.x), ~20589u >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(u_input.a.x, 1u, u_input.a.x) ^ vec3<u32>(1u, 67657u, 21111u)), select(36762u >> (u_input.a.x % 32u), ~u_input.a.x, false)), select(global4.b.e, !select(global4.b.e, global4.b.e, global4.b.d), any(func_4(Struct_1(global4.b.e.x), Struct_2(vec3<i32>(global2.x, -70249i, u_input.b), global4.b.b, global4.c.x, true, global4.b.e)).ywx))), vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), vec4<u32>(~1u, ~42539u, 1u, ~51773u)), 70626u, _wgslsmith_sub_u32(~u_input.a.x, 66075u), 34402u));
    global1 = Struct_3(firstTrailingBit(-global2.x | u_input.b) > _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-20897i, var_0, -1489i, -12062i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 3192i, u_input.b, 26318i) >> (var_1 % vec4<u32>(32u)), max(vec4<i32>(u_input.b, var_0, var_0, -1i), vec4<i32>(-13250i, global2.x, global2.x, u_input.b)), countOneBits(vec4<i32>(-2147483647i, 2147483647i, -77419i, global2.x)))));
    global1 = Struct_3(true);
    var var_2 = vec3<i32>(max(i32(-1i) * -26211i, 0i ^ (_wgslsmith_sub_i32(global2.x, -7992i) & reverseBits(global2.x))), ~_wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(2160i, 1i, global2.x, -12406i), vec4<i32>(var_0, -1i, global2.x, global4.b.c)), global4.b.a.x), 87986i);
    let var_3 = 19245u;
    let var_4 = Struct_3(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(~39532u, _wgslsmith_add_u32(~var_1.x, _wgslsmith_dot_vec3_u32(var_1.xwz, vec3<u32>(0u, 13774u, var_3))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -397f), global4.b.b, -473f), vec3<i32>(global4.c.x, -24802i << (u_input.a.x % 32u), min(1i, 0i)), ~vec2<i32>(_wgslsmith_add_i32(0i, var_2.x), -23439i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, global4.b.b, 645f, global4.b.b))))));
}

