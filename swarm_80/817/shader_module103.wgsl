struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6>;

var<private> global1: array<vec2<u32>, 21>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = vec2<i32>(~min(11816i, u_input.c.x), _wgslsmith_add_i32(min(-u_input.c.x & (arg_0.d.a.x << (arg_0.e.x % 32u)), ~2147483647i ^ u_input.c.x), 1i));
    global0 = array<vec3<f32>, 6>();
    let var_1 = _wgslsmith_f_op_f32(-arg_0.a.x);
    let var_2 = arg_0;
    global0 = array<vec3<f32>, 6>();
    return vec3<bool>(_wgslsmith_mult_u32(~(~var_2.e.x), 7367u) != ~0u, true, !var_2.c.a.x);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_3(vec4<i32>(~(~u_input.c.x), u_input.c.x >> (_wgslsmith_mult_u32(~15299u, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)])) % 32u), abs(-_wgslsmith_div_i32(u_input.c.x, u_input.c.x)), countOneBits(u_input.c.x)), Struct_1(func_3(Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-362f, -488f, -1622f, 406f) * vec4<f32>(-443f, 1084f, 348f, 1349f)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, true), vec2<f32>(-833f, -1342f), vec2<f32>(402f, 283f)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false), vec2<f32>(-346f, 2109f), vec2<f32>(380f, 385f)), Struct_3(vec4<i32>(u_input.c.x, 18957i, u_input.c.x, u_input.c.x), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, false), vec2<f32>(1000f, -1000f), vec2<f32>(259f, -1498f)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false), vec2<f32>(-441f, -574f), vec2<f32>(1000f, -1043f)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true), vec2<f32>(-831f, 1247f), vec2<f32>(405f, -369f))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.a.x), vec3<u32>(u_input.b, 0u, 1u)))), select(func_3(Struct_4(vec4<f32>(-2065f, 438f, -486f, -1068f), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false), vec2<f32>(100f, -1304f), vec2<f32>(-1175f, 1103f)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true), vec2<f32>(-880f, -278f), vec2<f32>(-912f, -495f)), Struct_3(vec4<i32>(1i, 1i, -1i, u_input.c.x), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true), vec2<f32>(793f, -1312f), vec2<f32>(-603f, 355f)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true), vec2<f32>(-732f, 1442f), vec2<f32>(-2034f, -1331f)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, false), vec2<f32>(942f, -2804f), vec2<f32>(-651f, -1114f))), vec3<u32>(u_input.a.x, u_input.a.x, u_input.b))).yx, vec2<bool>(true, u_input.b >= u_input.b), vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1539f, -541f) * vec2<f32>(-1081f, 1838f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-707f, 477f) + vec2<f32>(2055f, 1000f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-369f, 813f), vec2<f32>(-773f, 319f)))))), Struct_1(select(vec3<bool>(true, true, true), func_3(Struct_4(vec4<f32>(-185f, 475f, -677f, -795f), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), vec2<f32>(821f, 235f), vec2<f32>(1000f, -971f)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false), vec2<f32>(-1694f, 1370f), vec2<f32>(-638f, 1446f)), Struct_3(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, -40763i), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, true), vec2<f32>(139f, 1375f), vec2<f32>(1382f, 373f)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), vec2<f32>(1553f, -722f), vec2<f32>(-199f, -730f)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true), vec2<f32>(-169f, -904f), vec2<f32>(1155f, 539f))), vec3<u32>(4294967295u, 1u, 5132u))), vec3<bool>(true, true, any(vec2<bool>(true, false)))), !vec2<bool>(u_input.a.x <= 1u, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1074f))), _wgslsmith_f_op_f32(-2637f * -196f))), Struct_1(vec3<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false)), _wgslsmith_div_u32(13798u, u_input.a.x) >= u_input.b, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))), !vec2<bool>(func_3(Struct_4(vec4<f32>(1274f, -360f, 1000f, -1000f), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, false), vec2<f32>(948f, -196f), vec2<f32>(934f, 642f)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false), vec2<f32>(-1417f, 1064f), vec2<f32>(-476f, -186f)), Struct_3(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.c.x), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, true), vec2<f32>(-1109f, 1440f), vec2<f32>(940f, 336f)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false), vec2<f32>(581f, -349f), vec2<f32>(-1000f, 1955f)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true), vec2<f32>(-2508f, 1160f), vec2<f32>(-385f, -138f))), vec3<u32>(0u, 1u, 92865u))).x, true), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1000f), vec2<f32>(1949f, -1000f), true)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1107f, -1136f)))), 198f)));
    global1 = array<vec2<u32>, 21>();
    let var_1 = var_0.c.c.x;
    let var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, -1i, ~u_input.c.x), min(var_0.a.wwy, ~(-vec3<i32>(u_input.c.x, -16371i, u_input.c.x)))), -17130i);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-132f)), _wgslsmith_f_op_f32(var_0.c.c.x + -272f), var_1), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~min(1u, 138437u), 6u)])), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.c.x, -220f) * -105f)), -920f, var_1), ~4294967295u < (~(10011u << (u_input.a.x % 32u)) ^ ~firstTrailingBit(46593u))));
    return vec3<bool>(true, var_0.c.a.x, true);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    global1 = array<vec2<u32>, 21>();
    var var_0 = abs(global1[_wgslsmith_index_u32(min(1u, 50262u) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(12646u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), vec2<u32>(0u, arg_2)), 21u)]) | _wgslsmith_mod_vec2_u32(reverseBits(u_input.a), vec2<u32>(1u | arg_2, _wgslsmith_mult_u32(0u, u_input.b)) >> (~(u_input.a & u_input.a) % vec2<u32>(32u)));
    var_0 = abs(_wgslsmith_sub_vec2_u32(vec2<u32>(select(16594u, var_0.x, arg_1.x) ^ _wgslsmith_div_u32(var_0.x, arg_2), min(~4294967295u, u_input.b)), reverseBits(~countOneBits(u_input.a))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-693f * -568f), Struct_1(!(!arg_1), select(vec2<bool>(arg_0 == -33317i, true), arg_1.xy, arg_1.x), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-540f * -1195f))), 801f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-615f, 478f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1404f, -1000f), vec2<f32>(1377f, -302f)))))), Struct_1(arg_1, !func_3(Struct_4(vec4<f32>(-1498f, -1115f, 1513f, -118f), Struct_1(vec3<bool>(true, arg_1.x, arg_1.x), arg_1.zy, vec2<f32>(1000f, 1139f), vec2<f32>(207f, 1041f)), Struct_1(arg_1, arg_1.zz, vec2<f32>(1160f, 1778f), vec2<f32>(1054f, 625f)), Struct_3(vec4<i32>(-2147483647i, arg_0, u_input.c.x, u_input.c.x), Struct_1(vec3<bool>(arg_1.x, true, arg_1.x), arg_1.yz, vec2<f32>(-1453f, -1000f), vec2<f32>(1534f, 860f)), Struct_1(arg_1, arg_1.yy, vec2<f32>(-230f, 668f), vec2<f32>(226f, 609f)), Struct_1(vec3<bool>(false, arg_1.x, false), vec2<bool>(arg_1.x, true), vec2<f32>(-1046f, -1283f), vec2<f32>(795f, -261f))), vec3<u32>(u_input.a.x, arg_2, 43243u))).xz, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1285f - -403f), 1885f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1476f, -1763f) - vec2<f32>(_wgslsmith_f_op_f32(458f * 493f), 1785f))), Struct_1(vec3<bool>(!arg_1.x, true, func_2().x), select(vec2<bool>(any(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), !arg_1.x), vec2<bool>(arg_1.x, arg_1.x), !all(vec3<bool>(true, true, arg_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-436f, 785f), vec2<f32>(-551f, -1984f), !arg_1.xy))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(_wgslsmith_f_op_f32(abs(-671f)), _wgslsmith_f_op_f32(f32(-1f) * -1300f)))), vec3<i32>(u_input.c.x, 2147483647i, _wgslsmith_sub_i32(~(-1i), _wgslsmith_dot_vec2_i32(u_input.c, firstTrailingBit(vec2<i32>(arg_0, 1014i))))));
    let var_2 = ~arg_0;
    return Struct_1(func_3(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.c.x, -1437f, var_1.c.c.x, var_1.c.d.x)), Struct_1(!vec3<bool>(var_1.d.a.x, arg_1.x, var_1.b.b.x), !arg_1.zy, _wgslsmith_f_op_vec2_f32(var_1.b.c * vec2<f32>(var_1.d.d.x, 216f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.d.x, -1065f))), var_1.b, Struct_3(abs(vec4<i32>(arg_0, var_2, 340i, var_1.e.x)), Struct_1(vec3<bool>(true, var_1.c.a.x, arg_1.x), arg_1.zz, var_1.d.c, var_1.c.c), var_1.d, Struct_1(var_1.b.a, vec2<bool>(true, var_1.c.a.x), var_1.b.c, vec2<f32>(var_1.a, 297f))), ~vec3<u32>(28216u, u_input.a.x, arg_2))), arg_1.xx, _wgslsmith_f_op_vec2_f32(floor(var_1.b.d)), var_1.c.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: i32, arg_3: vec4<u32>) -> Struct_4 {
    global0 = array<vec3<f32>, 6>();
    global0 = array<vec3<f32>, 6>();
    global1 = array<vec2<u32>, 21>();
    return Struct_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1308f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(672f, 869f)), -1301f)), -418f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1414f, 304f)) * 1000f)))), func_4(abs(-2147483647i), select(vec3<bool>(true, true, true), func_2(), !any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), select(_wgslsmith_sub_u32(~u_input.b, 24684u), ~_wgslsmith_sub_u32(57562u, arg_3.x), false)), Struct_1(!vec3<bool>(true, arg_1.x, arg_1.x), arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-417f, 1717f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(705f, 225f) - vec2<f32>(-1156f, -444f)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(713f, 1000f, true)), _wgslsmith_f_op_f32(select(-737f, -304f, arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-135f)) - -1169f))), Struct_3(~firstTrailingBit(vec4<i32>(arg_0.x, u_input.c.x, 2147483647i, arg_2)), func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), vec2<i32>(-1i, -1i)) >> (arg_3.x % 32u), !select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(false, true, arg_1.x), vec3<bool>(true, arg_1.x, false)), 0u), func_4(firstTrailingBit(arg_2), !func_3(Struct_4(vec4<f32>(-659f, 1000f, 325f, 577f), Struct_1(vec3<bool>(arg_1.x, false, arg_1.x), vec2<bool>(false, arg_1.x), vec2<f32>(1305f, 658f), vec2<f32>(-141f, -491f)), Struct_1(vec3<bool>(true, true, arg_1.x), vec2<bool>(arg_1.x, arg_1.x), vec2<f32>(470f, 1000f), vec2<f32>(-1207f, -909f)), Struct_3(vec4<i32>(-2147483647i, -22492i, 2808i, arg_0.x), Struct_1(vec3<bool>(arg_1.x, arg_1.x, true), arg_1, vec2<f32>(1396f, 576f), vec2<f32>(662f, -378f)), Struct_1(vec3<bool>(false, true, arg_1.x), vec2<bool>(true, true), vec2<f32>(-412f, 1000f), vec2<f32>(1000f, 302f)), Struct_1(vec3<bool>(arg_1.x, false, true), arg_1, vec2<f32>(-385f, 125f), vec2<f32>(-813f, 2385f))), arg_3.wyz)), ~u_input.a.x), Struct_1(vec3<bool>(all(vec4<bool>(true, true, true, true)), arg_1.x, false), arg_1, vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(1461f - -1577f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, 107f))))), vec3<u32>(~(~arg_3.x), ~(~_wgslsmith_clamp_u32(arg_3.x, arg_3.x, arg_3.x)), arg_3.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = arg_3.e.x;
    var var_1 = func_1(arg_0, vec2<bool>(arg_3.d.b.a.x, all(arg_3.b.a.zz)), arg_3.d.a.x, (~(~vec4<u32>(1u, var_0, arg_3.e.x, 1u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.e.x, var_0, 4294967295u, 0u), vec4<u32>(1u, arg_3.e.x, u_input.b, var_0)) % vec4<u32>(32u))) | (_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(40619u, u_input.a.x, 0u, 43630u), vec4<u32>(6616u, u_input.b, 44069u, u_input.b)), ~vec4<u32>(77646u, arg_3.e.x, 70539u, 24868u)) >> ((~vec4<u32>(arg_3.e.x, arg_3.e.x, 12747u, u_input.b) ^ ~vec4<u32>(arg_3.e.x, 12473u, 36157u, 0u)) % vec4<u32>(32u)))).d;
    let var_2 = Struct_2(arg_3.c.d.x, func_1(arg_0, func_2().xz, 1i, ~vec4<u32>(109145u, _wgslsmith_clamp_u32(13820u, 4294967295u, 6067u), abs(24144u), 1u)).c, arg_3.b, func_1(select(vec3<i32>(abs(arg_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-23789i, arg_0.x), vec2<i32>(-5377i, u_input.c.x)), 0i & arg_3.d.a.x), arg_0, var_1.a.x == _wgslsmith_clamp_i32(0i, arg_3.d.a.x, 0i)), arg_1.a.xx, firstTrailingBit(arg_3.d.a.x), ~vec4<u32>(min(arg_3.e.x, arg_3.e.x), u_input.a.x, arg_3.e.x, select(var_0, u_input.b, true))).b, firstLeadingBit(arg_0));
    let var_3 = countOneBits(-var_1.a.x ^ 1i);
    let var_4 = true;
    return vec2<bool>(!var_2.c.a.x, func_3(arg_3).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(-547f));
    let var_1 = vec4<bool>(true, all(select(func_5(reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, -50754i)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, true), vec2<f32>(var_0, -310f), vec2<f32>(var_0, var_0)), false, func_1(vec3<i32>(u_input.c.x, -48596i, u_input.c.x), vec2<bool>(true, true), 22818i, vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 49995u))), func_5(-vec3<i32>(-2147483647i, u_input.c.x, -2147483647i), func_4(u_input.c.x, vec3<bool>(false, false, true), 0u), true, func_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec2<bool>(true, false), u_input.c.x, vec4<u32>(0u, u_input.b, 26774u, 1u))), any(func_2().yx))), true, true);
    let var_2 = var_1.xxw;
    global1 = array<vec2<u32>, 21>();
    let var_3 = _wgslsmith_f_op_f32(-var_0);
    var var_4 = false;
    global1 = array<vec2<u32>, 21>();
    var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 1u, min(~max(vec3<u32>(0u, u_input.a.x, 1u), vec3<u32>(u_input.b, 0u, u_input.b)), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(44021u, u_input.b, 1u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))) << ((vec3<u32>(_wgslsmith_div_u32(24191u, u_input.b), u_input.b ^ u_input.a.x, 11048u) | vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), countOneBits(61056u), _wgslsmith_div_u32(u_input.b, 0u))) % vec3<u32>(32u)), u_input.b, _wgslsmith_add_u32(func_1(abs(~vec3<i32>(u_input.c.x, 2147483647i, 4193i)), vec2<bool>(true, true), -2147483647i, min(vec4<u32>(0u, 4294967295u, u_input.b, 0u), vec4<u32>(4434u, 33832u, 0u, 1u) << (vec4<u32>(0u, 26720u, 23420u, u_input.a.x) % vec4<u32>(32u)))).e.x, u_input.a.x));
}

