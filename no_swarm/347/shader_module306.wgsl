struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(1696f, 873f, -1000f, 2599f), vec4<f32>(-252f, 437f, 433f, -124f), vec4<f32>(1000f, 252f, -528f, -679f), vec4<f32>(169f, -624f, -509f, 514f), vec4<f32>(343f, 335f, 117f, 622f), vec4<f32>(-1044f, 723f, -685f, 1099f), vec4<f32>(233f, 2844f, 1293f, -472f), vec4<f32>(-1000f, -2278f, -877f, 2132f), vec4<f32>(-519f, -873f, 383f, -642f), vec4<f32>(-126f, -1586f, 1000f, -305f), vec4<f32>(351f, 1808f, -1000f, 1697f), vec4<f32>(-732f, -917f, -183f, 414f), vec4<f32>(-980f, 1078f, -1000f, 1190f), vec4<f32>(-140f, 603f, -931f, -349f), vec4<f32>(-1687f, -2044f, -247f, 1000f), vec4<f32>(2616f, -585f, 1178f, 151f), vec4<f32>(-1000f, 780f, -440f, 799f), vec4<f32>(-1000f, 586f, 324f, -1894f), vec4<f32>(-1000f, 1273f, 2035f, 832f), vec4<f32>(1669f, -101f, -605f, -319f), vec4<f32>(-2142f, -378f, 1989f, -908f), vec4<f32>(1821f, 1311f, 309f, -512f), vec4<f32>(253f, -418f, 1000f, 910f), vec4<f32>(876f, -610f, 329f, -336f), vec4<f32>(-691f, -2087f, -1745f, 148f), vec4<f32>(1009f, -472f, -1856f, 562f), vec4<f32>(-1270f, 2781f, -893f, -1000f), vec4<f32>(-1000f, -2026f, 491f, 1025f), vec4<f32>(2158f, -1303f, 738f, -675f), vec4<f32>(1396f, -863f, 1449f, -1359f), vec4<f32>(1000f, -460f, 112f, 625f), vec4<f32>(478f, -3016f, 1274f, -188f));

var<private> global1: array<Struct_2, 26>;

var<private> global2: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global3: array<f32, 27> = array<f32, 27>(-242f, -1447f, 504f, 416f, -111f, -1754f, 938f, 808f, -3205f, -794f, 537f, 248f, 432f, -2246f, -128f, -1573f, -417f, -883f, 737f, 1025f, -627f, 169f, 613f, 540f, -655f, -544f, -1010f);

var<private> global4: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> vec2<f32> {
    let var_0 = -26243i;
    let var_1 = ~var_0;
    let var_2 = Struct_4(28947u, !select(vec2<bool>(true, true), global4[_wgslsmith_index_u32(66282u, 26u)], vec2<bool>(true, true)));
    var var_3 = firstLeadingBit(u_input.d);
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.zy, select(u_input.c, _wgslsmith_add_vec2_u32(vec2<u32>(var_2.a, 38429u), u_input.b.yy), false), _wgslsmith_mult_vec2_u32(select(vec2<u32>(var_2.a, var_2.a), vec2<u32>(9038u, 26316u), var_2.b), _wgslsmith_mod_vec2_u32(u_input.b.wz, vec2<u32>(var_2.a, var_2.a)))) >> (u_input.c % vec2<u32>(32u)), vec2<u32>(firstLeadingBit(abs(_wgslsmith_div_u32(var_2.a, 25794u))), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(12405u, var_2.a), vec2<u32>(0u, 18296u)) << (~u_input.c.x % 32u)))), 26u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-764f, global3[_wgslsmith_index_u32(42843u, 27u)]), vec2<f32>(global3[_wgslsmith_index_u32(131769u, 27u)], global3[_wgslsmith_index_u32(5931u, 27u)]))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], 1647f) + vec2<f32>(1058f, -233f)))))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    global4 = array<vec2<bool>, 26>();
    let var_0 = countOneBits(reverseBits(-(~65538i)));
    global2 = array<vec2<bool>, 32>();
    global2 = array<vec2<bool>, 32>();
    let var_1 = Struct_4(u_input.a, select(global4[_wgslsmith_index_u32(u_input.c.x, 26u)], select(!arg_1.a, vec2<bool>(!arg_1.a.x, any(vec3<bool>(false, arg_1.a.x, arg_1.a.x))), arg_1.a.x), !arg_1.a.x));
    return ~_wgslsmith_dot_vec2_u32(reverseBits(min(~u_input.c, u_input.c | vec2<u32>(51611u, 10490u))), u_input.b.xx);
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 27u)], 788f))))))));
    var var_1 = _wgslsmith_sub_u32(~(~(860u | u_input.c.x) & 43935u), func_3(-1672f, Struct_2(select(global4[_wgslsmith_index_u32(1u, 26u)], !global4[_wgslsmith_index_u32(5256u, 26u)], !global4[_wgslsmith_index_u32(u_input.a, 26u)]))));
    global0 = array<vec4<f32>, 32>();
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(626u, 1u, u_input.a), u_input.b.yzy), 1u), func_3(var_0.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)]), 1090u << (~_wgslsmith_mult_u32(1u, u_input.b.x) % 32u)), reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.zyx & vec3<u32>(1u, u_input.a, u_input.b.x), vec3<u32>(u_input.a, u_input.c.x, u_input.a)), u_input.d, u_input.d)));
    var_1 = var_2.x;
    return !select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), true), vec3<bool>(true, true, false), !all(vec3<bool>(false, true, false))), vec3<bool>(true, true, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    var var_0 = Struct_5(abs(~(~u_input.d)), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) + vec2<f32>(global3[_wgslsmith_index_u32(25604u, 27u)], global3[_wgslsmith_index_u32(1u, 27u)])))))), _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-5998i, 27301i, -34283i), ~vec3<i32>(13502i, -7751i, -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -46513i, 2147483647i), vec3<i32>(29575i, -36813i, -4828i)))), _wgslsmith_f_op_f32(-559f + global3[_wgslsmith_index_u32(abs(u_input.d >> (u_input.a % 32u)), 27u)]), all(!func_1())), Struct_4(0u, vec2<bool>(true, _wgslsmith_mult_u32(4294967295u, u_input.c.x) >= 0u)));
    var var_1 = Struct_4(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(select(reverseBits(vec3<u32>(u_input.b.x, 37684u, var_0.c.a)), select(vec3<u32>(31350u, u_input.d, u_input.b.x), u_input.b.zzw, true), false | var_0.b.d), _wgslsmith_sub_vec3_u32(u_input.b.wxz, vec3<u32>(var_0.a, var_0.c.a, var_0.c.a) << (u_input.b.zwy % vec3<u32>(32u))))), select(select(var_0.c.b, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_0.a, ~40981u), 32u)], !var_0.b.d), !vec2<bool>(true, all(vec3<bool>(var_0.c.b.x, false, false))), true));
    let x = u_input.a;
    s_output = StorageBuffer(-(-vec4<i32>(var_0.b.b.x, 2147483647i, var_0.b.b.x, var_0.b.b.x) | _wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, var_0.b.b.x, -1609i, -2147483647i), vec4<i32>(var_0.b.b.x, var_0.b.b.x, -13496i, var_0.b.b.x), countOneBits(vec4<i32>(1i, var_0.b.b.x, var_0.b.b.x, 33682i)))), u_input.b.wyz, _wgslsmith_sub_vec3_u32(u_input.b.wwx, u_input.b.zwx), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.c.a, 27u)] + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(39124u, 27u)] * global3[_wgslsmith_index_u32(22936u, 27u)]))), -526f)));
}

