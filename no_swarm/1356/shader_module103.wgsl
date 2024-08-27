struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(false, 13754u), vec4<f32>(185f, -426f, 333f, -1028f), 617f, true, 1359f);

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(false, 4294967295u), vec4<f32>(-1493f, -933f, 1000f, -1000f), -466f, false, 499f), Struct_3(Struct_1(false, 1u), vec4<f32>(-111f, -563f, -588f, -1179f), 738f, false, -1178f), Struct_3(Struct_1(false, 23359u), vec4<f32>(1000f, -1186f, 1051f, 568f), 1000f, false, 1114f), Struct_3(Struct_1(true, 10325u), vec4<f32>(1576f, -312f, -362f, 2979f), 1078f, true, -353f), Struct_3(Struct_1(false, 0u), vec4<f32>(1706f, -220f, -717f, 1000f), 1009f, true, 1000f), Struct_3(Struct_1(false, 15586u), vec4<f32>(-2400f, -1570f, 818f, 204f), -1065f, false, 1030f), Struct_3(Struct_1(true, 4294967295u), vec4<f32>(855f, 421f, -332f, 852f), -1000f, true, -615f), Struct_3(Struct_1(false, 42583u), vec4<f32>(-1308f, 635f, -673f, -811f), 706f, false, -1000f), Struct_3(Struct_1(true, 43288u), vec4<f32>(-136f, -1633f, -1258f, -174f), 1609f, true, -1481f), Struct_3(Struct_1(false, 51067u), vec4<f32>(408f, 1772f, 228f, 191f), 1000f, true, 1916f), Struct_3(Struct_1(false, 0u), vec4<f32>(942f, -341f, 1523f, 544f), 578f, false, -1205f), Struct_3(Struct_1(false, 0u), vec4<f32>(1000f, -234f, -915f, 1000f), -552f, true, -538f), Struct_3(Struct_1(true, 25355u), vec4<f32>(1885f, -229f, -141f, -701f), 369f, false, -1000f), Struct_3(Struct_1(false, 6455u), vec4<f32>(291f, 666f, -140f, 1188f), -374f, true, 305f), Struct_3(Struct_1(true, 11962u), vec4<f32>(859f, 1621f, -141f, 702f), 1225f, true, -538f), Struct_3(Struct_1(false, 45105u), vec4<f32>(-257f, 1314f, 403f, -2390f), -1256f, true, -620f), Struct_3(Struct_1(true, 82354u), vec4<f32>(1000f, -1032f, 1407f, -1003f), -514f, true, -1838f), Struct_3(Struct_1(false, 13687u), vec4<f32>(1866f, -1832f, -195f, 1000f), 1654f, true, -305f), Struct_3(Struct_1(true, 22554u), vec4<f32>(1946f, -1000f, -362f, 1000f), 145f, true, 1000f), Struct_3(Struct_1(false, 0u), vec4<f32>(1000f, -424f, 188f, -1659f), -540f, false, 753f), Struct_3(Struct_1(true, 11744u), vec4<f32>(-1296f, 1000f, -288f, 704f), -1937f, false, 1577f));

var<private> global2: Struct_4;

var<private> global3: vec4<u32> = vec4<u32>(72393u, 4294967295u, 0u, 12613u);

