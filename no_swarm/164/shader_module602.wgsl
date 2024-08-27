struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec2<i32>(2147483647i, -1i), vec3<f32>(899f, 1594f, -1254f), 83883u), 4294967295u, true), Struct_2(Struct_1(vec2<i32>(9510i, 25598i), vec3<f32>(-222f, 171f, 107f), 42039u), 0u, false), Struct_2(Struct_1(vec2<i32>(-5495i, -17532i), vec3<f32>(-3046f, 2148f, -958f), 0u), 14693u, false), Struct_2(Struct_1(vec2<i32>(2617i, -1i), vec3<f32>(-235f, 649f, -635f), 0u), 0u, false), Struct_2(Struct_1(vec2<i32>(30767i, 0i), vec3<f32>(-1320f, -873f, -321f), 31799u), 33612u, false), Struct_2(Struct_1(vec2<i32>(-1i, 43542i), vec3<f32>(227f, 193f, 893f), 4294967295u), 1u, false), Struct_2(Struct_1(vec2<i32>(2147483647i, -20430i), vec3<f32>(383f, -167f, -225f), 8749u), 25931u, true), Struct_2(Struct_1(vec2<i32>(-8590i, 17418i), vec3<f32>(-911f, -311f, -302f), 1u), 4294967295u, false));

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<i32>(i32(-2147483648), -2597i), vec3<f32>(815f, -641f, -1787f), 5989u), Struct_1(vec2<i32>(2147483647i, 0i), vec3<f32>(1411f, 723f, -965f), 1u), Struct_1(vec2<i32>(48070i, -38760i), vec3<f32>(-554f, -1000f, -1000f), 4294967295u), Struct_1(vec2<i32>(-31880i, -1i), vec3<f32>(1000f, 1255f, -1418f), 4294967295u), Struct_1(vec2<i32>(i32(-2147483648), -36761i), vec3<f32>(-350f, -2695f, -478f), 26337u), Struct_1(vec2<i32>(-26908i, 46882i), vec3<f32>(-1000f, 561f, 1292f), 0u), Struct_1(vec2<i32>(18357i, 1i), vec3<f32>(-1260f, 374f, -1698f), 29174u), Struct_1(vec2<i32>(1i, 33858i), vec3<f32>(-613f, -1375f, -1275f), 0u), Struct_1(vec2<i32>(-1i, 2147483647i), vec3<f32>(919f, -193f, -1066f), 29950u), Struct_1(vec2<i32>(-1i, 81791i), vec3<f32>(-1389f, 853f, 339f), 0u), Struct_1(vec2<i32>(27121i, 2147483647i), vec3<f32>(2211f, -1000f, 224f), 0u), Struct_1(vec2<i32>(-1i, -1i), vec3<f32>(-558f, -865f, -1116f), 0u), Struct_1(vec2<i32>(-10444i, 10684i), vec3<f32>(1000f, -1000f, -1024f), 33053u), Struct_1(vec2<i32>(0i, 51380i), vec3<f32>(823f, 567f, -449f), 4294967295u), Struct_1(vec2<i32>(1i, -12426i), vec3<f32>(-1645f, 1310f, -283f), 4294967295u), Struct_1(vec2<i32>(7823i, -8039i), vec3<f32>(627f, 1702f, 904f), 4294967295u), Struct_1(vec2<i32>(-1i, 1i), vec3<f32>(-275f, 492f, -373f), 1u), Struct_1(vec2<i32>(-1i, 0i), vec3<f32>(-1000f, 312f, -538f), 0u), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<f32>(-815f, -530f, 1336f), 57896u), Struct_1(vec2<i32>(23636i, -21641i), vec3<f32>(-263f, -616f, 214f), 18669u), Struct_1(vec2<i32>(-46810i, -5103i), vec3<f32>(1034f, 845f, 471f), 80000u), Struct_1(vec2<i32>(-29488i, 0i), vec3<f32>(302f, 699f, -694f), 4294967295u), Struct_1(vec2<i32>(-11361i, 0i), vec3<f32>(314f, -1009f, -320f), 55700u), Struct_1(vec2<i32>(i32(-2147483648), -7400i), vec3<f32>(-822f, -518f, 2045f), 0u), Struct_1(vec2<i32>(1i, -26484i), vec3<f32>(229f, -279f, 1000f), 4294967295u), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec3<f32>(-822f, -568f, 1892f), 38136u), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec3<f32>(-1623f, 1951f, 238f), 43729u), Struct_1(vec2<i32>(41033i, -505i), vec3<f32>(-537f, 1000f, -1968f), 1u), Struct_1(vec2<i32>(0i, -34086i), vec3<f32>(3136f, -142f, -1743f), 24713u), Struct_1(vec2<i32>(-5919i, -27249i), vec3<f32>(1149f, 866f, -1242f), 15778u));

