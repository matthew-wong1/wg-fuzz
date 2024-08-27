struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(true, Struct_2(false, Struct_1(vec4<u32>(1u, 18609u, 1u, 4294967295u), -433f, vec2<i32>(-2217i, 28377i), vec2<u32>(20535u, 34483u), vec2<bool>(false, true)), Struct_1(vec4<u32>(28074u, 1u, 69185u, 4294967295u), 782f, vec2<i32>(-3101i, 0i), vec2<u32>(4294967295u, 35630u), vec2<bool>(false, true)), Struct_1(vec4<u32>(51486u, 1u, 1u, 20255u), -582f, vec2<i32>(-56329i, 2147483647i), vec2<u32>(54954u, 0u), vec2<bool>(false, true))), 12543u, Struct_1(vec4<u32>(4294967295u, 19329u, 1u, 49822u), 1013f, vec2<i32>(-14400i, 28071i), vec2<u32>(44737u, 4294967295u), vec2<bool>(true, false)), vec3<u32>(1u, 12461u, 4294967295u)), Struct_3(true, Struct_2(false, Struct_1(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), -1920f, vec2<i32>(-20302i, 1i), vec2<u32>(1649u, 95512u), vec2<bool>(true, true)), Struct_1(vec4<u32>(1u, 0u, 0u, 21242u), 1341f, vec2<i32>(24087i, 1i), vec2<u32>(44479u, 55595u), vec2<bool>(true, true)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 62382u), 658f, vec2<i32>(-37292i, -37000i), vec2<u32>(34250u, 48111u), vec2<bool>(true, true))), 25177u, Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 42090u), -461f, vec2<i32>(-20079i, 2147483647i), vec2<u32>(0u, 0u), vec2<bool>(false, true)), vec3<u32>(11204u, 4294967295u, 4294967295u)), Struct_3(true, Struct_2(true, Struct_1(vec4<u32>(19332u, 1u, 42887u, 0u), 1101f, vec2<i32>(-39300i, -1i), vec2<u32>(52478u, 49175u), vec2<bool>(false, true)), Struct_1(vec4<u32>(4294967295u, 1u, 10870u, 75641u), -152f, vec2<i32>(-61328i, i32(-2147483648)), vec2<u32>(1u, 0u), vec2<bool>(true, true)), Struct_1(vec4<u32>(1u, 102659u, 0u, 21477u), 2099f, vec2<i32>(24462i, -6244i), vec2<u32>(31960u, 1u), vec2<bool>(false, true))), 0u, Struct_1(vec4<u32>(4294967295u, 129202u, 1u, 28374u), -112f, vec2<i32>(35025i, 1i), vec2<u32>(38769u, 1u), vec2<bool>(true, true)), vec3<u32>(49430u, 25997u, 1u)), Struct_3(false, Struct_2(false, Struct_1(vec4<u32>(4294967295u, 4294967295u, 49000u, 1u), -680f, vec2<i32>(-18452i, 4803i), vec2<u32>(12066u, 5275u), vec2<bool>(false, false)), Struct_1(vec4<u32>(38211u, 1u, 30592u, 12771u), -1399f, vec2<i32>(2147483647i, 1i), vec2<u32>(93391u, 1u), vec2<bool>(false, false)), Struct_1(vec4<u32>(139204u, 37377u, 19751u, 27158u), -135f, vec2<i32>(-35138i, 741i), vec2<u32>(0u, 4294967295u), vec2<bool>(true, false))), 0u, Struct_1(vec4<u32>(0u, 1u, 4294967295u, 1u), 1000f, vec2<i32>(12241i, -37241i), vec2<u32>(23454u, 30697u), vec2<bool>(false, true)), vec3<u32>(4294967295u, 69121u, 90112u)), Struct_3(true, Struct_2(true, Struct_1(vec4<u32>(28332u, 4294967295u, 4294967295u, 462u), -677f, vec2<i32>(i32(-2147483648), 70336i), vec2<u32>(25137u, 1u), vec2<bool>(false, true)), Struct_1(vec4<u32>(8202u, 4294967295u, 1u, 15435u), 467f, vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(1u, 35886u), vec2<bool>(true, false)), Struct_1(vec4<u32>(68890u, 1u, 54512u, 4294967295u), 1000f, vec2<i32>(i32(-2147483648), 2147483647i), vec2<u32>(8188u, 73910u), vec2<bool>(true, false))), 63831u, Struct_1(vec4<u32>(4294967295u, 12570u, 4294967295u, 38065u), -1740f, vec2<i32>(23146i, i32(-2147483648)), vec2<u32>(1u, 61118u), vec2<bool>(true, true)), vec3<u32>(0u, 55690u, 3809u)));

