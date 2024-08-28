struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(594f, 2123f, 673f, -1184f), vec4<f32>(2104f, -626f, -916f, -176f), vec4<f32>(-1000f, 1709f, -193f, 828f), vec4<f32>(-608f, 1147f, -1453f, 493f), vec4<f32>(604f, 878f, 921f, -392f), vec4<f32>(-1483f, -549f, -692f, 949f), vec4<f32>(305f, 1353f, -1663f, 226f), vec4<f32>(1030f, -1646f, 1742f, 1000f), vec4<f32>(1830f, -385f, 871f, 288f), vec4<f32>(1453f, 713f, 669f, -197f), vec4<f32>(-823f, 128f, -144f, 1000f), vec4<f32>(163f, 1461f, -563f, -739f), vec4<f32>(-1625f, -619f, 227f, 771f), vec4<f32>(1477f, 1000f, -1018f, -224f), vec4<f32>(699f, 400f, -449f, 303f), vec4<f32>(255f, 2916f, 948f, 2121f), vec4<f32>(1527f, 521f, 2520f, 1647f), vec4<f32>(-193f, -234f, -988f, -267f), vec4<f32>(-210f, -2399f, -908f, -1533f));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(true, vec3<u32>(0u, 5575u, 0u), vec3<f32>(-397f, 412f, -1000f), 1u, 1557f), Struct_1(true, vec3<u32>(0u, 10208u, 1u), vec3<f32>(-221f, 261f, 699f), 66743u, -923f), Struct_1(false, vec3<u32>(6368u, 4294967295u, 1u), vec3<f32>(-263f, -731f, 736f), 53877u, -1160f), Struct_1(false, vec3<u32>(9618u, 114035u, 58172u), vec3<f32>(-443f, -300f, 1160f), 0u, 847f), Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 30741u), vec3<f32>(256f, 291f, -1092f), 4294967295u, 1540f), Struct_1(false, vec3<u32>(0u, 0u, 0u), vec3<f32>(206f, 640f, -624f), 4294967295u, -1000f), Struct_1(false, vec3<u32>(89729u, 34158u, 29219u), vec3<f32>(-792f, 1218f, 227f), 39037u, -158f), Struct_1(true, vec3<u32>(1u, 15814u, 4294967295u), vec3<f32>(-1791f, 760f, -1512f), 111372u, -173f), Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(368f, -330f, -701f), 4294967295u, 1000f), Struct_1(false, vec3<u32>(60082u, 43792u, 61781u), vec3<f32>(-312f, 746f, 1286f), 49763u, -1064f), Struct_1(true, vec3<u32>(28223u, 25479u, 32476u), vec3<f32>(1344f, -1000f, 412f), 4294967295u, 1202f), Struct_1(true, vec3<u32>(0u, 1u, 19278u), vec3<f32>(1015f, 656f, 1000f), 4294967295u, -740f), Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 35801u), vec3<f32>(-1079f, -945f, -400f), 4294967295u, 835f), Struct_1(false, vec3<u32>(51067u, 1u, 80442u), vec3<f32>(239f, -1258f, -1774f), 70454u, 1066f), Struct_1(false, vec3<u32>(18556u, 4294967295u, 0u), vec3<f32>(1337f, -1167f, 710f), 0u, -113f), Struct_1(true, vec3<u32>(1u, 51674u, 1u), vec3<f32>(-1812f, 1675f, 1627f), 4294967295u, 824f), Struct_1(false, vec3<u32>(21077u, 16463u, 1u), vec3<f32>(501f, -1268f, 243f), 38717u, -445f), Struct_1(true, vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(-1983f, -1761f, -1139f), 78443u, 1377f), Struct_1(true, vec3<u32>(6797u, 61433u, 26156u), vec3<f32>(369f, 307f, -1501f), 42287u, 1969f), Struct_1(false, vec3<u32>(1u, 37840u, 1u), vec3<f32>(-1000f, 993f, 1519f), 91765u, 1946f), Struct_1(false, vec3<u32>(0u, 1u, 4294967295u), vec3<f32>(-812f, -626f, -1495f), 1u, -298f), Struct_1(false, vec3<u32>(3561u, 15042u, 0u), vec3<f32>(189f, 230f, 205f), 18278u, -1076f), Struct_1(true, vec3<u32>(4294967295u, 1u, 35441u), vec3<f32>(166f, 1021f, -964f), 27485u, 1002f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<f32>, arg_3: vec2<u32>) -> u32 {
    global1 = array<vec4<f32>, 19>();
    let var_0 = arg_2.x;
    let var_1 = ~_wgslsmith_mod_vec3_i32(abs(~vec3<i32>(-2147483647i, 7791i, u_input.c.x) ^ ~vec3<i32>(u_input.c.x, -2147483647i, -42072i)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.c.x), vec3<i32>(u_input.c.x, -1i, u_input.c.x))));
    global0 = vec2<bool>(all(!select(!vec4<bool>(arg_1, arg_0.x, global0.x, false), select(vec4<bool>(arg_0.x, true, true, false), vec4<bool>(global0.x, true, false, arg_0.x), arg_1), arg_3.x > 4294967295u)), !arg_1);
    var var_2 = global2[_wgslsmith_index_u32(reverseBits(~u_input.a.x), 23u)];
    return _wgslsmith_mult_u32(arg_3.x, ~(~(arg_3.x >> (var_2.b.x % 32u)) << (~(~0u) % 32u)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec3<bool> {
    var var_0 = u_input.b.x;
    global0 = select(!vec2<bool>(any(!vec3<bool>(global0.x, false, false)), any(!vec3<bool>(true, false, global0.x))), !vec2<bool>(true, global0.x), true);
    global0 = select(vec2<bool>((global0.x && true) & all(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, global0.x, false))), all(select(vec2<bool>(false, global0.x), vec2<bool>(false, false), select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), true)))), !(!vec2<bool>(all(vec3<bool>(global0.x, true, false)), any(vec2<bool>(global0.x, true)))), !(!(!(!vec2<bool>(true, global0.x)))));
    let var_1 = Struct_3(Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(12425u, u_input.b.x, 34887u, 43180u), _wgslsmith_add_vec4_u32(vec4<u32>(25081u, 22607u, u_input.b.x, arg_1.x), u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-500f, 819f, 299f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-476f, 1678f, 948f) * vec3<f32>(-829f, 2263f, -568f)), true)) + vec3<f32>(1f, 1f, 1f))));
    let var_2 = u_input.c.x;
    return vec3<bool>(true, false, !any(vec2<bool>(all(vec4<bool>(global0.x, false, false, false)), any(vec2<bool>(false, true)))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: i32) -> vec3<f32> {
    global2 = array<Struct_1, 23>();
    var var_0 = select(~u_input.a.yxy, u_input.a.www, arg_0);
    let var_1 = u_input.a;
    var_0 = ~firstLeadingBit(u_input.a.wzx);
    var var_2 = select(vec3<bool>(!((arg_0 | arg_0) && global0.x), -1521f > _wgslsmith_f_op_f32(trunc(-556f)), false), vec3<bool>(any(!select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), vec2<bool>(false, arg_0))), false, true), func_3(var_1.x & func_2(select(vec2<bool>(true, global0.x), vec2<bool>(arg_0, global0.x), vec2<bool>(true, arg_0)), true, vec4<f32>(-962f, 1000f, 258f, -290f), vec2<u32>(u_input.d, var_1.x) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), ~vec2<u32>(0u, _wgslsmith_add_u32(var_0.x, u_input.a.x))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-446f, -360f, -962f) + vec3<f32>(995f, -728f, -1347f)))), _wgslsmith_div_vec3_f32(vec3<f32>(337f, -898f, -256f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(227f, -686f, -174f))), !all(vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1474f, -916f, 676f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-240f, -1399f, -1646f))))), false)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -180f), 443f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -593f) - _wgslsmith_f_op_f32(select(-225f, 762f, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f) * -293f)))));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_4) -> Struct_1 {
    global0 = !(!(!vec2<bool>(!global0.x, global0.x)));
    let var_0 = vec3<u32>((_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 1u, u_input.d, 41183u), u_input.a) & ~4294967295u) & u_input.a.x, _wgslsmith_add_u32(~(~u_input.b.x), arg_1), _wgslsmith_mult_u32(3846u, 51217u)) << (max(vec3<u32>(~u_input.a.x, 0u, ~1u ^ ~arg_1), ~u_input.a.zwx) % vec3<u32>(32u));
    let var_1 = -2121f;
    var var_2 = vec2<u32>(arg_1, var_0.x);
    var var_3 = ~((-firstLeadingBit(arg_0) >> (17906u % 32u)) << (select(_wgslsmith_clamp_u32(46894u, min(var_0.x, 0u), var_0.x), 4294967295u, !arg_3.a.x) % 32u));
    return global2[_wgslsmith_index_u32(abs(reverseBits(_wgslsmith_sub_u32(~func_2(arg_3.a.xy, arg_3.a.x, vec4<f32>(151f, -218f, arg_2.x, 432f), var_0.xx), _wgslsmith_add_u32(0u, arg_1 | arg_1)))), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x;
    global2 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(534f, 759f, 1904f), vec3<f32>(-1000f, 1421f, 1521f), global0.x)))))) - vec3<f32>(240f, 367f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -846f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -100f) * _wgslsmith_f_op_f32(trunc(1797f))), -498f, 138f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -151f), -1219f, _wgslsmith_f_op_f32(1000f + -945f)), vec3<f32>(_wgslsmith_div_f32(972f, 3025f), -824f, _wgslsmith_f_op_f32(floor(627f)))))));
    let var_2 = func_4(23393i, 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(sign(-832f)), _wgslsmith_f_op_f32(var_1.x * var_1.x)))) + _wgslsmith_f_op_vec3_f32(func_1((u_input.b.x <= 105159u) && global0.x, vec2<u32>(~4294967295u, select(u_input.d, 67263u, false)), -u_input.c.x))), Struct_4(select(!(!vec3<bool>(global0.x, global0.x, false)), !(!vec3<bool>(global0.x, global0.x, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(global0.x, true, global0.x), global0.x), func_3(0u, u_input.b), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, false))))));
    var var_3 = !all(vec2<bool>(true, false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.b.x, 0u, var_2.b.x), var_2.b.x, 1i, u_input.a);
}

