struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1372f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: u32) -> vec2<i32> {
    let var_0 = ~23554i;
    return ~(~vec2<i32>(var_0, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.c.zzz, u_input.c.wzz), u_input.b & var_0)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b.x)));
    var var_0 = Struct_3(Struct_1(max(u_input.d.x, firstLeadingBit(4294967295u)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1670f)), -290f), -738f), firstTrailingBit(vec2<i32>(1i, arg_1.c.x))), 45151u, Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b * arg_1.b)) - arg_1.b), max(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.c, arg_1.c), arg_1.c), arg_3)), Struct_1(select(arg_0.x, select(44279u, max(19238u, arg_1.a), true), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.b.x, arg_2), arg_1.b)) * _wgslsmith_f_op_vec2_f32(-arg_1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 305f) * vec2<f32>(arg_2, arg_1.b.x)))), _wgslsmith_mod_vec2_i32(arg_1.c, arg_3)));
    var_0 = Struct_3(Struct_1(max(36878u, arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.x + -967f), arg_1.b.x), arg_3), u_input.a, arg_1, Struct_1(_wgslsmith_div_u32(4294967295u, 4294967295u) << (_wgslsmith_clamp_u32(0u, ~76563u, firstLeadingBit(arg_0.x)) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.c.b, vec2<f32>(var_0.d.b.x, var_0.d.b.x), false)) * _wgslsmith_f_op_vec2_f32(sign(var_0.c.b))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.b.x, arg_1.b.x), arg_1.b) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.x, arg_1.b.x), var_0.c.b))), _wgslsmith_mult_vec2_i32(-select(arg_1.c, vec2<i32>(arg_3.x, arg_1.c.x), false), vec2<i32>(reverseBits(arg_1.c.x), min(58887i, 43521i)))));
    var var_1 = vec4<u32>(0u & firstTrailingBit(0u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.xw, firstLeadingBit(select(vec2<u32>(arg_0.x, 1u), vec2<u32>(40296u, 1u), vec2<bool>(false, false)))), reverseBits(min(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(1u, u_input.a)), u_input.d << (arg_0.wx % vec2<u32>(32u))))), ~_wgslsmith_add_u32(~0u, firstLeadingBit(arg_0.x | u_input.d.x)), var_0.b);
    let var_2 = ~arg_0.zxz;
    return var_0.c;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-1055f + arg_0.b.b.b.x))) - -979f));
    var var_1 = ~u_input.c.zyw;
    var var_2 = arg_0.c | vec2<i32>(-select(arg_0.c.x, -5338i, all(vec3<bool>(false, true, arg_0.a.x))), arg_0.c.x);
    let var_3 = reverseBits(76153u);
    let var_4 = 4294967295u;
    return Struct_2(func_3(vec4<u32>(arg_2.x & ~var_3, arg_0.d.a, ~1u >> (arg_2.x % 32u), var_3), arg_0.d, 220f, func_2(~min(var_4, 60454u))), Struct_1(var_3, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1000f - arg_1.x), -2421f))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_1.x), u_input.c.yw, u_input.c.zw)), arg_0.d);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: bool, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = Struct_2(func_1(arg_0, vec3<f32>(-2336f, _wgslsmith_f_op_f32(929f - arg_0.d.b.x), _wgslsmith_f_op_f32(arg_3.d.b.x - _wgslsmith_f_op_f32(abs(arg_3.d.b.x)))), ~select(firstTrailingBit(vec3<u32>(0u, 21265u, arg_1)), vec3<u32>(51215u, 4294967295u, arg_0.d.a), !arg_0.a)).b, arg_3.d, Struct_1(84518u, _wgslsmith_f_op_vec2_f32(func_1(Struct_4(arg_0.a, arg_0.b, vec2<i32>(arg_3.d.c.x, u_input.c.x), arg_0.b.b), vec3<f32>(-858f, arg_3.d.b.x, arg_3.a.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_3.c.a, 19477u, arg_0.b.c.a), vec3<u32>(arg_3.c.a, 1u, arg_3.d.a))).a.b - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_3.c.b, vec2<f32>(arg_3.c.b.x, arg_0.d.b.x), arg_2)) * func_3(vec4<u32>(arg_3.a.a, 10655u, 1352u, arg_0.b.a.a), Struct_1(0u, vec2<f32>(605f, arg_0.b.b.b.x), vec2<i32>(70739i, -2147483647i)), arg_0.b.c.b.x, vec2<i32>(-28360i, 4629i)).b)), arg_3.a.c & vec2<i32>(func_2(arg_3.c.a).x, _wgslsmith_sub_i32(arg_0.d.c.x, -1i))));
    global0 = _wgslsmith_f_op_f32(trunc(arg_0.b.c.b.x));
    global0 = -388f;
    var var_1 = select(u_input.a, ~arg_3.d.a, true);
    let var_2 = reverseBits(vec3<u32>(51675u, arg_3.d.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, 1u), vec2<u32>(var_0.a.a, 10852u))));
    return ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 0u, arg_0.d.a), arg_1, reverseBits(var_2.x), ~arg_0.b.a.a) & min(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 37895u, 0u, 88663u), vec4<u32>(1u, var_0.c.a, u_input.a, 62135u), vec4<u32>(43327u, var_2.x, arg_3.d.a, arg_1)), ~vec4<u32>(0u, var_2.x, 34777u, 0u)), vec4<u32>(var_0.a.a, arg_1, select(1u, 70968u, true), 1u & u_input.a), ~vec4<u32>(arg_0.b.a.a, 22134u, 1u, 4294967295u) ^ vec4<u32>(~80744u, select(48440u, var_2.x, arg_2), reverseBits(var_2.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.d), 26652u, select(u_input.a, 1u, false), 1u)), func_4(Struct_4(vec3<bool>(true, false, true), func_1(Struct_4(vec3<bool>(false, false, true), Struct_2(Struct_1(u_input.a, vec2<f32>(-482f, -1000f), u_input.c.xx), Struct_1(1u, vec2<f32>(613f, -927f), u_input.c.zy), Struct_1(u_input.d.x, vec2<f32>(164f, 1359f), u_input.c.xw)), vec2<i32>(-782i, -2147483647i), Struct_1(u_input.a, vec2<f32>(927f, 165f), u_input.c.yz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1336f, 994f, 1192f)), reverseBits(vec3<u32>(u_input.a, u_input.d.x, 53027u))), -u_input.c.wz, func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(97196u, u_input.d.x, u_input.d.x, 0u), vec4<u32>(u_input.a, 79614u, 810u, u_input.a)), func_1(Struct_4(vec3<bool>(false, false, true), Struct_2(Struct_1(u_input.d.x, vec2<f32>(1820f, -131f), u_input.c.xw), Struct_1(u_input.a, vec2<f32>(-148f, 472f), u_input.c.xx), Struct_1(u_input.d.x, vec2<f32>(1203f, 1355f), u_input.c.ww)), vec2<i32>(u_input.c.x, u_input.b), Struct_1(u_input.d.x, vec2<f32>(527f, 189f), u_input.c.wy)), vec3<f32>(-1878f, -1169f, 1373f), vec3<u32>(u_input.d.x, u_input.a, u_input.a)).c, _wgslsmith_div_f32(-1000f, -557f), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.c.x), u_input.c.xy))), ~1957u, false, Struct_3(func_1(Struct_4(vec3<bool>(true, false, false), Struct_2(Struct_1(50278u, vec2<f32>(-937f, -1889f), vec2<i32>(-58382i, u_input.b)), Struct_1(4294967295u, vec2<f32>(-107f, 451f), vec2<i32>(-13471i, -2147483647i)), Struct_1(1u, vec2<f32>(-677f, -174f), vec2<i32>(u_input.c.x, 39719i))), vec2<i32>(-34561i, u_input.e), Struct_1(76669u, vec2<f32>(1000f, -691f), vec2<i32>(u_input.b, u_input.b))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1039f, 415f, 1000f), vec3<f32>(132f, -1531f, 873f))), vec3<u32>(u_input.d.x, 99542u, u_input.d.x)).c, ~u_input.d.x, Struct_1(u_input.d.x, _wgslsmith_div_vec2_f32(vec2<f32>(443f, -1371f), vec2<f32>(1555f, -1809f)), vec2<i32>(1i, u_input.c.x)), func_1(Struct_4(vec3<bool>(true, true, false), Struct_2(Struct_1(u_input.d.x, vec2<f32>(1755f, 1037f), vec2<i32>(2147483647i, u_input.b)), Struct_1(0u, vec2<f32>(-1034f, 605f), u_input.c.zw), Struct_1(0u, vec2<f32>(-791f, 249f), u_input.c.yz)), u_input.c.xz, Struct_1(54415u, vec2<f32>(-1050f, 615f), vec2<i32>(u_input.e, 0i))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-314f, -1689f, -329f), vec3<f32>(491f, 748f, 207f))), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 29635u))).c)));
    var var_1 = Struct_3(func_3(vec4<u32>(_wgslsmith_mult_u32(~60567u, u_input.a), _wgslsmith_div_u32(select(u_input.a, u_input.d.x, false), var_0.x), var_0.x, 1u), Struct_1(~_wgslsmith_dot_vec3_u32(var_0.yyx, var_0.zyz), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -343f) * vec2<f32>(570f, 1016f)))), ~vec2<i32>(-1i, u_input.b)), _wgslsmith_f_op_f32(max(-1748f, _wgslsmith_f_op_f32(-305f + 611f))), abs(_wgslsmith_add_vec2_i32(u_input.c.wz, u_input.c.yw)) & vec2<i32>(min(u_input.c.x, u_input.b), u_input.b)), 1u, func_3(countOneBits(~(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))), func_1(Struct_4(vec3<bool>(true, true, false), Struct_2(Struct_1(57588u, vec2<f32>(742f, 2000f), u_input.c.zx), Struct_1(u_input.a, vec2<f32>(-580f, 512f), u_input.c.zy), Struct_1(11844u, vec2<f32>(1847f, 1161f), vec2<i32>(u_input.b, u_input.c.x))), select(u_input.c.wx, vec2<i32>(u_input.b, u_input.b), true), func_3(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), Struct_1(0u, vec2<f32>(-901f, -644f), u_input.c.yy), 610f, u_input.c.wy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(482f, 1000f, 159f)))), _wgslsmith_add_vec3_u32(var_0.yyz, _wgslsmith_mod_vec3_u32(var_0.yyx, var_0.xyz))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1115f * _wgslsmith_f_op_f32(max(-766f, -683f))) - _wgslsmith_f_op_f32(round(-598f))), _wgslsmith_sub_vec2_i32((vec2<i32>(-8085i, u_input.c.x) ^ vec2<i32>(2147483647i, 1i)) ^ u_input.c.xw, vec2<i32>(_wgslsmith_mod_i32(u_input.c.x, -23496i), ~u_input.c.x))), Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1885f, -530f), vec2<f32>(-384f, 1151f), vec2<bool>(true, false)))))), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.yz << (var_0.xx % vec2<u32>(32u)), max(vec2<i32>(u_input.b, -23744i), vec2<i32>(0i, u_input.e)))));
    let var_2 = vec3<f32>(var_1.a.b.x, _wgslsmith_div_f32(var_1.c.b.x, var_1.c.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-483f)), -1092f)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_1.c.b.x), _wgslsmith_f_op_f32(-func_3(~vec4<u32>(44122u, 56773u, var_0.x, u_input.a), var_1.d, _wgslsmith_f_op_f32(var_1.a.b.x + var_1.c.b.x), vec2<i32>(var_1.a.c.x, var_1.d.c.x)).b.x))), var_1.d.b.x, _wgslsmith_f_op_f32(-var_2.x));
    var_1 = Struct_3(Struct_1(var_1.a.a, var_1.d.b, u_input.c.zy), min(_wgslsmith_div_u32(~(~27502u), ~(u_input.d.x | 30463u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, u_input.d.x), 1u)), var_1.c, var_1.a);
    let var_4 = Struct_4(vec3<bool>(((u_input.c.x << (var_1.a.a % 32u)) ^ var_1.d.c.x) > _wgslsmith_clamp_i32(var_1.d.c.x << (39081u % 32u), 2147483647i, var_1.c.c.x ^ 37391i), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), any(vec2<bool>(true, false)))), !all(select(vec2<bool>(false, true), vec2<bool>(true, false), false))), func_1(Struct_4(vec3<bool>(true, select(false, true, true), any(vec4<bool>(false, true, false, false))), Struct_2(var_1.a, Struct_1(0u, var_3.xx, u_input.c.xw), func_3(vec4<u32>(0u, var_1.c.a, 36228u, 73219u), var_1.a, var_2.x, var_1.a.c)), var_1.a.c, func_1(Struct_4(vec3<bool>(true, true, true), Struct_2(Struct_1(4033u, var_2.xy, u_input.c.xy), Struct_1(var_1.a.a, vec2<f32>(-1000f, 1284f), vec2<i32>(var_1.d.c.x, 41962i)), Struct_1(var_0.x, var_3.xy, var_1.c.c)), vec2<i32>(u_input.e, 7737i), Struct_1(32351u, var_1.a.b, vec2<i32>(-8436i, 27772i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 151f, var_3.x) * var_3), var_0.yxz).a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3) * vec3<f32>(var_2.x, -774f, var_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_2, var_3)) * _wgslsmith_f_op_vec3_f32(ceil(var_3)))), abs(countOneBits(~var_0.zzz))), vec2<i32>(0i, ~_wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0i, u_input.e, -48331i, var_1.d.c.x)), -1i)), func_1(Struct_4(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), var_1.d.c.x <= 34502i), Struct_2(Struct_1(var_1.c.a, vec2<f32>(1000f, -499f), u_input.c.xw), func_3(vec4<u32>(var_1.a.a, 1u, 34419u, 0u), Struct_1(var_1.b, var_2.xx, vec2<i32>(var_1.c.c.x, u_input.e)), -622f, var_1.a.c), func_1(Struct_4(vec3<bool>(false, false, false), Struct_2(Struct_1(var_1.a.a, var_2.xz, var_1.a.c), Struct_1(4294967295u, var_2.zx, var_1.d.c), Struct_1(var_0.x, var_2.yx, vec2<i32>(24114i, u_input.e))), vec2<i32>(var_1.c.c.x, u_input.c.x), Struct_1(56077u, vec2<f32>(var_3.x, 635f), vec2<i32>(-20987i, var_1.a.c.x))), var_3, vec3<u32>(u_input.a, u_input.a, 1u)).b), select(vec2<i32>(u_input.c.x, var_1.a.c.x), ~vec2<i32>(2147483647i, 0i), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), var_1.a), _wgslsmith_f_op_vec3_f32(floor(var_3)), ~var_0.wxy).a);
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(-232f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b.x * var_4.d.b.x))), _wgslsmith_f_op_f32(round(func_3(~vec4<u32>(18323u, 19265u, 8016u, var_1.b), Struct_1(min(var_4.d.a, 29503u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_1.a.b.x)), var_1.a.c), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-253f, var_4.d.b.x), var_2.x, true)), -(~vec2<i32>(u_input.b, var_1.d.c.x))).b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x + var_3.x), var_1.d.b.x, !var_4.a.x)) - var_3.x))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -249f)))), 122f)), select(countOneBits(_wgslsmith_div_vec3_u32(var_0.xyw, vec3<u32>(var_0.x, var_1.c.a, 0u) | var_0.zyz)), vec3<u32>(var_4.d.a, 4294967295u, var_1.d.a), !vec3<bool>(true, select(var_4.a.x, var_4.a.x, var_4.a.x), true)));
}