var<private> global4: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(false, 29291u), vec4<f32>(317f, -644f, 133f, 280f), 666f, true, -126f), Struct_3(Struct_1(true, 11467u), vec4<f32>(197f, -286f, 322f, 1119f), 1000f, false, -524f), Struct_3(Struct_1(false, 2176u), vec4<f32>(2099f, -719f, 1001f, -260f), -140f, false, -220f), Struct_3(Struct_1(false, 0u), vec4<f32>(382f, -192f, -370f, -1633f), -1000f, false, 766f), Struct_3(Struct_1(true, 27944u), vec4<f32>(-1003f, -588f, -780f, -392f), -1221f, true, 214f), Struct_3(Struct_1(false, 45007u), vec4<f32>(-129f, 333f, 979f, -1586f), -393f, false, -1014f), Struct_3(Struct_1(false, 3132u), vec4<f32>(-681f, 1683f, 972f, 1264f), 376f, true, -812f), Struct_3(Struct_1(false, 9626u), vec4<f32>(-855f, -634f, 670f, 812f), -741f, false, 137f), Struct_3(Struct_1(false, 282u), vec4<f32>(210f, -777f, -245f, 757f), 1526f, true, 186f), Struct_3(Struct_1(true, 4294967295u), vec4<f32>(-716f, -643f, -478f, -488f), -1000f, false, 1082f), Struct_3(Struct_1(false, 4294967295u), vec4<f32>(-137f, 205f, -2443f, 1354f), 1584f, true, 904f), Struct_3(Struct_1(false, 0u), vec4<f32>(-236f, 956f, 169f, -615f), -861f, false, -182f), Struct_3(Struct_1(false, 4294967295u), vec4<f32>(-240f, -408f, -2562f, 192f), 170f, false, 306f), Struct_3(Struct_1(true, 1u), vec4<f32>(1420f, -696f, 1274f, -560f), -1565f, false, 819f), Struct_3(Struct_1(false, 0u), vec4<f32>(-534f, 1567f, -1289f, -342f), 1288f, true, 811f), Struct_3(Struct_1(true, 0u), vec4<f32>(-1000f, 355f, -1094f, 658f), 422f, false, -792f), Struct_3(Struct_1(true, 1u), vec4<f32>(1011f, 736f, -209f, 2130f), 555f, false, -281f), Struct_3(Struct_1(false, 9826u), vec4<f32>(-330f, -1000f, 212f, 1164f), 765f, true, -780f), Struct_3(Struct_1(true, 1321u), vec4<f32>(457f, 1000f, 336f, -167f), -564f, true, -622f), Struct_3(Struct_1(false, 1u), vec4<f32>(-144f, 157f, -1333f, 2670f), 210f, false, 756f), Struct_3(Struct_1(true, 1u), vec4<f32>(-967f, -686f, -1713f, 371f), -379f, false, -223f), Struct_3(Struct_1(false, 25830u), vec4<f32>(-767f, 1232f, 1025f, 781f), -796f, true, -418f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    global2 = Struct_4(arg_0.a, arg_0.a.b, Struct_1(all(vec2<bool>(!global2.a.a, true)), arg_0.b));
    var var_0 = Struct_2(Struct_1(!(all(vec4<bool>(global0.a.a, true, false, true)) | !global2.c.a), countOneBits(_wgslsmith_clamp_u32(u_input.d, max(33112u, 38766u), ~arg_1))), _wgslsmith_dot_vec3_u32(global3.yyx, u_input.e.yyz));
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -1i, 36694i), vec3<i32>(u_input.c, -14340i, 0i))), -vec3<i32>(2147483647i, 10994i, u_input.c)) >> (u_input.e.wwx % vec3<u32>(32u)), -_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, -1i, u_input.b.x) << (_wgslsmith_div_vec3_u32(vec3<u32>(96892u, global3.x, arg_1), vec3<u32>(9829u, global0.a.b, 2006u)) % vec3<u32>(32u)), min(vec3<i32>(-1i, u_input.b.x, u_input.b.x), firstTrailingBit(vec3<i32>(0i, u_input.b.x, 47735i)))));
    global3 = u_input.e;
    let var_2 = vec3<f32>(global0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2392f * _wgslsmith_f_op_f32(f32(-1f) * -440f)) + _wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-158f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -474f)))) * 1f));
    return ~_wgslsmith_mod_u32(global3.x, ~_wgslsmith_div_u32(22720u, abs(75239u)));
}

