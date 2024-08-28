struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, false), vec2<i32>(23620i, -2958i)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, false), vec2<i32>(6363i, 1i))), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(true, true), vec2<i32>(0i, -29869i)), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, false), vec2<i32>(0i, 14503i))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, false), vec2<i32>(0i, -1i)), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec2<i32>(24604i, -1i))), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, true), vec2<i32>(32305i, 8078i)), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(false, true), vec2<i32>(-26851i, 0i))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, false), vec2<i32>(-47159i, -25859i)), Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, false), vec2<i32>(-37458i, 1i))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, true), vec2<i32>(-3677i, -53546i)), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec2<i32>(43696i, 1i))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, true), vec2<i32>(36884i, 4639i)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, true), vec2<i32>(67012i, -12280i))), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(false, true), vec2<i32>(-1i, -1i))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, false), vec2<i32>(-1i, -25678i)), Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(true, true), vec2<i32>(-34i, -1i))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec2<i32>(0i, -12824i)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(true, true), vec2<i32>(2050i, i32(-2147483648)))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, false), vec2<i32>(-6535i, 0i)), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(true, false), vec2<i32>(30778i, -27158i))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, false), vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(false, false), vec2<i32>(55506i, 2147483647i)), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(true, false), vec2<i32>(1i, 10033i))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec2<i32>(-17300i, 15215i)), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 1i))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec2<i32>(2147483647i, 11594i)), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec2<i32>(0i, i32(-2147483648)))), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, false), vec2<i32>(1i, 2147483647i)), Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(true, true), vec2<i32>(-36779i, -31176i))), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(true, true), vec2<i32>(1i, 2147483647i)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, false), vec2<i32>(1i, -1i))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, false), vec2<i32>(-1i, 1i))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, false), vec2<i32>(-1i, -40139i)), Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec2<i32>(-22621i, i32(-2147483648)))), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, true), vec2<i32>(-41973i, 37389i)), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, true), vec2<i32>(7306i, -1i))), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, false), vec2<i32>(15820i, -22803i)), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(true, false), vec2<i32>(0i, -39277i))), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, false), vec2<i32>(0i, 2147483647i)), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, false), vec2<i32>(16305i, 1i))), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, true), vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, false), vec2<i32>(-11748i, 8740i))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, false), vec2<i32>(1i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), i32(-2147483648)))));

var<private> global1: u32;

var<private> global2: Struct_3 = Struct_3(vec3<u32>(1u, 1u, 0u), vec3<u32>(1512u, 0u, 4294967295u), -538f, vec4<f32>(1628f, 1375f, 1049f, -594f), vec3<i32>(15744i, 2147483647i, 19297i));

var<private> global3: array<vec3<f32>, 11>;

