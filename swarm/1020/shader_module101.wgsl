struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_4;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec3<f32>(-379f, 405f, -1000f), 376f, vec3<f32>(-1132f, 155f, -758f)), Struct_1(vec3<f32>(-1298f, -222f, -103f), 1171f, vec3<f32>(-1204f, -472f, 317f)), Struct_1(vec3<f32>(-1872f, -744f, 1160f), -2232f, vec3<f32>(549f, -250f, -1000f)), 0u), Struct_2(Struct_1(vec3<f32>(498f, 501f, 600f), 732f, vec3<f32>(-871f, -959f, 1340f)), Struct_1(vec3<f32>(635f, -775f, -1013f), 1012f, vec3<f32>(595f, 610f, 1825f)), Struct_1(vec3<f32>(-523f, -118f, -1000f), 323f, vec3<f32>(-224f, 1209f, -1199f)), 4294967295u), Struct_2(Struct_1(vec3<f32>(-1016f, 350f, 204f), 1997f, vec3<f32>(2022f, 290f, 1577f)), Struct_1(vec3<f32>(-1869f, -823f, 581f), 1000f, vec3<f32>(1000f, 1498f, -272f)), Struct_1(vec3<f32>(-1000f, -382f, 730f), -393f, vec3<f32>(892f, -1800f, 1328f)), 0u), Struct_2(Struct_1(vec3<f32>(-728f, 902f, 596f), -2220f, vec3<f32>(1521f, -529f, 336f)), Struct_1(vec3<f32>(2405f, -1000f, 560f), -913f, vec3<f32>(-1989f, -890f, -1106f)), Struct_1(vec3<f32>(-711f, 408f, 1021f), -2050f, vec3<f32>(-1463f, -611f, 468f)), 58546u), Struct_2(Struct_1(vec3<f32>(1000f, 175f, -634f), 641f, vec3<f32>(1000f, 1252f, 285f)), Struct_1(vec3<f32>(-233f, 1588f, -983f), 138f, vec3<f32>(-1000f, -1783f, -836f)), Struct_1(vec3<f32>(-131f, -1806f, -184f), 1454f, vec3<f32>(-798f, 2002f, 184f)), 47426u), Struct_2(Struct_1(vec3<f32>(221f, 763f, -565f), -1009f, vec3<f32>(-315f, -1347f, 228f)), Struct_1(vec3<f32>(833f, 1000f, 339f), 990f, vec3<f32>(-868f, -242f, 764f)), Struct_1(vec3<f32>(894f, 648f, -729f), 709f, vec3<f32>(682f, -1543f, 1362f)), 118293u), Struct_2(Struct_1(vec3<f32>(752f, 560f, 494f), -1000f, vec3<f32>(-416f, -167f, 1699f)), Struct_1(vec3<f32>(-1361f, 278f, -732f), -1867f, vec3<f32>(633f, 110f, 677f)), Struct_1(vec3<f32>(2580f, -419f, 474f), -1247f, vec3<f32>(-145f, 1162f, -452f)), 67123u), Struct_2(Struct_1(vec3<f32>(-1000f, -788f, -1336f), -239f, vec3<f32>(906f, -1018f, -2099f)), Struct_1(vec3<f32>(-992f, 933f, 155f), -125f, vec3<f32>(492f, 293f, 1354f)), Struct_1(vec3<f32>(-1298f, 697f, 212f), 1063f, vec3<f32>(1325f, 768f, -1109f)), 20551u), Struct_2(Struct_1(vec3<f32>(1301f, -1372f, -1293f), 1410f, vec3<f32>(-912f, -198f, -427f)), Struct_1(vec3<f32>(-232f, -276f, 308f), 989f, vec3<f32>(1410f, -2639f, 514f)), Struct_1(vec3<f32>(1231f, -279f, 401f), -1240f, vec3<f32>(313f, -645f, -853f)), 1u), Struct_2(Struct_1(vec3<f32>(-1498f, 178f, 211f), 567f, vec3<f32>(616f, 916f, 121f)), Struct_1(vec3<f32>(1088f, 425f, 835f), -1239f, vec3<f32>(-1581f, 1000f, 582f)), Struct_1(vec3<f32>(-639f, 119f, 323f), -2023f, vec3<f32>(369f, 745f, -808f)), 0u), Struct_2(Struct_1(vec3<f32>(538f, -165f, -947f), 407f, vec3<f32>(1486f, 402f, 596f)), Struct_1(vec3<f32>(1870f, -119f, 467f), 824f, vec3<f32>(178f, 866f, -1039f)), Struct_1(vec3<f32>(1232f, -826f, -146f), -124f, vec3<f32>(-1022f, 433f, 507f)), 0u), Struct_2(Struct_1(vec3<f32>(-1897f, 144f, -420f), 1000f, vec3<f32>(108f, 537f, -258f)), Struct_1(vec3<f32>(1224f, -851f, -1420f), -1226f, vec3<f32>(1620f, -819f, 1546f)), Struct_1(vec3<f32>(706f, -1401f, -179f), 391f, vec3<f32>(931f, 1577f, -680f)), 1u), Struct_2(Struct_1(vec3<f32>(446f, 1045f, -1077f), -1460f, vec3<f32>(-465f, -1454f, -117f)), Struct_1(vec3<f32>(-139f, -875f, 171f), 1191f, vec3<f32>(969f, -395f, 2031f)), Struct_1(vec3<f32>(-1000f, 850f, 218f), 1251f, vec3<f32>(-534f, 1041f, 284f)), 1u), Struct_2(Struct_1(vec3<f32>(1000f, -549f, 125f), 817f, vec3<f32>(466f, -2073f, -2341f)), Struct_1(vec3<f32>(122f, -481f, 1106f), -405f, vec3<f32>(-1392f, 767f, 2606f)), Struct_1(vec3<f32>(-843f, -253f, -496f), 1422f, vec3<f32>(-582f, -2231f, 1132f)), 4294967295u), Struct_2(Struct_1(vec3<f32>(-299f, -560f, -159f), -260f, vec3<f32>(-1205f, 1183f, -250f)), Struct_1(vec3<f32>(1230f, 1415f, -1000f), 1000f, vec3<f32>(-1675f, -753f, -1107f)), Struct_1(vec3<f32>(-1090f, 2367f, -269f), 1789f, vec3<f32>(-1382f, 1625f, 970f)), 1u), Struct_2(Struct_1(vec3<f32>(-410f, -144f, 997f), -962f, vec3<f32>(939f, 423f, -312f)), Struct_1(vec3<f32>(-1269f, -330f, -655f), -1000f, vec3<f32>(-3034f, 985f, 976f)), Struct_1(vec3<f32>(-343f, -382f, 1509f), -1325f, vec3<f32>(172f, -159f, 1000f)), 0u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = u_input.b.x;
    let var_0 = Struct_3(!select(any(vec3<bool>(true, false, true)), true, global1.a.b.c.x != _wgslsmith_f_op_f32(f32(-1f) * -656f)), -1000f);
    let var_1 = vec3<i32>(-11205i, -1800i, global1.c.x);
    let var_2 = Struct_4(Struct_2(global1.a.a, arg_2, arg_2, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, _wgslsmith_add_i32(firstTrailingBit(global1.b), u_input.b.x), _wgslsmith_mod_i32(1i, 1i) | _wgslsmith_dot_vec3_i32(u_input.b.zyx, vec3<i32>(global1.c.x, -5988i, 19082i)), _wgslsmith_mult_i32(1i, -31361i)), ~vec4<i32>(2147483647i, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, arg_0.x, arg_0.x, u_input.b.x), u_input.b), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(7477i, arg_0.x, u_input.b.x, arg_0.x)))), vec2<i32>(u_input.b.x, global1.c.x));
    global0 = ~(22439i << (u_input.a.x % 32u));
    return _wgslsmith_mult_u32(var_2.a.d, 49451u >> ((_wgslsmith_mult_u32(~var_2.a.d, firstLeadingBit(var_2.a.d)) << (u_input.a.x % 32u)) % 32u));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global2 = array<Struct_2, 16>();
    var var_1 = select(any(vec3<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(true, false, true)) && true, true)), !(!all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a.c.x - var_0)), -269f)) <= _wgslsmith_div_f32(1566f, var_0));
    var var_2 = Struct_4(global2[_wgslsmith_index_u32(~func_3(vec2<i32>(-1i) * -global1.c, global1.a.c, Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a.a.c), 629f, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.a.b.c.x, var_0, -1221f))))), 16u)], abs(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-23595i, global1.c.x, global1.c.x), u_input.b.zww) << (_wgslsmith_dot_vec4_u32(vec4<u32>(41777u, 143011u, global1.a.d, 8871u), vec4<u32>(4294967295u, global1.a.d, u_input.a.x, u_input.a.x)) % 32u))), -_wgslsmith_clamp_vec2_i32(global1.c, reverseBits(max(vec2<i32>(2147483647i, u_input.b.x), u_input.b.wx)), vec2<i32>(_wgslsmith_sub_i32(global1.b, 0i), -1i)));
    var var_3 = abs(max(~select(vec4<u32>(global1.a.d, 0u, 57684u, u_input.a.x), vec4<u32>(54793u, global1.a.d, 4294967295u, global1.a.d), true), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), firstLeadingBit(29565u), u_input.a.x << (u_input.a.x % 32u), global1.a.d)) >> (firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 1u, var_2.a.d, global1.a.d), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.a.d, 0u, 20349u, var_2.a.d), vec4<u32>(54731u, u_input.a.x, 0u, u_input.a.x)))) % vec4<u32>(32u)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) + var_2.a.b.c)))), _wgslsmith_f_op_f32(f32(-1f) * -164f), _wgslsmith_f_op_vec3_f32(-global1.a.c.c)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(global1.a.a.c)), vec3<f32>(global1.a.a.c.x, var_2.a.c.c.x, var_2.a.b.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.a.c.x))) - var_2.a.b.a.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.a.b.b, -729f, var_0), global1.a.b.c))), var_2.a.c.a))), var_2.a.a, ~(~abs(var_3.x) & select(countOneBits(var_2.a.d), 96094u, select(true, true, false))));
}

