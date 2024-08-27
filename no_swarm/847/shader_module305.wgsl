struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false));

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(0u, vec3<f32>(1184f, -205f, 702f), -1188f, vec3<f32>(-419f, -1000f, 635f), false)), Struct_2(Struct_1(1u, vec3<f32>(-173f, -666f, 604f), 407f, vec3<f32>(-138f, -203f, -336f), false)), Struct_2(Struct_1(1u, vec3<f32>(881f, 572f, -499f), -858f, vec3<f32>(-934f, 627f, 474f), false)), Struct_2(Struct_1(22043u, vec3<f32>(1810f, -1701f, -114f), 488f, vec3<f32>(887f, -426f, -1149f), false)), Struct_2(Struct_1(50500u, vec3<f32>(1090f, 190f, -1053f), -322f, vec3<f32>(536f, 371f, -910f), true)), Struct_2(Struct_1(16959u, vec3<f32>(-1518f, 1000f, 817f), -512f, vec3<f32>(1000f, 313f, -191f), true)), Struct_2(Struct_1(15713u, vec3<f32>(882f, 1623f, 771f), 1219f, vec3<f32>(343f, -1010f, 467f), true)), Struct_2(Struct_1(4294967295u, vec3<f32>(-1488f, -787f, -159f), 239f, vec3<f32>(824f, 1441f, 1519f), false)), Struct_2(Struct_1(44603u, vec3<f32>(-1044f, -495f, 134f), -742f, vec3<f32>(955f, 658f, 789f), true)), Struct_2(Struct_1(4294967295u, vec3<f32>(-2368f, -1314f, -1376f), 320f, vec3<f32>(624f, 1157f, -528f), false)), Struct_2(Struct_1(36356u, vec3<f32>(-114f, 299f, -542f), -1000f, vec3<f32>(-189f, 863f, 332f), false)), Struct_2(Struct_1(56070u, vec3<f32>(776f, -245f, 1915f), -2010f, vec3<f32>(-826f, -1254f, 187f), false)), Struct_2(Struct_1(4294967295u, vec3<f32>(-1847f, -2727f, -1000f), -1651f, vec3<f32>(-1000f, 185f, -1251f), true)), Struct_2(Struct_1(50904u, vec3<f32>(-544f, 1000f, 641f), 162f, vec3<f32>(3304f, 413f, 490f), false)), Struct_2(Struct_1(10112u, vec3<f32>(706f, 602f, -508f), -164f, vec3<f32>(-179f, 240f, -501f), false)), Struct_2(Struct_1(12549u, vec3<f32>(545f, 243f, 1000f), -311f, vec3<f32>(-348f, -156f, -701f), true)), Struct_2(Struct_1(19896u, vec3<f32>(626f, 1000f, -152f), -1593f, vec3<f32>(-221f, -116f, -890f), false)), Struct_2(Struct_1(568u, vec3<f32>(146f, -362f, 328f), -1025f, vec3<f32>(-1263f, 1000f, -555f), false)), Struct_2(Struct_1(4294967295u, vec3<f32>(-290f, -873f, 595f), 333f, vec3<f32>(1447f, 2346f, 2070f), false)), Struct_2(Struct_1(4294967295u, vec3<f32>(-2100f, -999f, 402f), -2813f, vec3<f32>(738f, -397f, -872f), false)), Struct_2(Struct_1(24611u, vec3<f32>(-219f, -893f, -1000f), -882f, vec3<f32>(1217f, 326f, 2967f), true)), Struct_2(Struct_1(4294967295u, vec3<f32>(266f, -1000f, -2009f), -1000f, vec3<f32>(353f, 225f, -1214f), true)), Struct_2(Struct_1(71010u, vec3<f32>(-2639f, -686f, 1322f), -979f, vec3<f32>(-458f, -199f, -371f), true)), Struct_2(Struct_1(48868u, vec3<f32>(-685f, -653f, -948f), -2182f, vec3<f32>(-1000f, 290f, -894f), false)), Struct_2(Struct_1(1u, vec3<f32>(251f, -1000f, 448f), -1000f, vec3<f32>(-2044f, 1000f, 392f), true)), Struct_2(Struct_1(4294967295u, vec3<f32>(1113f, -390f, 107f), 1000f, vec3<f32>(1062f, 434f, 2731f), true)), Struct_2(Struct_1(1u, vec3<f32>(-734f, 1305f, -948f), 1985f, vec3<f32>(394f, 1375f, 257f), false)), Struct_2(Struct_1(5708u, vec3<f32>(-767f, -736f, 1220f), -1854f, vec3<f32>(820f, 2190f, 1000f), true)), Struct_2(Struct_1(874u, vec3<f32>(-1003f, -1000f, -418f), 736f, vec3<f32>(200f, 196f, 621f), true)), Struct_2(Struct_1(1u, vec3<f32>(-777f, 719f, 1724f), -712f, vec3<f32>(1000f, 483f, -1454f), true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_4) -> vec4<f32> {
    global2 = array<Struct_2, 30>();
    global1 = array<vec4<bool>, 12>();
    var var_0 = Struct_2(Struct_1(~_wgslsmith_mult_u32(124680u, 1u) | arg_2.c.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1427f, arg_0.b.b.x, arg_3.a)), _wgslsmith_f_op_vec3_f32(arg_1.b * vec3<f32>(-1982f, arg_0.a.x, arg_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.d.x - arg_3.a), arg_2.a.x))), _wgslsmith_f_op_vec3_f32(exp2(arg_0.c.d)), any(!global1[_wgslsmith_index_u32(arg_0.c.a, 12u)])));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.a, abs(4294967295u), 93558u, var_0.a.a | 18749u) << (max(vec4<u32>(1u, 4294967295u, 33196u, 34765u), vec4<u32>(var_0.a.a, var_0.a.a, arg_0.b.a, 97362u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.a, 29614u, var_0.a.a), vec3<u32>(0u, arg_0.c.a, arg_2.c.a)), countOneBits(~u_input.e), ~countOneBits(var_0.a.a), ~44640u >> (firstTrailingBit(4294967295u) % 32u)), ~abs(select(vec4<u32>(15662u, 0u, arg_2.b.a, 1u), vec4<u32>(var_0.a.a, 150793u, var_0.a.a, 49787u), arg_0.c.e))), firstTrailingBit(~(~vec4<u32>(u_input.e, 60240u, var_0.a.a, 0u))));
    var var_2 = -50513i;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.b.x, _wgslsmith_f_op_f32(abs(-909f)), _wgslsmith_f_op_f32(arg_1.c * arg_0.b.b.x), _wgslsmith_f_op_f32(global0.x - arg_3.a)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.a, -1721f, var_0.a.b.x, 2414f), vec4<f32>(arg_3.a, -1000f, arg_2.b.c, var_0.a.b.x), true)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1169f, -352f, 476f, -1271f), vec4<f32>(300f, -583f, 1000f, arg_0.c.c)))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.d.x, -858f, 1317f, var_0.a.c) + vec4<f32>(-308f, var_0.a.c, 3140f, arg_2.b.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1284f, global0.x, 632f, arg_1.c))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(-arg_2.c.b.x), _wgslsmith_div_f32(-1064f, var_0.a.d.x), _wgslsmith_f_op_f32(max(-591f, arg_3.a)))))));
}

