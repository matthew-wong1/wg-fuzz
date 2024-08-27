struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1232f;

var<private> global1: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_1(0u, vec3<f32>(-108f, 148f, 1599f), vec2<i32>(-1i, 2631i))), Struct_3(Struct_1(1u, vec3<f32>(486f, -790f, 591f), vec2<i32>(1i, -46460i))), Struct_3(Struct_1(0u, vec3<f32>(625f, -238f, 731f), vec2<i32>(-1i, 6813i))), Struct_3(Struct_1(0u, vec3<f32>(1194f, 342f, 905f), vec2<i32>(1i, 26905i))), Struct_3(Struct_1(4294967295u, vec3<f32>(-1194f, -1440f, 1305f), vec2<i32>(-13771i, 48712i))), Struct_3(Struct_1(1u, vec3<f32>(141f, -577f, 316f), vec2<i32>(i32(-2147483648), 67396i))), Struct_3(Struct_1(4294967295u, vec3<f32>(-413f, -753f, -990f), vec2<i32>(2147483647i, -1i))), Struct_3(Struct_1(27162u, vec3<f32>(-372f, -663f, 654f), vec2<i32>(0i, 9057i))), Struct_3(Struct_1(0u, vec3<f32>(-500f, 373f, 909f), vec2<i32>(1i, -1i))), Struct_3(Struct_1(1u, vec3<f32>(510f, 1389f, -791f), vec2<i32>(-3522i, 2147483647i))), Struct_3(Struct_1(48254u, vec3<f32>(253f, 1828f, -1000f), vec2<i32>(12280i, 2147483647i))), Struct_3(Struct_1(47982u, vec3<f32>(1000f, -268f, -1202f), vec2<i32>(0i, i32(-2147483648)))), Struct_3(Struct_1(4294967295u, vec3<f32>(-789f, 572f, -746f), vec2<i32>(1i, -7674i))), Struct_3(Struct_1(4294967295u, vec3<f32>(-1052f, 653f, 1000f), vec2<i32>(1i, -17080i))), Struct_3(Struct_1(4294967295u, vec3<f32>(146f, -2355f, 693f), vec2<i32>(0i, i32(-2147483648)))), Struct_3(Struct_1(42137u, vec3<f32>(704f, -650f, -403f), vec2<i32>(7837i, -1i))), Struct_3(Struct_1(7308u, vec3<f32>(-390f, -2033f, -464f), vec2<i32>(-1i, -1i))), Struct_3(Struct_1(4294967295u, vec3<f32>(1071f, -208f, -2107f), vec2<i32>(1i, 2147483647i))), Struct_3(Struct_1(86171u, vec3<f32>(2201f, -1014f, 423f), vec2<i32>(-1048i, -22447i))), Struct_3(Struct_1(7563u, vec3<f32>(2270f, -633f, 599f), vec2<i32>(2147483647i, 34350i))), Struct_3(Struct_1(4294967295u, vec3<f32>(639f, 925f, -904f), vec2<i32>(i32(-2147483648), -1i))), Struct_3(Struct_1(35656u, vec3<f32>(1575f, -1533f, 1033f), vec2<i32>(0i, -1i))), Struct_3(Struct_1(50408u, vec3<f32>(1084f, -1760f, -1133f), vec2<i32>(i32(-2147483648), 14124i))), Struct_3(Struct_1(42056u, vec3<f32>(-1240f, 1012f, -1341f), vec2<i32>(-1i, 1i))), Struct_3(Struct_1(1u, vec3<f32>(-2225f, 567f, -1301f), vec2<i32>(30869i, 2147483647i))), Struct_3(Struct_1(1u, vec3<f32>(-104f, 638f, -1000f), vec2<i32>(67325i, -317i))), Struct_3(Struct_1(14907u, vec3<f32>(857f, 332f, 489f), vec2<i32>(-43947i, 2147483647i))), Struct_3(Struct_1(19318u, vec3<f32>(-1416f, 655f, -260f), vec2<i32>(i32(-2147483648), 1i))), Struct_3(Struct_1(38959u, vec3<f32>(-2721f, -898f, -1000f), vec2<i32>(1i, 1i))), Struct_3(Struct_1(4429u, vec3<f32>(-1820f, 1986f, 1392f), vec2<i32>(0i, 0i))), Struct_3(Struct_1(1u, vec3<f32>(462f, -1579f, 1000f), vec2<i32>(-36327i, -27677i))));