fn func_2() -> Struct_4 {
    global4 = array<Struct_3, 22>();
    var var_0 = Struct_4(Struct_1((u_input.b.x == -2147483647i) || true, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(countOneBits(4858u), global0.a.b), firstLeadingBit(58274u & u_input.a.x), global3.x)), global0.a.b, global0.a);
    global0 = global4[_wgslsmith_index_u32(u_input.d, 22u)];
    global0 = global4[_wgslsmith_index_u32(4294967295u, 22u)];
    let var_1 = Struct_2(var_0.c, ~_wgslsmith_add_u32(8969u, global2.c.b));
    return Struct_4(Struct_1(true, 1u), ~min(0u, func_3(var_1, ~1u)), var_0.a);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool) -> Struct_4 {
    return func_2();
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>) -> u32 {
    global3 = vec4<u32>(~((_wgslsmith_add_u32(arg_0.b, 24530u) ^ select(4294967295u, 1973u, global2.c.a)) >> (global2.b % 32u)), _wgslsmith_mod_u32((u_input.a.x & 0u) << (4294967295u % 32u), ~arg_1.x >> (0u % 32u)), 1u, ~min(func_2().a.b, ~(~27637u)));
    global2 = Struct_4(Struct_1(!(all(vec3<bool>(arg_0.c.a, global0.d, arg_0.c.a)) & true), _wgslsmith_div_u32(arg_1.x >> (func_2().c.b % 32u), arg_0.b << (~82450u % 32u))), 4294967295u, Struct_1(!(!(!global0.a.a)), ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(global0.a.b, global3.x)), vec2<u32>(69240u, global3.x))));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(global0.c + global0.b.x)))), _wgslsmith_f_op_f32(round(1232f)));
    global2 = Struct_4(Struct_1(true, ~(~_wgslsmith_add_u32(58230u, global2.a.b))), _wgslsmith_sub_u32(_wgslsmith_add_u32(~arg_1.x, 4294967295u), _wgslsmith_div_u32(arg_0.b, firstLeadingBit(~45060u))), func_1(-536f, _wgslsmith_sub_i32(~u_input.b.x, -1i), arg_0.c.a).c);
    global0 = global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mult_u32(~(13586u << (0u % 32u)), _wgslsmith_mult_u32(arg_1.x, _wgslsmith_dot_vec3_u32(arg_1.wxx, u_input.e.wyy)))), 21u)];
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(u_input.c, u_input.b.x), u_input.b.x, -reverseBits(0i)) == abs(-2147483647i), global2.a.b);
    global3 = vec4<u32>(0u, min(u_input.e.x, func_4(func_1(_wgslsmith_f_op_f32(-global0.b.x), -u_input.c, true), abs(~vec4<u32>(u_input.e.x, global0.a.b, u_input.e.x, 2595u)))), u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_0.b, 73623u), global3.x, func_3(Struct_2(Struct_1(true, 73504u), 1u), var_0.b)), vec3<u32>(var_0.b, _wgslsmith_mult_u32(global0.a.b, global2.c.b), global0.a.b ^ 0u)), ~(~(~u_input.a.x))));
    var var_1 = u_input.e;
    global0 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_4(Struct_4(func_2().a, 100814u, global0.a), abs(vec4<u32>(global2.c.b, 1u, _wgslsmith_clamp_u32(40300u, 0u, global3.x), 26932u))), ~64294u >> (_wgslsmith_add_u32(~abs(85759u), ~u_input.a.x | (4294967295u | var_0.b)) % 32u)), 22u)];
    let var_2 = ~select(vec3<i32>(-18412i, u_input.b.x, firstLeadingBit(u_input.b.x)), vec3<i32>(-51251i & u_input.c, u_input.c, u_input.b.x), vec3<bool>(false, _wgslsmith_mult_u32(1u, var_1.x) < ~63491u, global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~u_input.b.x)) & min(max(u_input.c, _wgslsmith_dot_vec2_i32(var_2.yz, var_2.zx)), -21055i), 60273u);
}