fn func_2() -> i32 {
    let var_0 = min(-1i, -u_input.a.x);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec3<f32>(347f, -547f, 1000f), Struct_1(u_input.b, vec3<f32>(-273f, global0.x, global0.x), global0.x, global0.zzy, false), Struct_1(u_input.d, vec3<f32>(183f, global0.x, global0.x), -505f, global0.zzy, true)), Struct_1(u_input.e, vec3<f32>(867f, global0.x, global0.x), global0.x, vec3<f32>(global0.x, global0.x, global0.x), false), Struct_3(vec3<f32>(654f, -577f, global0.x), Struct_1(95507u, global0.zzy, global0.x, vec3<f32>(global0.x, 818f, global0.x), false), Struct_1(71713u, vec3<f32>(-127f, global0.x, global0.x), global0.x, vec3<f32>(global0.x, -987f, global0.x), true)), Struct_4(global0.x)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-379f, 591f, -108f, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -643f, 1280f, global0.x), vec4<f32>(-480f, global0.x, global0.x, 1519f))))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(721f, global0.x), _wgslsmith_f_op_f32(select(-756f, global0.x, false))), _wgslsmith_f_op_f32(-681f - global0.x), global0.x, _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x * 1000f), global0.x, global0.x, global0.x) - _wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec3<f32>(313f, global0.x, global0.x), Struct_1(4294967295u, global0.yzz, -2154f, vec3<f32>(global0.x, 1000f, global0.x), false), Struct_1(25287u, vec3<f32>(global0.x, -1074f, 198f), global0.x, vec3<f32>(global0.x, global0.x, 301f), false)), Struct_1(u_input.e, global0.xyy, -454f, global0.zzy, true), Struct_3(vec3<f32>(-745f, global0.x, global0.x), Struct_1(1u, vec3<f32>(513f, -810f, global0.x), global0.x, global0.xzz, true), Struct_1(4294967295u, global0.yyy, global0.x, vec3<f32>(-687f, 1198f, global0.x), true)), Struct_4(1617f))))));
    global2 = array<Struct_2, 30>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-1820f + -169f), global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) - global0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(trunc(global0.x))))))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.zyx, global0.wxw, true))), Struct_1(_wgslsmith_mult_u32(1u, 10762u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-567f, -633f, global0.x) * vec3<f32>(-184f, -641f, -716f)), 879f, _wgslsmith_f_op_vec3_f32(global0.zzz - vec3<f32>(global0.x, global0.x, global0.x)), false), Struct_1(u_input.e, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(769f, -1254f, -749f), vec3<f32>(global0.x, -508f, -136f), vec3<bool>(false, false, true))), 524f, global0.wzy, true)), Struct_1(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(u_input.e, 31240u, u_input.b), ~1u), vec3<f32>(_wgslsmith_f_op_f32(trunc(2054f)), -142f, _wgslsmith_f_op_f32(-722f * global0.x)), -104f, _wgslsmith_f_op_vec3_f32(global0.yyw * _wgslsmith_f_op_vec3_f32(-global0.xwz)), true), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1142f, global0.x) + global0.xww)), Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 441f, global0.x) - global0.yzz), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec3_f32(-global0.yyx), all(vec2<bool>(true, false))), Struct_1(_wgslsmith_div_u32(u_input.b, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - global0.wyw), _wgslsmith_f_op_f32(-global0.x), vec3<f32>(global0.x, 684f, 1311f), true)), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -824f)))).x);
    return u_input.a.x;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: bool) -> Struct_4 {
    global2 = array<Struct_2, 30>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)), -759f))));
    return var_0;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-157f + 793f), _wgslsmith_f_op_f32(-global0.x)))))));
    global2 = array<Struct_2, 30>();
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(271f, -283f, global0.x, 218f) * vec4<f32>(-1234f, 404f, var_0, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -1360f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), global0.x, _wgslsmith_f_op_f32(-var_0), 358f) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(var_0, 879f), _wgslsmith_div_f32(-1343f, global0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 290f, -107f, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(1863f * global0.x))))));
    var var_1 = func_4(_wgslsmith_add_i32(func_2(), u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(31447u, u_input.d, u_input.d), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e, 24806u, 34886u), vec3<u32>(0u, u_input.b, u_input.b) >> (vec3<u32>(u_input.d, 1u, u_input.e) % vec3<u32>(32u)))) >> (_wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, u_input.b, u_input.b)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.d), vec3<u32>(u_input.e, u_input.e, 52517u))) % vec3<u32>(32u)), any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))));
    var var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a * 2267f))) - var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(251f * _wgslsmith_f_op_f32(f32(-1f) * -1894f)) + -1861f)), Struct_1(_wgslsmith_clamp_u32(u_input.d, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 13455u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.d) ^ vec3<u32>(u_input.e, u_input.d, 33964u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.yxw), _wgslsmith_f_op_vec3_f32(sign(global0.zwy))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(abs(1160f)))), _wgslsmith_f_op_vec3_f32(-global0.zwz), !all(vec2<bool>(false, true))), Struct_1(u_input.b, global0.zww, -548f, vec3<f32>(589f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0, global0.x)), _wgslsmith_f_op_f32(sign(418f)))), var_0), !(!all(vec2<bool>(true, false)))));
    return _wgslsmith_f_op_f32(floor(global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.e, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), global0.x)), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(392f * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(func_1()))), 1000f, global0.wyw, any(vec4<bool>(true, true, true, true)) & true);
    global2 = array<Struct_2, 30>();
    var var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(max(-2465i, -23381i), _wgslsmith_sub_i32(0i, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, 1i, -1i), vec4<i32>(u_input.a.x, 1i, u_input.c, -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(1i, -19310i)))), countOneBits(vec4<i32>(u_input.c, u_input.a.x | u_input.c, firstTrailingBit(1i), 3028i))), ~(-firstTrailingBit(vec4<i32>(u_input.c, -12848i, u_input.a.x, -10925i))));
    global1 = array<vec4<bool>, 12>();
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, 190f, -1000f, -1738f), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec3<f32>(global0.x, 699f, 1000f), Struct_1(1u, global0.wzy, 118f, vec3<f32>(120f, 1689f, var_0.b.x), false), var_0), Struct_1(39918u, var_0.d, -771f, var_0.d, true), Struct_3(var_0.b, Struct_1(23961u, vec3<f32>(global0.x, global0.x, 604f), global0.x, var_0.d, false), Struct_1(69545u, vec3<f32>(552f, -761f, -781f), global0.x, global0.yyy, var_0.e)), Struct_4(1000f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1340f, 170f, 382f, -883f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(803f, 1035f, -534f, 131f)) * vec4<f32>(-1134f, var_0.b.x, global0.x, 1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1768f, -875f, -644f, -1000f), vec4<f32>(var_0.b.x, var_0.b.x, var_0.c, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.x, -1044f, var_0.b.x, global0.x))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_f_op_f32(step(var_0.d.x, global0.x)), _wgslsmith_f_op_f32(-798f - global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 241f, 721f, -433f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-489f, var_0.c, -109f, -1085f) + vec4<f32>(-858f, global0.x, var_0.c, var_0.b.x))) - _wgslsmith_f_op_vec4_f32(func_3(Struct_3(var_0.d, Struct_1(var_0.a, var_0.b, global0.x, var_0.d, true), Struct_1(u_input.e, var_0.b, 577f, global0.wxy, var_0.e)), var_0, Struct_3(vec3<f32>(-459f, global0.x, global0.x), Struct_1(39322u, vec3<f32>(global0.x, 1489f, -1464f), -1812f, vec3<f32>(3256f, -807f, 250f), var_0.e), var_0), Struct_4(global0.x))))), ((-2147483647i > _wgslsmith_mod_i32(var_1.x, var_1.x)) & all(select(vec4<bool>(var_0.e, var_0.e, var_0.e, var_0.e), vec4<bool>(true, var_0.e, true, false), global1[_wgslsmith_index_u32(622u, 12u)]))) || true));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_1()), 429f, 1000f, _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-598f, global0.x, global0.x, global0.x)))), vec4<f32>(_wgslsmith_f_op_f32(-278f - 674f), var_0.c, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-2492f - global0.x)))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-678f, var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-562f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_f_op_f32(-global0.x)), global1[_wgslsmith_index_u32(abs(4294967295u), 12u)]));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, var_0.c, var_0.b.x, var_0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-880f, var_0.c, var_0.d.x, var_0.b.x)), true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -1215f, global0.x, 1140f) + vec4<f32>(353f, -183f, global0.x, 930f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1631f, global0.x, -1032f, global0.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(625f, 2630f, -428f, 130f))))));
    global2 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec4<u32>(firstLeadingBit(u_input.e), firstTrailingBit(4294967295u), _wgslsmith_clamp_u32(4294967295u, 26907u, 23630u), min(4294967295u, 12756u)), vec4<u32>(4294967295u, 4294967295u, 80369u, var_0.a) ^ _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.b, 44945u, 19285u)), vec4<u32>(u_input.d, 27833u, 4294967295u, var_0.a))), ~(vec4<u32>(var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(15550u, u_input.e, u_input.b), vec3<u32>(14089u, 35917u, u_input.b)), _wgslsmith_add_u32(1u, var_0.a), ~4294967295u) >> (vec4<u32>(_wgslsmith_add_u32(3219u, u_input.e), ~var_0.a, u_input.b, var_0.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(var_0.c - -609f));
}