var<private> global2: u32 = 25530u;

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_1(32254u, vec3<f32>(939f, 1732f, -1000f), vec2<i32>(45820i, 9091i))), Struct_3(Struct_1(78430u, vec3<f32>(-676f, -214f, -1000f), vec2<i32>(-32448i, 54816i))), Struct_3(Struct_1(14836u, vec3<f32>(1000f, -258f, -633f), vec2<i32>(-49236i, -47161i))), Struct_3(Struct_1(62218u, vec3<f32>(-345f, -506f, -1228f), vec2<i32>(i32(-2147483648), -1i))), Struct_3(Struct_1(1u, vec3<f32>(1303f, 278f, 292f), vec2<i32>(1i, 50314i))), Struct_3(Struct_1(7349u, vec3<f32>(626f, 1000f, 611f), vec2<i32>(0i, 31389i))), Struct_3(Struct_1(1u, vec3<f32>(-966f, -103f, -241f), vec2<i32>(1i, 2147483647i))), Struct_3(Struct_1(1u, vec3<f32>(-1579f, 935f, -1000f), vec2<i32>(-20589i, 36893i))), Struct_3(Struct_1(1u, vec3<f32>(1030f, -1843f, -1473f), vec2<i32>(1i, 24251i))), Struct_3(Struct_1(16387u, vec3<f32>(-1180f, 1021f, 199f), vec2<i32>(17120i, 2147483647i))), Struct_3(Struct_1(53445u, vec3<f32>(-1811f, 847f, 1412f), vec2<i32>(1i, 2147483647i))), Struct_3(Struct_1(45426u, vec3<f32>(-1752f, 623f, 3668f), vec2<i32>(2147483647i, -59224i))), Struct_3(Struct_1(1u, vec3<f32>(231f, 1393f, -443f), vec2<i32>(1510i, 0i))), Struct_3(Struct_1(0u, vec3<f32>(934f, -485f, 1000f), vec2<i32>(598i, 2147483647i))), Struct_3(Struct_1(47243u, vec3<f32>(-935f, -662f, 1000f), vec2<i32>(2147483647i, -61801i))), Struct_3(Struct_1(29131u, vec3<f32>(-2077f, -598f, 1496f), vec2<i32>(48285i, 1i))), Struct_3(Struct_1(11545u, vec3<f32>(291f, -1226f, -801f), vec2<i32>(-1i, 24122i))), Struct_3(Struct_1(16454u, vec3<f32>(861f, -1823f, 1444f), vec2<i32>(-10748i, -20980i))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_1(27588u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2756f, -1343f, -374f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1018f, -512f, 293f))))), reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(-7547i, -1i), abs(vec2<i32>(24176i, -1i))))));
    let var_1 = global3.x;
    var var_2 = _wgslsmith_add_u32(u_input.b.x, u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x * var_0.a.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1326f, -413f))))));
    global1 = array<Struct_3, 31>();
    return Struct_1(var_0.a.a, var_0.a.b, var_0.a.c);
}

fn func_3() -> vec3<u32> {
    var var_0 = vec3<i32>(~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(-1i, -1i), 1i), -(i32(-1i) * -32561i)), ~(-15015i), _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-36437i, 34935i, -2230i))), _wgslsmith_mult_i32(33783i, i32(-1i) * -1i)));
    global0 = -834f;
    let var_1 = true;
    global3 = select(!select(!vec3<bool>(false, var_1, true), select(vec3<bool>(global3.x, false, global3.x), !vec3<bool>(global3.x, false, var_1), true), vec3<bool>(true, global3.x | true, !var_1)), vec3<bool>(var_1, !(!var_1), !global3.x), global3.x);
    var var_2 = vec2<i32>(-func_2().c.x, 50193i);
    return u_input.a.zzw;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<u32>) -> f32 {
    var var_0 = func_2();
    global2 = _wgslsmith_clamp_u32(~(var_0.a >> (~33813u % 32u)), ~(~(~(~arg_2.x))), ~min(15522u, arg_2.x));
    global2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(func_3(), _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.a, u_input.b.x, 29441u), ~_wgslsmith_add_vec3_u32(u_input.a.xwz, vec3<u32>(0u, 4294967295u, arg_2.x)))), ~(~_wgslsmith_sub_u32(arg_2.x, ~u_input.b.x)));
    var var_1 = arg_1;
    global4 = array<Struct_3, 18>();
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<f32>(1f, 1f), true, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-941f, -176f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(610f))))));
    let var_0 = Struct_2(Struct_1(min(1u, ~u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(558f, 1250f, -1618f), vec3<f32>(-639f, 340f, 250f))))), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(1i, 1i) << (u_input.b % vec2<u32>(32u)))), i32(-1i) * -1i, vec2<bool>(!(!any(vec4<bool>(global3.x, true, global3.x, global3.x))), global3.x), false, Struct_1(u_input.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1543f, 224f, -514f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1881f, 1387f, 994f))), !vec3<bool>(false, true, global3.x))), vec3<f32>(_wgslsmith_f_op_f32(-1662f * 821f), _wgslsmith_f_op_f32(343f - -161f), _wgslsmith_f_op_f32(1409f + -741f))), select(vec2<i32>(~10728i, 0i >> (1u % 32u)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 32643i), vec2<i32>(11621i, 16066i)), true)));
    global3 = !vec3<bool>(var_0.a.a <= u_input.a.x, var_0.d || true, _wgslsmith_div_i32(_wgslsmith_mult_i32(-6640i, var_0.e.c.x), var_0.b) <= _wgslsmith_mod_i32(var_0.e.c.x, var_0.a.c.x << (4294967295u % 32u)));
    let var_1 = vec4<bool>(false, false, global3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(211f, var_0.a.b.x)))))) > var_0.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.a.c.x, -2147483647i, max(var_0.b, var_0.b)), firstLeadingBit(select(vec3<i32>(-11902i, -37705i, var_0.e.c.x), vec3<i32>(var_0.b, 1i, 2147483647i), false) & ~vec3<i32>(-2147483647i, var_0.a.c.x, -2147483647i))), u_input.a.x, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1115f * var_0.a.b.x)));
}

