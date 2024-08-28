struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<f32>(-482f, -258f, -571f, 1332f), vec4<f32>(-623f, -1032f, 628f, -1375f), 0u, false, vec2<u32>(62291u, 42701u)), Struct_1(vec4<f32>(1000f, -1801f, 240f, 630f), vec4<f32>(1088f, 661f, 1017f, 597f), 1u, true, vec2<u32>(0u, 34471u)), Struct_1(vec4<f32>(-406f, -1916f, -1278f, 1142f), vec4<f32>(-313f, -311f, -604f, -480f), 3851u, true, vec2<u32>(1u, 89867u)), Struct_1(vec4<f32>(-684f, -1186f, 375f, 776f), vec4<f32>(1458f, 1520f, 899f, 1010f), 2700u, false, vec2<u32>(4294967295u, 1u)), Struct_1(vec4<f32>(-1190f, -892f, -247f, -602f), vec4<f32>(-1190f, 964f, 1627f, 902f), 0u, true, vec2<u32>(1u, 41404u)), Struct_1(vec4<f32>(-365f, 1000f, -1634f, -237f), vec4<f32>(-1590f, 239f, 1155f, -1253f), 10370u, false, vec2<u32>(4294967295u, 4852u)), Struct_1(vec4<f32>(-638f, 1103f, 492f, -1274f), vec4<f32>(897f, -949f, 867f, -1307f), 33382u, true, vec2<u32>(1u, 15960u)), Struct_1(vec4<f32>(-1377f, 721f, -376f, -1416f), vec4<f32>(1000f, -998f, -918f, -1875f), 0u, false, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<f32>(-213f, 193f, 1043f, -1914f), vec4<f32>(194f, -853f, -1342f, -102f), 29888u, false, vec2<u32>(4294967295u, 34288u)), Struct_1(vec4<f32>(-676f, -102f, -1731f, -1030f), vec4<f32>(-1879f, -504f, 847f, 1729f), 19884u, false, vec2<u32>(4294967295u, 69054u)), Struct_1(vec4<f32>(-1742f, -175f, 1000f, -950f), vec4<f32>(-525f, 2061f, 1210f, 740f), 4294967295u, true, vec2<u32>(4294967295u, 45905u)), Struct_1(vec4<f32>(330f, 812f, -1264f, 532f), vec4<f32>(-249f, 1745f, 555f, -781f), 83585u, true, vec2<u32>(0u, 32987u)), Struct_1(vec4<f32>(1000f, 1387f, -803f, 839f), vec4<f32>(-378f, 445f, 523f, 169f), 0u, false, vec2<u32>(0u, 0u)), Struct_1(vec4<f32>(-2359f, 1266f, -497f, -1749f), vec4<f32>(1257f, -294f, -1310f, -2172f), 38491u, true, vec2<u32>(1u, 1u)), Struct_1(vec4<f32>(894f, 339f, 383f, -1000f), vec4<f32>(-1176f, 360f, -576f, -1232f), 59007u, true, vec2<u32>(0u, 55124u)), Struct_1(vec4<f32>(788f, -432f, 366f, -354f), vec4<f32>(-957f, 3257f, 1063f, 464f), 4294967295u, false, vec2<u32>(2032u, 1u)), Struct_1(vec4<f32>(2270f, 220f, 1898f, 332f), vec4<f32>(105f, 449f, 1402f, 238f), 26422u, true, vec2<u32>(0u, 45949u)), Struct_1(vec4<f32>(923f, -875f, -514f, -1317f), vec4<f32>(225f, -808f, -182f, 1000f), 42150u, false, vec2<u32>(4294967295u, 38927u)), Struct_1(vec4<f32>(-1076f, 1000f, 725f, -1000f), vec4<f32>(-1540f, -343f, -881f, 771f), 1u, true, vec2<u32>(1u, 1u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(35573u, 31430u, 0u, u_input.c.x), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)) & ~vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), select(vec4<u32>(u_input.c.x, 40848u, u_input.c.x, 0u), ~vec4<u32>(u_input.c.x, 27714u, u_input.c.x, u_input.c.x), any(vec4<bool>(true, false, false, true)))), ~min(~vec4<u32>(6595u, 1u, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, 22673u, 83955u, 1u)))), 19u)];
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, _wgslsmith_mult_u32(~4294967295u, u_input.c.x), 1u)) ^ 23926u;
    var var_2 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(~abs(~var_0.c), 19u)]));
    global0 = array<vec4<i32>, 12>();
    global1 = array<Struct_1, 19>();
    return global1[_wgslsmith_index_u32(u_input.c.x, 19u)];
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    global1 = array<Struct_1, 19>();
    var var_0 = vec2<bool>(false, true);
    var var_1 = var_0.x;
    global0 = array<vec4<i32>, 12>();
    var var_2 = !(!select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, true)), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, false, true, var_0.x)), vec4<bool>(any(vec3<bool>(false, false, var_0.x)), true && var_0.x, false, true && var_0.x), !(!vec4<bool>(true, false, false, var_0.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1262f, 1005f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -329f))), 111f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1181f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(368f - 703f))))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    global0 = array<vec4<i32>, 12>();
    let var_0 = abs(vec3<i32>(_wgslsmith_dot_vec4_i32(-countOneBits(global0[_wgslsmith_index_u32(arg_2.c, 12u)]), u_input.b), _wgslsmith_clamp_i32(~(~arg_1), -2147483647i, ~min(arg_1, -28396i)), 1i));
    var var_1 = min(-(countOneBits(vec3<i32>(-48580i, 54306i, -32109i)) << (~u_input.c % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(u_input.b.xyy, vec3<i32>(_wgslsmith_add_i32(~var_0.x, _wgslsmith_add_i32(-2147483647i, 15845i)), var_0.x, min(reverseBits(1i), -1i))));
    return firstTrailingBit(firstTrailingBit(firstLeadingBit(u_input.a)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -488f), -1007f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(342f - -1633f)));
    let var_1 = 115734u;
    var var_2 = min(~_wgslsmith_sub_i32(-74944i, _wgslsmith_add_i32(u_input.b.x, select(0i, 6576i, true))), i32(-1i) * -2147483647i);
    var var_3 = vec2<i32>(firstTrailingBit(47628i), func_4(_wgslsmith_f_op_f32(round(var_0.x)), u_input.b.x, func_2(), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.c.x, var_1, u_input.c.x, 88049u))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -1142f, var_0.x, var_0.x))), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), true, u_input.c.yz & vec2<u32>(27276u, var_1)))));
    var_2 = -(i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, u_input.a), vec2<i32>(var_3.x, 50988i)), func_4(var_0.x, u_input.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 19u)], Struct_2(Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, -806f, var_0.x), u_input.c.x, false, vec2<u32>(0u, 35259u))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -956f, 713f, var_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -807f), var_0.x, _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1379f, -204f, var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-637f, -392f, var_0.x, 240f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, var_0.x, -1036f))))), vec4<f32>(633f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(491f - var_0.x) * _wgslsmith_f_op_f32(step(var_0.x, var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1707f))), var_0.x, -918f), 1u, true, u_input.c.yy);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = func_2().a.zxx;
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    global1 = array<Struct_1, 19>();
    var var_1 = arg_1.b.x;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1154f + -1609f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1312f - _wgslsmith_f_op_f32(round(392f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1205f, -725f, -2283f, 1976f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1456f, -518f, 1035f, -390f) * vec4<f32>(-557f, 1421f, -703f, -484f))), func_1())) - -1000f));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(437f, var_0.x, 551f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1370f, -1526f, 119f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1911f, -530f, var_0.x), vec3<f32>(var_0.x, -830f, var_0.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 116f, -977f), vec3<f32>(var_0.x, var_0.x, 537f), vec3<bool>(true, false, true))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1158f, var_0.x, -1000f), vec3<f32>(var_0.x, -590f, -290f), vec3<bool>(false, true, false)))))));
    global0 = array<vec4<i32>, 12>();
    let var_1 = min(_wgslsmith_clamp_u32(4294967295u, u_input.c.x, 24054u), _wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_div_u32(~(~4491u), 58801u)));
    var var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wx, u_input.b.x, _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a), global0[_wgslsmith_index_u32(var_1, 12u)]), -7632i ^ u_input.b.x), abs(vec3<i32>(-6125i, u_input.a, u_input.b.x) & u_input.b.xzz) | _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-8994i, -2147483647i, -38533i)), max(vec3<i32>(2147483647i, u_input.a, u_input.b.x), vec3<i32>(-1i, -1i, u_input.a)))), -global0[_wgslsmith_index_u32(var_1, 12u)], ~2147483647i);
}

