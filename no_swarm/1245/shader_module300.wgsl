struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec3<i32>(-30436i, -43053i, 10135i), vec4<f32>(-338f, -1817f, 284f, 491f), -1i), Struct_2(vec3<i32>(-15763i, i32(-2147483648), -42131i), vec4<f32>(-958f, 236f, -545f, -860f), 3263i), Struct_2(vec3<i32>(44480i, 47265i, 2147483647i), vec4<f32>(625f, -534f, -1239f, -1129f), 1i), Struct_2(vec3<i32>(30518i, 0i, i32(-2147483648)), vec4<f32>(1878f, 1666f, 1606f, -1944f), 0i), Struct_2(vec3<i32>(2147483647i, 1i, 0i), vec4<f32>(753f, -1000f, 1000f, 1215f), -1i), Struct_2(vec3<i32>(24686i, 14510i, 2147483647i), vec4<f32>(-2740f, 585f, -1000f, -697f), i32(-2147483648)), Struct_2(vec3<i32>(48784i, 0i, -60291i), vec4<f32>(-280f, 404f, 1515f, -356f), -1i), Struct_2(vec3<i32>(1i, 2147483647i, -28770i), vec4<f32>(927f, -1537f, 468f, 168f), 43807i), Struct_2(vec3<i32>(34033i, 47798i, -24284i), vec4<f32>(399f, -569f, -278f, 508f), i32(-2147483648)), Struct_2(vec3<i32>(i32(-2147483648), -14853i, 49462i), vec4<f32>(162f, 800f, -1321f, 680f), -12920i), Struct_2(vec3<i32>(-7009i, -844i, -1229i), vec4<f32>(1996f, -1581f, 564f, 1692f), 34188i), Struct_2(vec3<i32>(25963i, 32861i, 35741i), vec4<f32>(139f, -703f, 727f, -2064f), 3275i));

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<f32>(-575f, 1448f), vec3<i32>(1i, i32(-2147483648), 4432i)), Struct_1(vec2<f32>(593f, -480f), vec3<i32>(-1i, 2147483647i, -1i)), Struct_1(vec2<f32>(953f, -2034f), vec3<i32>(0i, 24707i, 26392i)), Struct_1(vec2<f32>(-747f, 605f), vec3<i32>(13032i, -39000i, 35939i)), Struct_1(vec2<f32>(902f, -728f), vec3<i32>(-1i, 15306i, 3976i)), Struct_1(vec2<f32>(137f, -496f), vec3<i32>(i32(-2147483648), i32(-2147483648), -392i)), Struct_1(vec2<f32>(-150f, 352f), vec3<i32>(28362i, 2147483647i, -1i)), Struct_1(vec2<f32>(1108f, 922f), vec3<i32>(-3952i, 1i, 41942i)), Struct_1(vec2<f32>(1000f, -1000f), vec3<i32>(-28223i, -1i, 21196i)), Struct_1(vec2<f32>(-164f, -2516f), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i)), Struct_1(vec2<f32>(-777f, -1126f), vec3<i32>(1i, i32(-2147483648), i32(-2147483648))), Struct_1(vec2<f32>(-1136f, -1429f), vec3<i32>(1i, 0i, 2147483647i)), Struct_1(vec2<f32>(2397f, -369f), vec3<i32>(10241i, -43976i, i32(-2147483648))), Struct_1(vec2<f32>(-685f, -958f), vec3<i32>(-1i, 2147483647i, -14888i)), Struct_1(vec2<f32>(-1000f, 153f), vec3<i32>(2147483647i, 77711i, -70777i)), Struct_1(vec2<f32>(-1143f, -183f), vec3<i32>(77i, 2147483647i, 40848i)), Struct_1(vec2<f32>(1030f, -1095f), vec3<i32>(-13625i, 15085i, 2147483647i)), Struct_1(vec2<f32>(284f, -366f), vec3<i32>(i32(-2147483648), 2147483647i, -1i)), Struct_1(vec2<f32>(-628f, -1145f), vec3<i32>(-5158i, 22858i, -1i)), Struct_1(vec2<f32>(-1000f, 725f), vec3<i32>(2147483647i, 32080i, 26272i)), Struct_1(vec2<f32>(153f, 1393f), vec3<i32>(-4167i, 63147i, 1i)), Struct_1(vec2<f32>(-1622f, 182f), vec3<i32>(2147483647i, 37548i, -34811i)), Struct_1(vec2<f32>(-553f, 397f), vec3<i32>(29313i, 2147483647i, 2147483647i)), Struct_1(vec2<f32>(998f, 419f), vec3<i32>(17553i, 2147483647i, -1i)), Struct_1(vec2<f32>(459f, -1683f), vec3<i32>(913i, i32(-2147483648), i32(-2147483648))), Struct_1(vec2<f32>(-981f, 676f), vec3<i32>(-51302i, 2147483647i, 1i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = global2[_wgslsmith_index_u32(u_input.e, 26u)];
    global0 = array<Struct_2, 12>();
    var var_1 = _wgslsmith_sub_u32(30002u, ~u_input.d.x);
    let var_2 = arg_2.b.wwx;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b.x)))))), 167f));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1594f), arg_2.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(select(arg_0.x, var_0.a.x, arg_1.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1250f))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    let var_0 = _wgslsmith_mult_vec3_i32(~(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(arg_1.a, arg_2.b)), reverseBits(vec3<i32>(-23596i, 8400i, firstLeadingBit(u_input.a.x))));
    var var_1 = arg_2;
    var_1 = arg_2;
    return select(vec4<bool>((-19884i >> (u_input.e % 32u)) < 1i, false, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), false), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), !vec4<bool>(any(vec3<bool>(true, false, false)), true, true, any(vec4<bool>(false, true, false, false))), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(false, false, false, false), any(vec3<bool>(true, true, true))), !any(vec3<bool>(true, false, true))));
}

