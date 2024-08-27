struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<f32>(-270f, -588f, 1000f, 332f)), Struct_1(vec4<f32>(660f, -2749f, 2217f, 582f)), Struct_1(vec4<f32>(-712f, -128f, 873f, -271f)), Struct_1(vec4<f32>(-420f, -657f, -572f, 410f)), Struct_1(vec4<f32>(2220f, 454f, -766f, 271f)), Struct_1(vec4<f32>(1354f, -349f, 458f, -843f)), Struct_1(vec4<f32>(526f, -321f, 1000f, -367f)), Struct_1(vec4<f32>(1000f, 941f, 830f, -1302f)), Struct_1(vec4<f32>(-657f, -816f, -181f, -2100f)), Struct_1(vec4<f32>(-1733f, 774f, -415f, -933f)), Struct_1(vec4<f32>(964f, 3543f, -1376f, 973f)), Struct_1(vec4<f32>(345f, 407f, -507f, 801f)), Struct_1(vec4<f32>(331f, -2501f, 1735f, 115f)), Struct_1(vec4<f32>(679f, -207f, 602f, 1566f)), Struct_1(vec4<f32>(1098f, 1057f, -408f, -191f)), Struct_1(vec4<f32>(107f, -871f, 1199f, 821f)), Struct_1(vec4<f32>(788f, 484f, 1546f, 2066f)), Struct_1(vec4<f32>(1502f, -338f, -415f, -607f)), Struct_1(vec4<f32>(-541f, -1000f, 1072f, -2002f)), Struct_1(vec4<f32>(-101f, 323f, 708f, 757f)), Struct_1(vec4<f32>(595f, -895f, -1693f, -274f)), Struct_1(vec4<f32>(454f, -1000f, -1611f, 814f)), Struct_1(vec4<f32>(-1358f, 443f, 506f, -268f)));

var<private> global1: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_1(vec4<f32>(-1598f, -969f, -1390f, -945f)), Struct_1(vec4<f32>(1174f, 1725f, 209f, 992f)), vec4<bool>(false, true, false, true)), Struct_4(Struct_1(vec4<f32>(542f, -162f, -578f, 1000f)), Struct_1(vec4<f32>(1228f, 1360f, 101f, -1938f)), vec4<bool>(true, false, false, false)), Struct_4(Struct_1(vec4<f32>(223f, 647f, 784f, -1596f)), Struct_1(vec4<f32>(759f, -719f, -208f, 347f)), vec4<bool>(true, false, true, true)), Struct_4(Struct_1(vec4<f32>(-1563f, -456f, 1197f, 897f)), Struct_1(vec4<f32>(-262f, -966f, -1291f, -1811f)), vec4<bool>(true, true, false, false)), Struct_4(Struct_1(vec4<f32>(561f, 734f, 2266f, -2464f)), Struct_1(vec4<f32>(497f, 737f, -1000f, 752f)), vec4<bool>(true, true, true, false)), Struct_4(Struct_1(vec4<f32>(-401f, -393f, 623f, -752f)), Struct_1(vec4<f32>(260f, -856f, -828f, -1000f)), vec4<bool>(true, true, false, true)), Struct_4(Struct_1(vec4<f32>(-2137f, -951f, 752f, 1000f)), Struct_1(vec4<f32>(1000f, -2615f, 108f, -1491f)), vec4<bool>(true, false, false, true)), Struct_4(Struct_1(vec4<f32>(546f, -1062f, 731f, 1067f)), Struct_1(vec4<f32>(1484f, -486f, 1190f, -961f)), vec4<bool>(true, false, false, false)));

var<private> global2: array<u32, 24>;

var<private> global3: bool = true;

var<private> global4: array<bool, 7> = array<bool, 7>(true, true, true, true, true, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec4<u32>) -> f32 {
    global3 = true;
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.xyz, vec3<u32>(_wgslsmith_mod_u32(arg_2.x, global2[_wgslsmith_index_u32(4294967295u, 24u)]), reverseBits(0u), ~0u)), _wgslsmith_div_u32(~42443u, u_input.b.x << (24403u % 32u)) << (~u_input.b.x % 32u), ~4294967295u);
    global3 = global4[_wgslsmith_index_u32(arg_2.x, 7u)];
    let var_1 = 20060u;
    return -139f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_4, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f), 1463f), -1380f)));
    global4 = array<bool, 7>();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], true, u_input.b)), 1f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = u_input.b.x;
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_4 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 8u)];
    var var_1 = var_0.c.x;
    global3 = false;
    return Struct_4(global0[_wgslsmith_index_u32(45861u, 23u)], func_2(var_0.a), !select(!var_0.c, var_0.c, !var_0.c));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    let var_0 = true;
    var var_1 = ~_wgslsmith_sub_vec4_i32(select(_wgslsmith_div_vec4_i32(u_input.a, u_input.a) | u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a, 48151i, arg_1.a, -1564i), vec4<i32>(u_input.a.x, -1i, 17978i, u_input.d.x)) >> (~vec4<u32>(0u, arg_1.c.x, 56113u, global2[_wgslsmith_index_u32(u_input.b.x, 24u)]) % vec4<u32>(32u)), select(!arg_0.c.x, !arg_0.c.x, true)), ~(-_wgslsmith_add_vec4_i32(u_input.a, u_input.a)));
    let var_2 = Struct_5(~countOneBits(abs(countOneBits(arg_1.c))), func_1(1813f, abs(u_input.a.x), u_input.a, global0[_wgslsmith_index_u32(7564u, 23u)]), countOneBits(4294967295u), vec4<u32>(~firstLeadingBit(select(u_input.b.x, u_input.b.x, var_0)), select(18864u, _wgslsmith_mult_u32(u_input.b.x | 86046u, arg_1.c.x), false), 4294967295u, min(global2[_wgslsmith_index_u32(12967u, 24u)], arg_1.c.x)), ~4294967295u);
    var_1 = u_input.a;
    let var_3 = false;
    return ~(firstTrailingBit(~(15011u | u_input.b.x)) ^ _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(max(arg_1.c.x, global2[_wgslsmith_index_u32(arg_1.c.x, 24u)]), 38639u, 4294967295u), global2[_wgslsmith_index_u32(var_2.d.x, 24u)], 41616u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 24u)] >> (~(~(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b))) % 32u);
    global3 = true;
    global2 = array<u32, 24>();
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(func_4(func_1(-1949f, u_input.a.x, vec4<i32>(-1i, 1i, 54338i, -37898i), global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), Struct_3(u_input.c.x, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28674u, 24u)], 7u)], vec2<u32>(0u, 57594u), vec2<bool>(false, true))), 8001u), u_input.b.x, firstLeadingBit(u_input.b.x)), 1u, _wgslsmith_add_u32(1u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)] ^ 4294967295u, global2[_wgslsmith_index_u32(~u_input.b.x, 24u)])) << (4294967295u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, 44331u, global2[_wgslsmith_index_u32(var_0, 24u)]), var_1.x), ~vec2<u32>(global2[_wgslsmith_index_u32(var_1.x, 24u)], 36852u)));
}