var<private> global1: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(vec4<f32>(1640f, -1467f, 570f, 1035f)), Struct_5(vec4<f32>(-730f, -640f, 2271f, 1363f)), Struct_5(vec4<f32>(-283f, -1000f, -2262f, -680f)), Struct_5(vec4<f32>(668f, 1422f, 925f, 1587f)), Struct_5(vec4<f32>(-350f, 576f, 1747f, -488f)), Struct_5(vec4<f32>(-1489f, 1922f, 322f, 549f)));

var<private> global2: Struct_1;

var<private> global3: array<i32, 20>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: i32) -> u32 {
    let var_0 = arg_1.a.e.x;
    let var_1 = Struct_2(true, Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.b.x, arg_1.c.d.x), 59565u | u_input.c.x, ~u_input.b.x, 4294967295u), global2.a, _wgslsmith_mult_vec4_u32(select(global2.a, vec4<u32>(global2.d.x, u_input.c.x, global2.d.x, 1u), var_0), _wgslsmith_div_vec4_u32(vec4<u32>(8123u, 4294967295u, 70935u, arg_1.c.a.x), vec4<u32>(1u, 6291u, u_input.b.x, global2.d.x)))), _wgslsmith_f_op_f32(-global2.b), ~_wgslsmith_mult_vec2_i32(arg_1.a.c, reverseBits(vec2<i32>(arg_1.a.c.x, global3[_wgslsmith_index_u32(global2.d.x, 20u)]))), ~(~arg_1.b.d.a.xz) & _wgslsmith_mod_vec2_u32(arg_1.b.d.a.wx, vec2<u32>(arg_1.a.d.x, 92589u)), !vec2<bool>(false, all(vec4<bool>(var_0, global2.e.x, arg_1.b.b.a, global2.e.x)))), arg_1.c, arg_1.b.d);
    var var_2 = var_1;
    var var_3 = var_2.d.a >> (~arg_1.c.a % vec4<u32>(32u));
    let var_4 = Struct_4(Struct_1(vec4<u32>(arg_1.a.d.x >> (~484u % 32u), ~abs(global2.d.x), var_3.x, abs(_wgslsmith_add_u32(4294967295u, 0u))), _wgslsmith_div_f32(arg_0.x, var_2.c.b), var_1.c.c ^ abs(_wgslsmith_clamp_vec2_i32(var_1.c.c, vec2<i32>(-1i, -1566i), vec2<i32>(var_2.d.c.x, 2147483647i))), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.c.x, u_input.b.x, global2.d.x)), _wgslsmith_sub_u32(24442u, var_1.b.d.x), var_1.d.d.x), arg_1.b.e.x), !select(vec2<bool>(true, true), var_2.d.e, false)), arg_1.b, arg_1.b.b.d);
    return 1u;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>) -> u32 {
    var var_0 = true;
    let var_1 = Struct_4(Struct_1(vec4<u32>(max(select(1521u, u_input.c.x, true), ~global2.a.x), max(u_input.b.x ^ 1u, ~global2.a.x), _wgslsmith_clamp_u32(arg_0.x | 4294967295u, ~global2.d.x, arg_0.x), u_input.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(8746u, u_input.b.x, u_input.c.x, 1u), vec4<u32>(1u, u_input.c.x, u_input.b.x, 0u)) % 32u)), 212f, -vec2<i32>(1i, 0i), u_input.c, vec2<bool>(func_3(vec4<f32>(-132f, global2.b, -996f, global2.b), Struct_4(Struct_1(global2.a, 746f, vec2<i32>(global3[_wgslsmith_index_u32(0u, 20u)], 2147483647i), global2.d, vec2<bool>(global2.e.x, global2.e.x)), Struct_3(true, Struct_2(global2.e.x, Struct_1(arg_0, 236f, vec2<i32>(42350i, arg_1.x), vec2<u32>(global2.d.x, u_input.b.x), vec2<bool>(true, global2.e.x)), Struct_1(vec4<u32>(u_input.b.x, global2.a.x, 4294967295u, 47304u), -1000f, vec2<i32>(u_input.a, 19582i), vec2<u32>(u_input.b.x, arg_0.x), global2.e), Struct_1(global2.a, -920f, vec2<i32>(2147483647i, arg_1.x), vec2<u32>(18639u, u_input.b.x), global2.e)), 0u, Struct_1(arg_0, 1399f, arg_1.yx, vec2<u32>(14003u, 2235u), global2.e), vec3<u32>(arg_0.x, u_input.b.x, arg_0.x)), Struct_1(global2.a, global2.b, arg_1.wx, arg_0.wy, global2.e)), 0i) >= ~19173u, all(!vec3<bool>(false, global2.e.x, true)))), global0[_wgslsmith_index_u32(~1u, 5u)], Struct_1(~global2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-143f)))), arg_1.xy, firstTrailingBit(_wgslsmith_div_vec2_u32(global2.d, u_input.b.zz)), !vec2<bool>(!global2.e.x, true)));
    return _wgslsmith_div_u32(~arg_0.x, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.a.a.x, arg_0.x), vec3<u32>(108349u, arg_0.x, 21270u))) << (~(~(~19085u)) % 32u));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = global2.b;
    global3 = array<i32, 20>();
    let var_1 = _wgslsmith_clamp_u32(15330u & _wgslsmith_add_u32(35322u, global2.d.x >> (global2.a.x % 32u)), _wgslsmith_add_u32(u_input.c.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x) >> (firstTrailingBit(func_2(vec4<u32>(1u, u_input.b.x, u_input.c.x, global2.a.x), vec4<i32>(-1i, 17062i, 20764i, -1i))) % 32u)), _wgslsmith_div_u32(~1u, ~0u));
    return Struct_1(firstTrailingBit(vec4<u32>(4294967295u, global2.d.x, ~global2.d.x, 4294967295u)), 2435f, vec2<i32>(1i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(19040i, 39298i, u_input.a), vec3<i32>(-2147483647i, u_input.a, 0i)), global2.c.x ^ global2.c.x)), vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(global2.a, global2.a)), _wgslsmith_mult_u32(global2.a.x, 115677u) | min(105186u, var_1)) & vec2<u32>(firstLeadingBit(1u), func_2(vec4<u32>(0u, 0u, 25197u, 1u), vec4<i32>(u_input.d, global2.c.x, -1i, -8368i))), vec2<bool>(true, any(select(select(arg_0, vec2<bool>(global2.e.x, false), global2.e), !arg_1.xw, !vec2<bool>(arg_1.x, arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(global2.e, !vec4<bool>(!global2.e.x, true, true | global2.e.x, global2.e.x));
    let var_0 = func_1(select(global2.e, select(vec2<bool>(true, global2.a.x <= 4294967295u), vec2<bool>(true, global2.e.x), all(select(vec4<bool>(false, global2.e.x, true, true), vec4<bool>(true, global2.e.x, global2.e.x, true), global2.e.x))), global2.e), select(vec4<bool>(func_1(global2.e, vec4<bool>(global2.e.x, global2.e.x, global2.e.x, global2.e.x)).e.x && !global2.e.x, global2.c.x == _wgslsmith_add_i32(-1i, global3[_wgslsmith_index_u32(1u, 20u)]), all(select(vec4<bool>(false, global2.e.x, global2.e.x, global2.e.x), vec4<bool>(global2.e.x, true, global2.e.x, global2.e.x), vec4<bool>(global2.e.x, global2.e.x, global2.e.x, global2.e.x))), true), vec4<bool>(false, global2.e.x, global2.e.x, all(select(vec4<bool>(global2.e.x, global2.e.x, global2.e.x, true), vec4<bool>(true, true, false, global2.e.x), vec4<bool>(true, false, false, global2.e.x)))), select(!select(vec4<bool>(true, global2.e.x, false, true), vec4<bool>(true, global2.e.x, false, global2.e.x), global2.e.x), vec4<bool>(!global2.e.x, true && global2.e.x, !global2.e.x, true), all(vec3<bool>(false, global2.e.x, global2.e.x))))).c.x;
    global1 = array<Struct_5, 6>();
    let var_1 = global1[_wgslsmith_index_u32(global2.d.x, 6u)];
    var var_2 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(var_1.a.xzw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))));
}