fn func_2() -> vec4<bool> {
    global1 = array<Struct_2, 32>();
    var var_0 = !(!all(vec3<bool>(true, true, true))) | true;
    var var_1 = Struct_2(u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(979f, -2234f, -493f, 381f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(318f, 2289f, 1204f, 667f))) * _wgslsmith_div_vec4_f32(vec4<f32>(1137f, 1051f, -1546f, 457f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(414f, 675f, 1975f, -3299f), vec4<f32>(332f, -295f, 1000f, -833f), vec4<bool>(false, false, false, false))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1732f))), -2043f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2254f, -1000f)), -276f)), ~u_input.a.x & 2147483647i);
    let var_2 = u_input.b;
    let var_3 = Struct_2(vec3<i32>(~1i, max(var_1.a.x, firstLeadingBit(1i)), -22029i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.b, var_1.b)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(322f, -1188f, 1666f, -356f))))), _wgslsmith_f_op_vec4_f32(step(var_1.b, _wgslsmith_f_op_vec4_f32(abs(var_1.b)))))), var_1.c);
    return select(func_4(Struct_2(var_2.zyx, var_3.b, var_2.x), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.e >> (14713u % 32u), ~u_input.e), 12u)], Struct_1(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, -461f, -346f, var_3.b.x)), vec2<bool>(false, false), Struct_2(vec3<i32>(-3246i, 2147483647i, 295i), vec4<f32>(var_1.b.x, var_3.b.x, -104f, -556f), 21304i))), vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, var_2.x), 35104i, var_2.x << (u_input.e % 32u)))), vec4<bool>(!select(true, false, true) | false, all(vec4<bool>(true, u_input.d.x == u_input.e, all(vec2<bool>(false, false)), true)), true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), !(!all(vec4<bool>(false, true, false, false))));
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0, ~u_input.d.x, ~(~min(~arg_0, 1u))), 32u)];
    let var_1 = global1[_wgslsmith_index_u32(~arg_0, 32u)];
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1397f, var_0.b.x)))), 981f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x - var_0.b.x), _wgslsmith_f_op_f32(ceil(-826f))))), _wgslsmith_div_f32(-954f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-245f, var_0.b.x)))))));
    var var_3 = global2[_wgslsmith_index_u32(arg_0, 26u)];
    global1 = array<Struct_2, 32>();
    return global1[_wgslsmith_index_u32(u_input.e, 32u)];
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> StorageBuffer {
    let var_0 = firstTrailingBit(u_input.d.x);
    var var_1 = func_5(32658u, func_2(), ~firstLeadingBit(vec3<i32>(arg_3 & -6966i, 8766i, -2147483647i)));
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-654f, -173f) + arg_2.a) + var_1.b.wx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-961f, arg_2.a.x)))) * _wgslsmith_div_vec2_f32(vec2<f32>(395f, arg_2.a.x), _wgslsmith_f_op_vec2_f32(var_1.b.wz + vec2<f32>(arg_2.a.x, var_1.b.x))))), vec3<i32>(var_1.a.x, 0i, _wgslsmith_div_i32(~_wgslsmith_div_i32(var_1.a.x, u_input.a.x), 1i)));
    let var_3 = func_5(~var_0, !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), ~vec3<i32>(2147483647i, i32(-1i) * -1i, ~(-1i)));
    var var_4 = arg_2;
    return StorageBuffer(~_wgslsmith_div_i32(_wgslsmith_sub_i32(11692i, arg_3), 8598i) ^ arg_3, var_3.a.xz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 12>();
    global1 = array<Struct_2, 32>();
    var var_0 = true;
    var var_1 = -u_input.c.x;
    global0 = array<Struct_2, 12>();
    let var_2 = ~u_input.e;
    let x = u_input.a;
    s_output = func_1(~abs(vec4<u32>(~u_input.e, 9687u << (var_2 % 32u), ~0u, 69553u)), ~abs(~u_input.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1070f, -1741f))))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, 17133i) | u_input.c, u_input.c)), u_input.b.x);
}