var<private> global4: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-1258f, -144f, -1571f, 1211f), vec4<f32>(-926f, 2026f, 369f, 527f), vec4<f32>(-1000f, -2944f, 192f, -401f), vec4<f32>(333f, -928f, -984f, -1746f), vec4<f32>(-171f, 1000f, 430f, 1455f), vec4<f32>(733f, 519f, 474f, -924f), vec4<f32>(1055f, -559f, -2177f, 1570f), vec4<f32>(-1771f, -2809f, 1013f, -822f), vec4<f32>(1215f, -100f, 1297f, -1884f), vec4<f32>(-1288f, -118f, -312f, 1000f), vec4<f32>(-1088f, -547f, 2657f, -200f), vec4<f32>(195f, -586f, 214f, -1000f), vec4<f32>(993f, 2198f, 492f, -1616f), vec4<f32>(692f, 2387f, 1000f, 2843f), vec4<f32>(-128f, -1224f, 1046f, 850f), vec4<f32>(1412f, -697f, -815f, 235f), vec4<f32>(1338f, 1000f, 513f, -518f), vec4<f32>(-961f, 187f, 953f, -2674f), vec4<f32>(-698f, -539f, 229f, -486f), vec4<f32>(-1378f, -259f, 396f, -523f), vec4<f32>(1740f, 1489f, -443f, -1000f), vec4<f32>(1632f, -313f, 1173f, 1624f), vec4<f32>(193f, 310f, 357f, 1315f), vec4<f32>(-1000f, 387f, -497f, 758f), vec4<f32>(735f, 368f, -453f, -200f), vec4<f32>(841f, -1055f, -502f, 366f), vec4<f32>(-1521f, -993f, 888f, -461f), vec4<f32>(-2992f, 305f, 656f, 396f), vec4<f32>(125f, 105f, 1000f, -382f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3) -> vec2<bool> {
    global1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(abs(0u), countOneBits(arg_1.b.a.x), ~arg_2.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, arg_2.b.x), vec3<u32>(arg_1.b.b.x, 12522u, 14372u))), vec4<u32>(u_input.c, min(~arg_2.b.x, arg_1.b.a.x), abs(0u) | arg_1.b.a.x, global2.b.x)) & ~_wgslsmith_add_u32(48498u, _wgslsmith_div_u32(arg_1.b.a.x, firstLeadingBit(36321u)));
    let var_0 = arg_1;
    let var_1 = vec4<bool>(true, true, any(select(vec3<bool>(any(vec2<bool>(false, false)), true, -205f == arg_2.c), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), true), _wgslsmith_f_op_f32(global2.c + global2.d.x) > _wgslsmith_f_op_f32(-var_0.b.c))), ((_wgslsmith_f_op_f32(-arg_2.c) != 668f) || any(vec2<bool>(true, true))) || true);
    global3 = array<vec3<f32>, 11>();
    var var_2 = global2.c;
    return vec2<bool>(!any(vec3<bool>(var_1.x, all(vec2<bool>(var_1.x, var_1.x)), var_1.x)), var_1.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = u_input.d.x;
    var var_1 = Struct_2(Struct_1(vec4<bool>(false, arg_1, true, true), arg_2.b.b, u_input.d), Struct_1(vec4<bool>(arg_2.b.a.x, -var_0 <= -1i, u_input.c < (0u >> (1u % 32u)), true), func_3(~min(u_input.a, var_0), Struct_4(firstLeadingBit(global2.e), Struct_3(global2.a, global2.b, 864f, global2.d, vec3<i32>(arg_3.c.x, arg_2.a.c.x, arg_2.a.c.x))), Struct_3(vec3<u32>(4294967295u, u_input.b, 1u), ~vec3<u32>(1u, 0u, global2.b.x), _wgslsmith_div_f32(-1053f, 445f), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 1000f, -115f, 1351f), vec4<f32>(-453f, -1157f, -542f, global2.c)), vec3<i32>(11557i, arg_3.c.x, var_0) << (global2.b % vec3<u32>(32u)))), ~vec2<i32>(25677i, 41529i) & vec2<i32>(abs(-1i), abs(arg_3.c.x))));
    let var_2 = vec2<bool>(true, true);
    let var_3 = !(!var_2);
    var var_4 = true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1285f))))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - 246f)))));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    global4 = array<vec4<f32>, 29>();
    var var_0 = global2.e.xz;
    global0 = array<Struct_2, 24>();
    global2 = Struct_3(~(_wgslsmith_clamp_vec3_u32(global2.b, vec3<u32>(global2.b.x, 0u, global2.a.x), ~vec3<u32>(57973u, global2.b.x, global2.b.x)) >> (firstLeadingBit(global2.a) % vec3<u32>(32u))), ~global2.b, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.d.zw + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(309f, -560f)))) + global2.d.wz), true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global2.b & global2.a, _wgslsmith_mod_vec3_u32(vec3<u32>(global2.b.x, 12271u, 0u), global2.a)), firstLeadingBit(~u_input.c)), 24u)], Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(false, false, true, false)), select(func_3(var_0.x, Struct_4(vec3<i32>(global2.e.x, -1i, -2147483647i), Struct_3(vec3<u32>(1u, u_input.b, 1u), global2.b, 651f, vec4<f32>(-1494f, arg_0, arg_0, arg_0), vec3<i32>(u_input.d.x, -2147483647i, u_input.d.x))), Struct_3(vec3<u32>(1u, 34579u, 45423u), vec3<u32>(u_input.b, global2.a.x, global2.b.x), global2.c, vec4<f32>(1240f, -650f, arg_0, arg_0), vec3<i32>(var_0.x, -2147483647i, -2841i))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), vec2<i32>(u_input.a, -85348i)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-651f, -791f), 1317f, true)), -434f, global2.d.x) - _wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(u_input.b, 29u)] + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.d * vec4<f32>(-590f, arg_0, 311f, -447f)) * global4[_wgslsmith_index_u32(u_input.b, 29u)]))), ~vec3<i32>(2147483647i, var_0.x, _wgslsmith_mult_i32(-2147483647i, 43681i ^ global2.e.x)));
    global0 = array<Struct_2, 24>();
    return ~((vec4<i32>(6369i, -global2.e.x, abs(-116i), firstLeadingBit(global2.e.x)) | ~_wgslsmith_mod_vec4_i32(vec4<i32>(global2.e.x, 38852i, -24887i, 28442i), vec4<i32>(6026i, -34399i, 13389i, -8188i))) | select(vec4<i32>(_wgslsmith_sub_i32(u_input.a, 50655i), _wgslsmith_dot_vec3_i32(global2.e, global2.e), ~var_0.x, 0i), max(max(vec4<i32>(-2114i, 418i, 1i, -2147483647i), vec4<i32>(-41539i, var_0.x, 48193i, -4821i)), countOneBits(vec4<i32>(u_input.d.x, u_input.d.x, u_input.a, -23757i))), select(all(vec3<bool>(false, true, true)), true, true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_4) -> Struct_3 {
    var var_0 = func_2(-1000f);
    let var_1 = global2.b.x;
    let var_2 = false;
    var var_3 = Struct_3(vec3<u32>(4294967295u, ~arg_1.b.b.x, abs(0u)), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.b, global2.b.x), 1u), vec2<u32>(3206u, 1u) | max(arg_1.b.b.xz, vec2<u32>(0u, 1u))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~71874u, arg_0.x), _wgslsmith_clamp_u32(u_input.b & global2.a.x, global2.b.x, 63034u))), global2.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global2.c + 249f), _wgslsmith_f_op_f32(trunc(arg_1.b.c)), global2.c, _wgslsmith_f_op_f32(sign(-261f))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(~37911u, 29u)] + _wgslsmith_f_op_vec4_f32(global2.d + vec4<f32>(-1000f, 1000f, 1312f, global2.c)))))), _wgslsmith_add_vec3_i32(var_0.zzz, vec3<i32>(-1i, -abs(u_input.d.x), -1i)));
    return Struct_3(arg_0, vec3<u32>(4294967295u, 14411u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.b.b.x, global2.b.x), ~arg_0.xz), ~vec2<u32>(var_3.b.x, 16414u))), _wgslsmith_f_op_f32(ceil(785f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, var_3.d.x, _wgslsmith_f_op_f32(arg_1.b.c * 166f), 878f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(global4[_wgslsmith_index_u32(arg_1.b.a.x, 29u)], arg_1.b.d))))), vec4<f32>(540f, -1279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-444f * var_3.c) + _wgslsmith_div_f32(-2101f, arg_1.b.c)), global2.c))), ~(vec3<i32>(u_input.a & var_3.e.x, _wgslsmith_clamp_i32(0i, 1i, -62469i), -1138i) | vec3<i32>(global2.e.x, -1i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 51513u;
    global3 = array<vec3<f32>, 11>();
    let var_1 = 1u;
    var var_2 = vec4<i32>(-10401i, reverseBits(u_input.d.x), abs(2147483647i), _wgslsmith_add_i32(u_input.a, 1i) | -(~abs(-1i)));
    var var_3 = abs(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(1i, -18085i), min(vec2<i32>(-3933i, 4526i), -vec2<i32>(21830i, u_input.d.x)), true), vec2<i32>(-1i << (global2.a.x % 32u), u_input.d.x), vec2<i32>(_wgslsmith_div_i32(var_2.x, global2.e.x), -var_2.x) >> (~_wgslsmith_mod_vec2_u32(global2.a.yy, global2.a.yx) % vec2<u32>(32u))));
    var var_4 = func_1(vec3<u32>(select(u_input.c, ~global2.b.x, true), ~38580u, ~_wgslsmith_sub_u32(0u, u_input.b) << (((var_1 | 4294967295u) ^ ~1u) % 32u)), Struct_4(countOneBits(reverseBits(reverseBits(vec3<i32>(u_input.d.x, global2.e.x, -9456i)))), Struct_3(~global2.a, (vec3<u32>(var_1, u_input.b, 4294967295u) ^ global2.a) | global2.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c, 448f) + global2.d.x), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, countOneBits(u_input.c)), 29u)], vec3<i32>(global2.e.x, global2.e.x, ~0i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstTrailingBit(~54262i), min(-1i, _wgslsmith_add_i32(-1i, -2147483647i)) ^ firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(7991i, var_4.e.x), vec2<i32>(var_3.x, -2147483647i)))), -581f, var_4.d);
}

