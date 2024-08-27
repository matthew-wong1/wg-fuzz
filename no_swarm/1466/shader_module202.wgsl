struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(vec4<bool>(false, false, true, false), Struct_2(-1119f)), Struct_4(vec4<bool>(true, false, true, false), Struct_2(810f)), Struct_4(vec4<bool>(false, true, true, false), Struct_2(-545f)), Struct_4(vec4<bool>(false, false, true, false), Struct_2(-430f)), Struct_4(vec4<bool>(true, true, false, false), Struct_2(208f)), Struct_4(vec4<bool>(false, true, true, true), Struct_2(978f)));

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(-393f, vec3<bool>(true, false, true), 22930u, vec4<f32>(562f, 2219f, -1898f, 685f)), Struct_2(1069f), vec3<f32>(647f, 599f, 994f)), Struct_3(Struct_1(-1673f, vec3<bool>(false, false, true), 57779u, vec4<f32>(557f, 136f, 533f, 1000f)), Struct_2(-2072f), vec3<f32>(-1763f, 2444f, 521f)), Struct_3(Struct_1(-834f, vec3<bool>(true, true, false), 0u, vec4<f32>(644f, 477f, 1000f, 256f)), Struct_2(-2903f), vec3<f32>(-1337f, -602f, 103f)), Struct_3(Struct_1(-336f, vec3<bool>(false, false, false), 1u, vec4<f32>(386f, -1430f, 176f, -153f)), Struct_2(1000f), vec3<f32>(1867f, 1774f, -196f)), Struct_3(Struct_1(-1409f, vec3<bool>(true, false, false), 1u, vec4<f32>(872f, 812f, 1000f, -1279f)), Struct_2(-954f), vec3<f32>(755f, 346f, -1000f)), Struct_3(Struct_1(-1237f, vec3<bool>(false, true, false), 4294967295u, vec4<f32>(329f, 564f, 779f, -132f)), Struct_2(192f), vec3<f32>(1297f, 1374f, 150f)), Struct_3(Struct_1(510f, vec3<bool>(true, true, true), 54404u, vec4<f32>(863f, 1127f, -327f, 350f)), Struct_2(-591f), vec3<f32>(-1829f, 617f, 706f)), Struct_3(Struct_1(-557f, vec3<bool>(true, false, true), 48132u, vec4<f32>(1000f, -284f, 1360f, 591f)), Struct_2(217f), vec3<f32>(510f, 690f, 1318f)), Struct_3(Struct_1(1254f, vec3<bool>(false, true, true), 4294967295u, vec4<f32>(246f, 448f, 211f, -1310f)), Struct_2(1020f), vec3<f32>(312f, -492f, 303f)), Struct_3(Struct_1(-1302f, vec3<bool>(false, true, true), 66263u, vec4<f32>(279f, -1000f, -1479f, 807f)), Struct_2(1219f), vec3<f32>(1089f, 248f, -118f)), Struct_3(Struct_1(285f, vec3<bool>(false, true, true), 0u, vec4<f32>(1151f, -257f, 687f, 387f)), Struct_2(585f), vec3<f32>(-2956f, -209f, -725f)), Struct_3(Struct_1(-831f, vec3<bool>(false, true, false), 99354u, vec4<f32>(-396f, -2319f, 1135f, -1558f)), Struct_2(585f), vec3<f32>(1000f, -1278f, 2383f)), Struct_3(Struct_1(-1810f, vec3<bool>(true, false, true), 26777u, vec4<f32>(298f, -2134f, -464f, -334f)), Struct_2(-1000f), vec3<f32>(318f, -1575f, -1000f)), Struct_3(Struct_1(-639f, vec3<bool>(false, true, true), 0u, vec4<f32>(805f, -703f, -1029f, -274f)), Struct_2(-967f), vec3<f32>(-786f, -382f, -711f)), Struct_3(Struct_1(978f, vec3<bool>(true, false, true), 0u, vec4<f32>(900f, 639f, 576f, 1811f)), Struct_2(939f), vec3<f32>(-149f, 616f, -382f)), Struct_3(Struct_1(308f, vec3<bool>(true, false, true), 46285u, vec4<f32>(-955f, 1633f, 566f, 1133f)), Struct_2(-438f), vec3<f32>(303f, -625f, 751f)), Struct_3(Struct_1(1242f, vec3<bool>(true, false, false), 4294967295u, vec4<f32>(-765f, -388f, -1950f, 656f)), Struct_2(1757f), vec3<f32>(1581f, 351f, 989f)), Struct_3(Struct_1(-198f, vec3<bool>(true, false, false), 4294967295u, vec4<f32>(938f, -2306f, 914f, 724f)), Struct_2(-335f), vec3<f32>(1000f, 422f, -287f)), Struct_3(Struct_1(-1287f, vec3<bool>(true, true, true), 4294967295u, vec4<f32>(426f, -687f, -1168f, 1740f)), Struct_2(-2359f), vec3<f32>(-1269f, -260f, -1810f)), Struct_3(Struct_1(-101f, vec3<bool>(true, false, false), 0u, vec4<f32>(-154f, 353f, -713f, -1875f)), Struct_2(506f), vec3<f32>(220f, -237f, -2810f)), Struct_3(Struct_1(1150f, vec3<bool>(false, false, false), 4294967295u, vec4<f32>(438f, 203f, -253f, 125f)), Struct_2(-789f), vec3<f32>(1454f, 1109f, -1102f)));

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(arg_1, -1123f)), select(vec3<bool>(true, !(false && global2.x), global2.x), !(!vec3<bool>(global2.x, global2.x, global2.x)), !vec3<bool>(true, any(vec4<bool>(global2.x, false, global2.x, global2.x)), u_input.a == u_input.a)), ~abs(~1u), vec4<f32>(1000f, arg_1, -973f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-571f + -1160f))))));
    global1 = array<Struct_3, 21>();
    global1 = array<Struct_3, 21>();
    global0 = array<Struct_4, 6>();
    global1 = array<Struct_3, 21>();
    return _wgslsmith_f_op_f32(sign(330f));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(286f);
    global0 = array<Struct_4, 6>();
    let var_1 = reverseBits(min(0u, ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(41342u, 23875u)), vec2<u32>(1u, 1u))));
    global0 = array<Struct_4, 6>();
    var var_2 = global0[_wgslsmith_index_u32(1u, 6u)];
    return Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.b.a)), 1000f), !vec3<bool>(true, any(vec3<bool>(false, false, global2.x)), false || var_2.a.x), var_1, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.a, -1640f, var_0.a, var_0.a)))))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -882f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-563f + 887f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a * 1241f)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-var_0.a), var_2.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-2392f, _wgslsmith_f_op_f32(-var_0.a))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> f32 {
    let var_0 = func_2();
    var var_1 = var_0.b;
    var var_2 = vec2<bool>((~_wgslsmith_mod_u32(var_0.a.c, 20735u) != ~(~55144u)) && !(true && !global2.x), 0u < ~(~_wgslsmith_div_u32(var_0.a.c, var_0.a.c)));
    var var_3 = 1u;
    var var_4 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, abs(_wgslsmith_sub_u32(70085u, var_0.a.c)), abs(~var_0.a.c), abs(var_0.a.c)), _wgslsmith_sub_vec4_u32(max(~vec4<u32>(1u, 0u, var_0.a.c, 58751u), ~vec4<u32>(var_0.a.c, 1u, 1705u, 56154u)), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, var_0.a.c, var_0.a.c), vec4<u32>(var_0.a.c, var_0.a.c, 29635u, 6629u))))) >> ((max(vec4<u32>(var_0.a.c, 32835u, ~var_0.a.c, 11800u), firstLeadingBit(vec4<u32>(0u, 13247u, var_0.a.c, 4294967295u))) >> (((vec4<u32>(var_0.a.c, 16785u, 0u, 4294967295u) & vec4<u32>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c), vec4<u32>(var_0.a.c, var_0.a.c, 0u, 17698u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a * -1852f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(func_2().a.d.x)) * -2368f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(select(!global2.x, global2.x, all(vec3<bool>(global2.x, global2.x, global2.x)) && true), global2.x, global2.x);
    let var_1 = global2.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(303f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(290f, 911f)), var_0.x)), _wgslsmith_div_f32(-1503f, -988f))));
    var var_3 = !(!vec4<bool>(true, true, (u_input.a > -2147483647i) != false, var_0.x));
    let var_4 = reverseBits(-1i);
    var var_5 = Struct_4(vec4<bool>(func_2().a.b.x, (2147483647i == u_input.a) || true, global2.x, !any(vec3<bool>(var_3.x, var_3.x, false)) || (var_0.x & global2.x)), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(715f)) + var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_clamp_u32(22517u, 138824u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(-134f - _wgslsmith_f_op_f32(sign(469f))), 638f, _wgslsmith_f_op_f32(1961f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~vec2<u32>(1u, 1u), select(~vec2<i32>(~0i, -2147483647i), firstTrailingBit(firstTrailingBit(reverseBits(vec2<i32>(u_input.a, 2147483647i)))), select(vec2<bool>(all(var_3.zx), var_5.a.x), select(vec2<bool>(true, global2.x), func_2().a.b.zz, true), false)), max(~abs(vec4<u32>(50769u, 30062u, 43676u, 12657u)), vec4<u32>(1u, 1u, 1u, 1u)) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(35552u, 163019u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(32691u, 50055u), vec2<u32>(60697u, 0u)), _wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_div_u32(5619u, 1u), 1u)));
}

