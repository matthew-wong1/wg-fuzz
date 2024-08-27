struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_4,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_5, 13> = array<Struct_5, 13>(Struct_5(vec2<f32>(256f, 109f), vec2<f32>(219f, -967f), Struct_4(vec3<bool>(true, true, true), Struct_2(vec2<u32>(19047u, 10635u), 1i, Struct_1(vec2<f32>(-129f, -917f), -1000f)), Struct_1(vec2<f32>(-359f, 654f), 845f)), 2147483647i, 4159i), Struct_5(vec2<f32>(-731f, 1231f), vec2<f32>(1127f, -988f), Struct_4(vec3<bool>(true, false, false), Struct_2(vec2<u32>(1u, 1u), 106507i, Struct_1(vec2<f32>(-112f, -749f), -1292f)), Struct_1(vec2<f32>(1000f, -1514f), -581f)), 43262i, i32(-2147483648)), Struct_5(vec2<f32>(223f, 129f), vec2<f32>(1313f, 1000f), Struct_4(vec3<bool>(true, true, true), Struct_2(vec2<u32>(52302u, 61799u), 40072i, Struct_1(vec2<f32>(-661f, -135f), 270f)), Struct_1(vec2<f32>(664f, -645f), 1732f)), 2147483647i, -55064i), Struct_5(vec2<f32>(845f, -2187f), vec2<f32>(1143f, -636f), Struct_4(vec3<bool>(true, true, false), Struct_2(vec2<u32>(47185u, 1u), 2147483647i, Struct_1(vec2<f32>(1375f, 1000f), 572f)), Struct_1(vec2<f32>(-804f, -1000f), 889f)), -26136i, -53598i), Struct_5(vec2<f32>(542f, 162f), vec2<f32>(1000f, -979f), Struct_4(vec3<bool>(true, true, false), Struct_2(vec2<u32>(1u, 15232u), -1i, Struct_1(vec2<f32>(-423f, -900f), -705f)), Struct_1(vec2<f32>(850f, -1564f), -235f)), 2147483647i, -1i), Struct_5(vec2<f32>(-692f, 379f), vec2<f32>(-1000f, -1000f), Struct_4(vec3<bool>(false, true, false), Struct_2(vec2<u32>(4294967295u, 43052u), -17778i, Struct_1(vec2<f32>(-411f, 323f), -149f)), Struct_1(vec2<f32>(1420f, 1368f), -283f)), -2534i, i32(-2147483648)), Struct_5(vec2<f32>(-999f, -1120f), vec2<f32>(1443f, -2420f), Struct_4(vec3<bool>(false, true, true), Struct_2(vec2<u32>(63994u, 0u), 13137i, Struct_1(vec2<f32>(-1145f, -136f), 717f)), Struct_1(vec2<f32>(-1206f, 1330f), -2342f)), -1i, i32(-2147483648)), Struct_5(vec2<f32>(1209f, 502f), vec2<f32>(230f, -364f), Struct_4(vec3<bool>(false, false, true), Struct_2(vec2<u32>(59377u, 1u), 5783i, Struct_1(vec2<f32>(-457f, -231f), 1000f)), Struct_1(vec2<f32>(-948f, -1000f), -580f)), -1i, -1i), Struct_5(vec2<f32>(-113f, -1500f), vec2<f32>(312f, -191f), Struct_4(vec3<bool>(false, true, false), Struct_2(vec2<u32>(11780u, 4294967295u), 0i, Struct_1(vec2<f32>(-330f, -728f), -1595f)), Struct_1(vec2<f32>(-1125f, 1147f), -1000f)), -7921i, 1i), Struct_5(vec2<f32>(350f, 877f), vec2<f32>(-1360f, -2167f), Struct_4(vec3<bool>(false, true, false), Struct_2(vec2<u32>(37385u, 4294967295u), i32(-2147483648), Struct_1(vec2<f32>(1507f, -2118f), -1131f)), Struct_1(vec2<f32>(540f, 2690f), 168f)), -1i, i32(-2147483648)), Struct_5(vec2<f32>(-666f, 306f), vec2<f32>(-1406f, -463f), Struct_4(vec3<bool>(false, true, true), Struct_2(vec2<u32>(1u, 2012u), -1i, Struct_1(vec2<f32>(1225f, -1154f), -883f)), Struct_1(vec2<f32>(-824f, -316f), 1000f)), 19256i, -67741i), Struct_5(vec2<f32>(-1539f, 175f), vec2<f32>(555f, 399f), Struct_4(vec3<bool>(true, true, false), Struct_2(vec2<u32>(0u, 4294967295u), -2867i, Struct_1(vec2<f32>(-1407f, -1000f), 1378f)), Struct_1(vec2<f32>(1000f, 1206f), -908f)), -28600i, -31828i), Struct_5(vec2<f32>(-1318f, -505f), vec2<f32>(-1638f, -874f), Struct_4(vec3<bool>(true, true, true), Struct_2(vec2<u32>(28347u, 0u), -2703i, Struct_1(vec2<f32>(-1000f, -831f), 1187f)), Struct_1(vec2<f32>(766f, -104f), 630f)), 1i, 2147483647i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    global0 = select(~firstTrailingBit(0i), u_input.a, true) | u_input.a;
    global1 = array<Struct_5, 13>();
    global1 = array<Struct_5, 13>();
    global0 = ~_wgslsmith_mult_i32(u_input.a, -u_input.a);
    global1 = array<Struct_5, 13>();
    return vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(567f, 1918f, -137f, -456f))), vec4<f32>(199f, -925f, -118f, 1228f)))))));
    var var_1 = Struct_5(var_0.xx, vec2<f32>(173f, var_0.x), Struct_4(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true, all(vec4<bool>(true, true, true, true))), Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u)), u_input.c.x, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 336f) - vec2<f32>(var_0.x, var_0.x)), 777f)), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(var_0.x, -430f)))), var_0.x)), 22390i, -2147483647i);
    var var_2 = Struct_3(false, false);
    let var_3 = -(var_1.e >> (941u % 32u));
    var var_4 = Struct_4(!(!(!select(var_1.c.a, var_1.c.a, vec3<bool>(var_2.b, false, false)))), var_1.c.b, var_1.c.c);
    return var_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_4) -> vec2<u32> {
    let var_0 = Struct_3(true, arg_2.a.x | (arg_2.a.x == !any(vec4<bool>(true, arg_2.a.x, arg_2.a.x, false))));
    global0 = u_input.b;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c.a + arg_0)), arg_2.c.b);
    let var_2 = arg_2.b.a >> ((_wgslsmith_clamp_vec2_u32(max(arg_2.b.a, _wgslsmith_mult_vec2_u32(vec2<u32>(21117u, 56142u), vec2<u32>(arg_2.b.a.x, 46754u))), reverseBits(arg_2.b.a), ~vec2<u32>(1u, 1u)) & _wgslsmith_sub_vec2_u32(vec2<u32>(1u, abs(0u)), arg_2.b.a)) % vec2<u32>(32u));
    var var_3 = select(max(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, arg_2.b.a.x, 77203u) << (vec3<u32>(31274u, 90551u, arg_2.b.a.x) % vec3<u32>(32u)), countOneBits(vec3<u32>(61008u, arg_2.b.a.x, 32179u)))), firstTrailingBit(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, arg_2.b.a.x, 1u), vec3<u32>(1u, arg_2.b.a.x, var_2.x))))), ~vec3<u32>(max(~0u, ~arg_2.b.a.x), _wgslsmith_sub_u32(~arg_2.b.a.x, var_2.x ^ var_2.x), ~19113u), !arg_2.a.x);
    return ~var_3.zx;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(824f)), -267f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-363f, -243f)), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec2<f32>(690f, 661f), 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))), Struct_4(!select(vec3<bool>(arg_2.a, arg_2.a, true), vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(false, arg_2.a, false)), Struct_2(~vec2<u32>(3176u, 32000u), u_input.b, Struct_1(vec2<f32>(988f, -1689f), 1301f)), Struct_1(vec2<f32>(-899f, 1231f), _wgslsmith_f_op_f32(f32(-1f) * -544f)))), 9893i, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -285f), _wgslsmith_div_f32(-1928f, 1000f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(267f, -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1573f)))));
    let var_1 = _wgslsmith_div_u32(arg_0, firstLeadingBit(54422u));
    var_0 = Struct_2(abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), var_0.a >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), var_0.a)), -2147483647i, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.c.a)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(525f, var_0.c.b)))))), _wgslsmith_f_op_f32(ceil(var_0.c.a.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-990f + var_0.c.b) + 1818f) + _wgslsmith_f_op_vec2_f32(func_2(var_0.c)).x));
    let var_3 = var_0.a;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(292f - -1754f)))), var_0.c.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec3<bool> {
    global1 = array<Struct_5, 13>();
    global1 = array<Struct_5, 13>();
    let var_0 = ~4290u;
    var var_1 = Struct_2(~(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0, 50650u), vec2<u32>(var_0, 43034u)))), _wgslsmith_div_i32(firstTrailingBit(u_input.b), arg_2), func_1(~_wgslsmith_sub_u32(var_0, 0u), 1i, Struct_3(arg_1, -2354f > arg_0.a.x)));
    var_1 = Struct_2(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 15382u), vec3<u32>(var_0, var_0, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(54451u, var_0, var_1.a.x), vec3<u32>(var_0, 4294967295u, var_1.a.x), vec3<u32>(5839u, var_1.a.x, 42471u))) >> (~var_1.a.x % 32u), 0u), ~(~(-u_input.b)), func_1(~(~var_1.a.x) | var_0, 4561i, Struct_3(any(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), false)), arg_1)));
    return !vec3<bool>(select(-36936i <= u_input.a, false, true && !arg_1), arg_1, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let var_1 = -_wgslsmith_add_vec2_i32(u_input.c.zx, ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0, var_0), u_input.c.yy, u_input.c.xw) ^ _wgslsmith_mod_vec2_i32(u_input.d, u_input.d)));
    let var_2 = 1787f;
    let var_3 = firstLeadingBit(~(~vec3<u32>(max(21842u, 59837u), min(14815u, 0u), firstLeadingBit(4294967295u))));
    let var_4 = Struct_3(true && any(func_5(func_1(24085u, u_input.d.x, Struct_3(true, false)), true, u_input.c.x | -1i)), !all(vec3<bool>(true, true, true)));
    var var_5 = Struct_4(select(!vec3<bool>(select(var_4.b, false, var_4.a), true, var_4.b), select(select(!vec3<bool>(var_4.b, var_4.b, true), vec3<bool>(var_4.b, var_4.a, var_4.a), !vec3<bool>(var_4.a, var_4.a, true)), func_5(Struct_1(vec2<f32>(var_2, 781f), -164f), true, u_input.d.x), vec3<bool>(any(vec4<bool>(var_4.b, var_4.a, var_4.a, var_4.b)), !var_4.b, true)), true), Struct_2(~max(vec2<u32>(var_3.x, 0u), var_3.yz) | ~_wgslsmith_add_vec2_u32(var_3.zx, var_3.xy), var_0, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-3256f, var_2))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -833f) - vec2<f32>(var_2, -795f))), _wgslsmith_f_op_f32(round(-1480f)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 496f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 2717f))) - vec2<f32>(_wgslsmith_f_op_f32(select(2211f, -294f, false)), _wgslsmith_f_op_f32(var_2 - var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_2) - _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_5.b.a.x, 69576u, !var_5.a.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(~82346u, 1041u), var_3.xy), var_5.c.b, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_5.c.a) + _wgslsmith_f_op_vec2_f32(var_5.b.c.a + var_5.b.c.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.b.c.b, 1382f))))), reverseBits(_wgslsmith_div_u32(~var_3.x, ~38784u & _wgslsmith_sub_u32(var_5.b.a.x, 17904u))));
}