fn func_1(arg_0: f32) -> vec2<u32> {
    global1 = Struct_4(func_2(), firstLeadingBit(~global1.b & abs(2147483647i)) & 26488i, vec2<i32>(-18108i, _wgslsmith_clamp_i32(firstTrailingBit(global1.b), reverseBits(1018i), select(u_input.b.x, u_input.b.x, false) ^ countOneBits(0i))));
    return vec2<u32>(abs(_wgslsmith_div_u32(global1.a.d | global1.a.d, 4294967295u)), firstLeadingBit(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, global1.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(trunc(-354f)));
    let var_1 = ~_wgslsmith_div_u32(u_input.a.x, firstTrailingBit(var_0.x));
    global1 = Struct_4(global1.a, global1.c.x, countOneBits(vec2<i32>(0i, 2147483647i) | max(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(9262i, -1i))) | -u_input.b.yz);
    let var_2 = global1.a.b.a.x;
    let var_3 = select(true, _wgslsmith_div_f32(-909f, _wgslsmith_f_op_f32(-global1.a.a.a.x)) < global1.a.c.c.x, any(vec4<bool>(true, true, all(vec4<bool>(true, true, true, false)), true))) && any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))));
    global0 = ~(~firstLeadingBit(global1.c.x));
    global2 = array<Struct_2, 16>();
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.a.c.a * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(141f, 695f, 336f) * global1.a.b.a), _wgslsmith_div_vec3_f32(global1.a.b.a, global1.a.a.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-969f, _wgslsmith_f_op_f32(global1.a.c.c.x - 1775f), _wgslsmith_f_op_f32(-global1.a.c.a.x)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(global1.a.b.c, vec3<f32>(global1.a.c.b, 147f, global1.a.a.b), vec3<bool>(var_3, var_3, true))), vec3<f32>(global1.a.c.c.x, 462f, -369f)))), all(select(vec2<bool>(var_3, var_3), vec2<bool>(true, var_3), true)) && (any(vec2<bool>(false, var_3)) & (global1.a.a.c.x > 1168f)))), -1296f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.c.b, global1.a.c.c.x, 102f) - vec3<f32>(global1.a.c.a.x, -814f, 597f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-237f - global1.a.c.c.x)))) + -228f), max(vec4<i32>(1i, _wgslsmith_div_i32(352i, u_input.b.x), -abs(2147483647i), countOneBits(u_input.b.x)), select(u_input.b, select(u_input.b, vec4<i32>(0i, -11920i, -2147483647i, global1.c.x), vec4<bool>(true, true, false, true)), var_3)));
}