var<private> global2: array<f32, 1>;

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec2<i32>(34250i, -40774i), vec3<f32>(1223f, -855f, 776f), 4294967295u), 58791u, true), Struct_2(Struct_1(vec2<i32>(41413i, 48047i), vec3<f32>(283f, -1130f, -846f), 1u), 4294967295u, true), Struct_2(Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(317f, -917f, -135f), 11399u), 32776u, true), Struct_2(Struct_1(vec2<i32>(0i, -51976i), vec3<f32>(466f, -1064f, 192f), 0u), 1u, false), Struct_2(Struct_1(vec2<i32>(1i, 0i), vec3<f32>(-437f, 1054f, -528f), 53019u), 4355u, true), Struct_2(Struct_1(vec2<i32>(-10719i, -30323i), vec3<f32>(-1000f, 244f, -1000f), 4294967295u), 62339u, false), Struct_2(Struct_1(vec2<i32>(-21229i, 0i), vec3<f32>(865f, 153f, -898f), 589u), 1u, true), Struct_2(Struct_1(vec2<i32>(14598i, 11134i), vec3<f32>(-264f, 1146f, 1118f), 0u), 0u, false), Struct_2(Struct_1(vec2<i32>(-59160i, i32(-2147483648)), vec3<f32>(-976f, 552f, -330f), 4294967295u), 4365u, true), Struct_2(Struct_1(vec2<i32>(2014i, 29721i), vec3<f32>(-1000f, -805f, 766f), 0u), 41118u, false), Struct_2(Struct_1(vec2<i32>(-17950i, -1i), vec3<f32>(-496f, -1146f, -1547f), 23227u), 9998u, false));

