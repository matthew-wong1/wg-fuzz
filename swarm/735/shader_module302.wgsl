struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
    d: Struct_3,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<u32>(31648u, 1u, 4294967295u), Struct_1(vec2<f32>(-363f, -575f), 49823i, true, true, true), Struct_1(vec2<f32>(369f, -269f), 11203i, false, true, true), Struct_1(vec2<f32>(-1394f, 134f), 8844i, false, false, false), -1i), Struct_2(vec3<u32>(1u, 55346u, 4294967295u), Struct_1(vec2<f32>(612f, 420f), 41204i, false, true, false), Struct_1(vec2<f32>(1698f, -815f), -66278i, false, true, false), Struct_1(vec2<f32>(-1000f, 947f), -29724i, true, true, false), 39337i), Struct_2(vec3<u32>(0u, 4294967295u, 14836u), Struct_1(vec2<f32>(-242f, 347f), -1i, false, false, true), Struct_1(vec2<f32>(248f, -281f), 2147483647i, true, true, false), Struct_1(vec2<f32>(593f, -1723f), 2147483647i, true, false, false), -29191i), Struct_2(vec3<u32>(28799u, 29113u, 4294967295u), Struct_1(vec2<f32>(821f, -367f), 62522i, true, true, false), Struct_1(vec2<f32>(-448f, -119f), -1i, false, false, false), Struct_1(vec2<f32>(469f, 1000f), -18226i, true, false, true), 1i), Struct_2(vec3<u32>(31181u, 19102u, 43400u), Struct_1(vec2<f32>(918f, -2221f), -20072i, true, true, true), Struct_1(vec2<f32>(-239f, 264f), 3534i, false, false, true), Struct_1(vec2<f32>(-906f, -176f), -16133i, false, true, true), 2147483647i), Struct_2(vec3<u32>(69485u, 39450u, 1u), Struct_1(vec2<f32>(-2022f, -645f), 3053i, false, true, false), Struct_1(vec2<f32>(-1318f, 1583f), 0i, false, false, true), Struct_1(vec2<f32>(130f, 646f), 0i, false, true, false), -2673i), Struct_2(vec3<u32>(4294967295u, 4294967295u, 65012u), Struct_1(vec2<f32>(-1000f, 302f), 2147483647i, false, false, true), Struct_1(vec2<f32>(-1472f, -1000f), 8869i, false, true, true), Struct_1(vec2<f32>(-1157f, 2012f), 2147483647i, true, false, false), -26576i), Struct_2(vec3<u32>(1u, 5804u, 56026u), Struct_1(vec2<f32>(1208f, -1350f), -1i, false, true, true), Struct_1(vec2<f32>(1000f, 236f), -46656i, false, false, true), Struct_1(vec2<f32>(-1385f, 772f), 23536i, false, true, true), 4381i), Struct_2(vec3<u32>(0u, 0u, 1u), Struct_1(vec2<f32>(-2236f, -757f), 0i, false, true, true), Struct_1(vec2<f32>(-1373f, -1203f), 14176i, false, true, true), Struct_1(vec2<f32>(-581f, 763f), 0i, false, true, false), -10734i), Struct_2(vec3<u32>(1u, 4294967295u, 45999u), Struct_1(vec2<f32>(-1436f, 915f), -24382i, false, true, false), Struct_1(vec2<f32>(173f, -945f), 0i, true, true, false), Struct_1(vec2<f32>(-1000f, 1023f), 6669i, false, true, true), 13624i), Struct_2(vec3<u32>(4294967295u, 32632u, 1u), Struct_1(vec2<f32>(-164f, -573f), 0i, false, false, true), Struct_1(vec2<f32>(-710f, -2486f), -9292i, true, false, false), Struct_1(vec2<f32>(-1659f, -475f), -1i, false, true, true), 3785i), Struct_2(vec3<u32>(4294967295u, 1u, 64218u), Struct_1(vec2<f32>(-670f, 707f), i32(-2147483648), false, false, true), Struct_1(vec2<f32>(-486f, -1000f), 17113i, true, true, true), Struct_1(vec2<f32>(808f, 310f), -25000i, true, true, true), -54710i), Struct_2(vec3<u32>(53648u, 87047u, 34250u), Struct_1(vec2<f32>(-290f, -833f), i32(-2147483648), true, false, false), Struct_1(vec2<f32>(1043f, 554f), 1i, true, false, true), Struct_1(vec2<f32>(-637f, 156f), i32(-2147483648), false, false, true), -1i), Struct_2(vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec2<f32>(-1509f, 943f), -54579i, true, true, false), Struct_1(vec2<f32>(-131f, -259f), -34970i, false, false, false), Struct_1(vec2<f32>(-1862f, -452f), 1i, true, true, true), 2147483647i), Struct_2(vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(vec2<f32>(1723f, 452f), 1i, false, false, false), Struct_1(vec2<f32>(1000f, -1000f), i32(-2147483648), true, true, true), Struct_1(vec2<f32>(1000f, 1000f), -53091i, true, true, false), -61209i), Struct_2(vec3<u32>(5766u, 1822u, 0u), Struct_1(vec2<f32>(-1000f, 393f), 0i, true, false, true), Struct_1(vec2<f32>(-1000f, -1576f), -17045i, true, true, false), Struct_1(vec2<f32>(767f, 372f), 0i, true, false, false), 57293i), Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(vec2<f32>(-603f, -1003f), 0i, false, true, true), Struct_1(vec2<f32>(639f, -1237f), 1i, false, false, true), Struct_1(vec2<f32>(213f, -192f), i32(-2147483648), true, false, false), -28426i), Struct_2(vec3<u32>(1u, 17558u, 18778u), Struct_1(vec2<f32>(-1049f, -615f), -21453i, false, false, true), Struct_1(vec2<f32>(-528f, -528f), 4133i, false, true, true), Struct_1(vec2<f32>(-531f, 1779f), 70527i, true, false, false), 1i), Struct_2(vec3<u32>(1u, 0u, 4294967295u), Struct_1(vec2<f32>(-1000f, -483f), 10576i, true, false, true), Struct_1(vec2<f32>(-1042f, 1047f), 1i, true, false, true), Struct_1(vec2<f32>(-250f, -722f), -39859i, true, false, true), -1i), Struct_2(vec3<u32>(59768u, 4294967295u, 4294967295u), Struct_1(vec2<f32>(-1290f, -637f), 14612i, false, false, true), Struct_1(vec2<f32>(1000f, -918f), -1i, true, true, false), Struct_1(vec2<f32>(-1000f, 1000f), 9357i, true, false, false), 46486i), Struct_2(vec3<u32>(346u, 0u, 0u), Struct_1(vec2<f32>(808f, 701f), 1i, true, true, false), Struct_1(vec2<f32>(2192f, -281f), 23754i, false, false, false), Struct_1(vec2<f32>(306f, -1432f), -25215i, false, true, false), 1i), Struct_2(vec3<u32>(89521u, 1u, 17150u), Struct_1(vec2<f32>(-670f, -226f), -1i, false, false, true), Struct_1(vec2<f32>(1397f, 1217f), 0i, false, true, true), Struct_1(vec2<f32>(429f, -1022f), -53320i, true, true, true), 1i), Struct_2(vec3<u32>(0u, 62063u, 4294967295u), Struct_1(vec2<f32>(1396f, 1249f), i32(-2147483648), false, false, true), Struct_1(vec2<f32>(-2320f, 198f), 0i, false, true, false), Struct_1(vec2<f32>(988f, 1000f), 2147483647i, false, true, false), i32(-2147483648)), Struct_2(vec3<u32>(0u, 1u, 4294967295u), Struct_1(vec2<f32>(365f, 1056f), 1i, false, false, true), Struct_1(vec2<f32>(-539f, 1149f), 24537i, false, false, false), Struct_1(vec2<f32>(-1915f, -665f), 33395i, false, false, true), 0i), Struct_2(vec3<u32>(1285u, 0u, 22258u), Struct_1(vec2<f32>(-164f, -1655f), 26915i, true, true, false), Struct_1(vec2<f32>(1346f, 305f), -2190i, false, false, true), Struct_1(vec2<f32>(1037f, -1471f), i32(-2147483648), false, true, true), 8631i), Struct_2(vec3<u32>(16010u, 1u, 49313u), Struct_1(vec2<f32>(-628f, 392f), -1i, false, false, false), Struct_1(vec2<f32>(1000f, 370f), 1i, true, false, true), Struct_1(vec2<f32>(423f, 1016f), i32(-2147483648), false, true, false), -1133i), Struct_2(vec3<u32>(4294967295u, 69717u, 1u), Struct_1(vec2<f32>(302f, 459f), -19904i, true, true, false), Struct_1(vec2<f32>(-742f, 1086f), -1i, false, true, true), Struct_1(vec2<f32>(-668f, 1470f), 0i, true, true, true), 1i), Struct_2(vec3<u32>(75326u, 52748u, 13763u), Struct_1(vec2<f32>(-148f, 352f), 2147483647i, true, true, true), Struct_1(vec2<f32>(-1620f, 957f), 2147483647i, false, true, false), Struct_1(vec2<f32>(568f, -392f), 1i, true, false, false), -58683i), Struct_2(vec3<u32>(1u, 36389u, 1u), Struct_1(vec2<f32>(-1675f, -1088f), -1i, false, true, true), Struct_1(vec2<f32>(410f, 1154f), -30705i, true, true, true), Struct_1(vec2<f32>(420f, -1573f), -30028i, false, false, true), 295i), Struct_2(vec3<u32>(50516u, 1u, 7725u), Struct_1(vec2<f32>(-1553f, 1126f), -19771i, true, false, true), Struct_1(vec2<f32>(-1712f, 588f), 12753i, false, false, false), Struct_1(vec2<f32>(-1000f, -635f), 12615i, false, true, false), 1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec2<u32>) -> vec4<u32> {
    global0 = array<Struct_2, 30>();
    return ~abs(~(~vec4<u32>(33221u, u_input.c, arg_0.x, u_input.c)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    return 13823u;
}

fn func_1() -> vec4<f32> {
    global0 = array<Struct_2, 30>();
    var var_0 = firstTrailingBit((select(vec4<u32>(1u, 36836u, u_input.c, 185u), func_2(vec2<u32>(u_input.c, u_input.c)), false) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 27447u, u_input.c, u_input.c), vec4<u32>(u_input.c, 16640u, u_input.c, 32574u)), vec4<u32>(19061u, u_input.c, u_input.c, u_input.c), ~vec4<u32>(92271u, 0u, u_input.c, u_input.c))) >> ((firstLeadingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u) ^ vec4<u32>(u_input.c, u_input.c, u_input.c, 1u)) | _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 1u, 1u, 1u), vec4<u32>(u_input.c, 37606u, 2402u, u_input.c)), vec4<u32>(0u, 38792u, u_input.c, 12330u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(46134u, 6695u, 0u, var_0.x)) & vec4<u32>(var_0.x, ~(~u_input.c), ~42677u, ~1u), vec4<u32>(u_input.c, select(func_3(Struct_5(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(0u, 30u)], Struct_3(false, vec2<u32>(u_input.c, u_input.c), vec4<f32>(-162f, -219f, 643f, 1283f)), u_input.a.ww), Struct_5(u_input.a, 1u, Struct_2(vec3<u32>(18843u, 51039u, 1192u), Struct_1(vec2<f32>(839f, -1008f), u_input.a.x, true, true, true), Struct_1(vec2<f32>(1402f, 352f), -1i, false, true, true), Struct_1(vec2<f32>(-451f, -381f), 16142i, true, false, false), u_input.a.x), Struct_3(true, var_0.wx, vec4<f32>(1000f, 610f, 1474f, -1312f)), vec2<i32>(u_input.a.x, u_input.b)), Struct_1(vec2<f32>(-133f, 1125f), u_input.a.x, false, true, false), Struct_1(vec2<f32>(-905f, 433f), u_input.b, false, true, true)), min(u_input.c, var_0.x) << ((var_0.x ^ var_0.x) % 32u), select(-26017i, 1i, false) > 1i), u_input.c, _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, u_input.c), firstTrailingBit(~53521u))));
    var var_2 = -_wgslsmith_mult_i32(~(i32(-1i) * -2147483647i), u_input.a.x << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x), var_0.xw), _wgslsmith_mod_u32(var_0.x, 4294967295u)) % 32u));
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~_wgslsmith_add_u32(42015u, u_input.c)), 12131u), _wgslsmith_div_vec2_u32(vec2<u32>(~58694u, 54445u), var_0.ww));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-165f, 211f, 729f, 216f), vec4<f32>(-728f, -221f, -878f, -1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(445f, -1000f, 1214f, -674f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = u_input.b;
    var_0 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)), vec2<f32>(var_2.x, var_2.x), true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1839f, -1232f), var_2.xw))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_2.yw, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_2.xy)), var_2.xy), _wgslsmith_f_op_f32(sign(-1000f)) < _wgslsmith_f_op_f32(-1505f + var_2.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + var_2.x)))), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), true)))));
    let var_4 = 25501i | ~(~u_input.b);
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_div_f32(var_3.x, var_2.x), -161f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-662f * 826f), _wgslsmith_f_op_f32(-var_2.x)))))) * vec4<f32>(889f, var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x + var_2.x))) * -841f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(445f * _wgslsmith_f_op_vec4_f32(func_1()).x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(i32(-1i) * -2147483647i));
}