var<private> global4: f32 = -592f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2413f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x))), _wgslsmith_f_op_f32(arg_0.b.x - global2[_wgslsmith_index_u32(u_input.d, 1u)]))));
    global4 = _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.d, 0u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.e), _wgslsmith_div_u32(4294967295u, 1u))), 1u)] - -1831f)));
    global3 = array<Struct_2, 11>();
    var var_1 = abs(countOneBits(abs(_wgslsmith_mult_i32(-1i, u_input.c.x))) | u_input.c.x);
    return Struct_1(_wgslsmith_clamp_vec2_i32(abs(u_input.c.zy), ~vec2<i32>(-43195i, u_input.c.x), u_input.c.yz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_0.b * arg_0.a), _wgslsmith_f_op_vec3_f32(arg_0.a + vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], -334f, arg_0.c))))))), u_input.b.x);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    global0 = array<Struct_2, 8>();
    let var_0 = Struct_2(Struct_1(-arg_0.a, arg_0.b, reverseBits(24577u)), 4294967295u, arg_1);
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(arg_0.b.yx - _wgslsmith_f_op_vec2_f32(-var_0.a.b.yx));
    let var_3 = abs(-3477i);
    return vec4<u32>(~arg_0.c, 21382u, arg_0.c ^ 8969u, firstTrailingBit(arg_0.c));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(round(arg_3.e.b)), vec3<f32>(-572f, _wgslsmith_f_op_f32(f32(-1f) * -1261f), arg_2.a.x), _wgslsmith_f_op_f32(-arg_3.c.a.b.x), select(!vec4<bool>(true, true, arg_3.c.c, true), !(!(!arg_2.d)), vec4<bool>(select(arg_1.x, true, true), false, (true & arg_3.c.c) || any(arg_2.d.xz), all(!arg_2.d))));
    var var_1 = ~u_input.b.yzy;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.xx * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, global2[_wgslsmith_index_u32(arg_3.b.c, 1u)]), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.c.a.b.x, var_0.b.x), arg_2.b.xz, false))), arg_2.b.yz))));
    let var_3 = true;
    let var_4 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(max(u_input.b, firstLeadingBit(u_input.b)), func_3(func_2(arg_2), any(arg_1.zx)))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, 85792u), ~5000u, u_input.d & arg_3.c.b, ~38826u) >> (~vec4<u32>(u_input.d, 2956u, arg_3.a.c, u_input.a) % vec4<u32>(32u)), u_input.b), firstLeadingBit(u_input.b));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(select(false, false, all(vec3<bool>(true, true, false))), !func_1(-42163i, vec3<bool>(false, true, true), Struct_4(vec3<f32>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(u_input.d, 1u)], global2[_wgslsmith_index_u32(u_input.d, 1u)]), vec3<f32>(global2[_wgslsmith_index_u32(u_input.e, 1u)], -1631f, global2[_wgslsmith_index_u32(0u, 1u)]), global2[_wgslsmith_index_u32(u_input.d, 1u)], vec4<bool>(false, false, false, false)), Struct_3(Struct_1(vec2<i32>(u_input.c.x, -58597i), vec3<f32>(global2[_wgslsmith_index_u32(1u, 1u)], -1620f, global2[_wgslsmith_index_u32(u_input.a, 1u)]), 28365u), global1[_wgslsmith_index_u32(u_input.a, 30u)], global3[_wgslsmith_index_u32(u_input.a, 11u)], Struct_1(u_input.c.xx, vec3<f32>(global2[_wgslsmith_index_u32(0u, 1u)], 852f, global2[_wgslsmith_index_u32(u_input.d, 1u)]), u_input.e), Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), vec3<f32>(global2[_wgslsmith_index_u32(76752u, 1u)], global2[_wgslsmith_index_u32(17083u, 1u)], -560f), 9437u))), !(func_1(u_input.c.x, vec3<bool>(false, false, false), Struct_4(vec3<f32>(global2[_wgslsmith_index_u32(60666u, 1u)], global2[_wgslsmith_index_u32(u_input.b.x, 1u)], global2[_wgslsmith_index_u32(u_input.e, 1u)]), vec3<f32>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(u_input.d, 1u)], -632f), global2[_wgslsmith_index_u32(1u, 1u)], vec4<bool>(true, true, true, true)), Struct_3(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(u_input.d, 30u)], global3[_wgslsmith_index_u32(u_input.b.x, 11u)], Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), vec3<f32>(729f, -579f, global2[_wgslsmith_index_u32(u_input.a, 1u)]), 19500u), global1[_wgslsmith_index_u32(u_input.a, 30u)])) & any(vec2<bool>(true, false))), true), vec4<bool>(false, true, func_1(func_2(Struct_4(vec3<f32>(1189f, 730f, global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<f32>(-1364f, -1680f, global2[_wgslsmith_index_u32(u_input.e, 1u)]), -918f, vec4<bool>(false, false, false, true))).a.x, select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-521f, -1670f, global2[_wgslsmith_index_u32(u_input.e, 1u)]) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], -1428f)), vec3<f32>(global2[_wgslsmith_index_u32(64320u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], -1744f), -561f, select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true)), Struct_3(Struct_1(vec2<i32>(2147483647i, 39242i), vec3<f32>(-998f, global2[_wgslsmith_index_u32(u_input.d, 1u)], -1398f), 1u), Struct_1(u_input.c.zy, vec3<f32>(-253f, -959f, 949f), u_input.d), global3[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(5423u, 30u)], Struct_1(u_input.c.yx, vec3<f32>(-453f, global2[_wgslsmith_index_u32(60690u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)]), u_input.a))), true), global2[_wgslsmith_index_u32(abs(func_3(Struct_1(vec2<i32>(-11683i, u_input.c.x), vec3<f32>(global2[_wgslsmith_index_u32(u_input.e, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(u_input.a, 1u)]), u_input.e), func_1(1i, vec3<bool>(false, false, true), Struct_4(vec3<f32>(global2[_wgslsmith_index_u32(75803u, 1u)], global2[_wgslsmith_index_u32(49876u, 1u)], global2[_wgslsmith_index_u32(u_input.d, 1u)]), vec3<f32>(-366f, -260f, -332f), global2[_wgslsmith_index_u32(6081u, 1u)], vec4<bool>(true, false, true, true)), Struct_3(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)], Struct_2(global1[_wgslsmith_index_u32(u_input.d, 30u)], 1u, true), global1[_wgslsmith_index_u32(u_input.d, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)]))).x), 1u)] > 1f);
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 1u)] + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~1u, 1u)] - 1193f)) - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1189f, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(28322u, 1u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2473f, global2[_wgslsmith_index_u32(u_input.b.x, 1u)]))))));
    var var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1305f + 856f) - 958f)), global2[_wgslsmith_index_u32(u_input.b.x, 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 1u)])) * -450f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1423u, 1u)]), global2[_wgslsmith_index_u32(94400u, 1u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 1u)] * global2[_wgslsmith_index_u32(32846u, 1u)])))), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(7063u, max(u_input.b.x, 61940u)) >> (u_input.b.x % 32u), 1u)], !vec4<bool>(true, var_0.x, true, true));
    var var_2 = global1[_wgslsmith_index_u32(86004u, 30u)];
    var var_3 = 2147483647i;
    global2 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(~u_input.b.x), _wgslsmith_div_u32(var_2.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c, var_2.c, u_input.b.x, u_input.e), vec4<u32>(var_2.c, 26050u, 0u, 3121u)))), -958f, var_2.b.x);
}

