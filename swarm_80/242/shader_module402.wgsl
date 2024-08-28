struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13>;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<u32>(0u, 49937u, 17625u), 5522u, vec3<u32>(1u, 26352u, 4294967295u), vec3<f32>(-384f, 886f, 718f), vec2<i32>(-19595i, 1498i)), Struct_1(vec3<u32>(31260u, 4294967295u, 4294967295u), 32116u, vec3<u32>(34299u, 19953u, 41182u), vec3<f32>(-530f, 535f, 504f), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec3<u32>(4294967295u, 4623u, 10026u), 27543u, vec3<u32>(1u, 0u, 25930u), vec3<f32>(-1437f, -858f, 1095f), vec2<i32>(-1i, 1i)), Struct_1(vec3<u32>(1u, 0u, 0u), 15265u, vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(219f, 1645f, 1285f), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec3<u32>(1u, 14726u, 4294967295u), 1u, vec3<u32>(1u, 4294967295u, 1u), vec3<f32>(1055f, 1475f, 732f), vec2<i32>(-29824i, 2147483647i)), Struct_1(vec3<u32>(4294967295u, 43655u, 349u), 4294967295u, vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(535f, 222f, 1000f), vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec3<u32>(22057u, 12700u, 23220u), 4294967295u, vec3<u32>(4294967295u, 14665u, 1u), vec3<f32>(271f, -1021f, -846f), vec2<i32>(-13374i, -1i)), Struct_1(vec3<u32>(38968u, 40802u, 4294967295u), 7257u, vec3<u32>(32483u, 18923u, 27550u), vec3<f32>(-329f, -127f, -710f), vec2<i32>(3909i, 14290i)), Struct_1(vec3<u32>(1u, 35323u, 65506u), 4294967295u, vec3<u32>(4294967295u, 0u, 0u), vec3<f32>(536f, -260f, -1440f), vec2<i32>(47375i, 0i)), Struct_1(vec3<u32>(0u, 0u, 0u), 1u, vec3<u32>(0u, 0u, 40662u), vec3<f32>(-133f, -130f, -3101f), vec2<i32>(-22045i, i32(-2147483648))), Struct_1(vec3<u32>(4294967295u, 52581u, 18959u), 57204u, vec3<u32>(1u, 0u, 54756u), vec3<f32>(2802f, 1705f, -2257f), vec2<i32>(-1i, 2147483647i)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), 4294967295u, vec3<u32>(0u, 4294967295u, 4294967295u), vec3<f32>(1689f, -397f, -1757f), vec2<i32>(0i, 1i)), Struct_1(vec3<u32>(0u, 1u, 1u), 4294967295u, vec3<u32>(19393u, 15914u, 19526u), vec3<f32>(1029f, 1841f, -1333f), vec2<i32>(-1i, 22056i)), Struct_1(vec3<u32>(0u, 56828u, 3882u), 0u, vec3<u32>(773u, 4294967295u, 4294967295u), vec3<f32>(1388f, -200f, -1071f), vec2<i32>(-2149i, 2147483647i)), Struct_1(vec3<u32>(20435u, 3906u, 46136u), 0u, vec3<u32>(25362u, 1u, 1u), vec3<f32>(1723f, 655f, 374f), vec2<i32>(-2413i, 2147483647i)), Struct_1(vec3<u32>(55301u, 0u, 0u), 0u, vec3<u32>(4294967295u, 1u, 0u), vec3<f32>(700f, -1073f, -625f), vec2<i32>(i32(-2147483648), 15827i)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), 4294967295u, vec3<u32>(25263u, 129788u, 4294967295u), vec3<f32>(1263f, 709f, -664f), vec2<i32>(23180i, 1i)), Struct_1(vec3<u32>(1u, 14204u, 4294967295u), 7440u, vec3<u32>(33582u, 4182u, 0u), vec3<f32>(1534f, 601f, 1939f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), 4294967295u, vec3<u32>(4294967295u, 102472u, 1u), vec3<f32>(-696f, -677f, -165f), vec2<i32>(-5004i, -5917i)), Struct_1(vec3<u32>(4294967295u, 47372u, 33747u), 40312u, vec3<u32>(65780u, 0u, 1u), vec3<f32>(-240f, 684f, 1000f), vec2<i32>(-1i, -1i)));

var<private> global2: i32 = -1i;

var<private> global3: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4) -> vec3<f32> {
    let var_0 = Struct_4(Struct_3(arg_1.a.b.a, arg_1.b.c, arg_1.b.c, arg_1.b.a.e.x, arg_1.b.e), arg_1.b, arg_0.zz, ~min(~arg_1.a.a.a, arg_0.xwy));
    let var_1 = u_input.c;
    global3 = -1000f;
    global3 = -357f;
    let var_2 = arg_1.b.c.a;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(497f, _wgslsmith_f_op_f32(-1107f - var_2.d.x)) * var_0.b.c.a.d.x)), 113f, arg_1.a.b.a.d.x);
}

fn func_3() -> vec3<u32> {
    global2 = u_input.b.x;
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-303f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1645f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1814f * -576f) - _wgslsmith_f_op_f32(333f - 1776f)))))));
    let var_1 = Struct_4(Struct_3(Struct_1(firstTrailingBit(~vec3<u32>(0u, u_input.a, u_input.a)), _wgslsmith_sub_u32(~u_input.a, min(u_input.a, 0u)), vec3<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a), reverseBits(4294967295u), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(350f, 103f, 1000f), vec3<f32>(-935f, 406f, 1578f)))), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b.x), u_input.b.wyx))), Struct_2(global1[_wgslsmith_index_u32(reverseBits(3570u), 20u)], firstTrailingBit(abs(-2147483647i)), vec3<i32>(u_input.d.x, u_input.c.x >> (u_input.a % 32u), 0i), _wgslsmith_add_u32(select(0u, u_input.a, false), 44923u), max(~vec3<u32>(1u, 6514u, 8264u), vec3<u32>(4294967295u, 31894u, u_input.a) | vec3<u32>(51388u, u_input.a, u_input.a))), Struct_2(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 7782u, 37255u), vec3<u32>(u_input.a, 3585u, u_input.a)), firstTrailingBit(1u), vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_f32(vec3<f32>(454f, -2561f, 2092f), vec3<f32>(485f, -1873f, -1504f)), global0[_wgslsmith_index_u32(max(4294967295u, 4294967295u), 13u)]), -(16128i | u_input.b.x), vec3<i32>(-32290i, -29265i, u_input.b.x), 3563u, vec3<u32>(u_input.a, u_input.a << (u_input.a % 32u), u_input.a)), i32(-1i) * -1100i, select(vec2<bool>(true, true), vec2<bool>(u_input.c.x < u_input.d.x, true), true)), Struct_3(global1[_wgslsmith_index_u32(8920u, 20u)], Struct_2(global1[_wgslsmith_index_u32(abs(1u >> (u_input.a % 32u)), 20u)], _wgslsmith_add_i32(20679i, _wgslsmith_dot_vec2_i32(u_input.b.wy, global0[_wgslsmith_index_u32(1u, 13u)])), ~u_input.b.wxy, _wgslsmith_sub_u32(u_input.a, u_input.a >> (28896u % 32u)), firstLeadingBit(~vec3<u32>(0u, 38651u, u_input.a))), Struct_2(global1[_wgslsmith_index_u32(u_input.a ^ _wgslsmith_mod_u32(1u, 37471u), 20u)], 2147483647i, u_input.b.wxx, u_input.a, abs(firstLeadingBit(vec3<u32>(122802u, u_input.a, 0u)))), ~(min(u_input.d.x, u_input.b.x) | 1i), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(any(vec4<bool>(false, true, false, true)), true))), vec2<u32>(4294967295u, ~(~1u)), vec3<u32>(~(~u_input.a), 1u, ~_wgslsmith_sub_u32(0u, u_input.a >> (u_input.a % 32u))));
    let var_2 = 162f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, var_1.a.c.a.d.x)) * _wgslsmith_f_op_f32(255f * 277f))), _wgslsmith_f_op_f32(-var_1.a.b.a.d.x)));
    return reverseBits(abs(var_1.a.a.a));
}

fn func_1() -> Struct_4 {
    global0 = array<vec2<i32>, 13>();
    global1 = array<Struct_1, 20>();
    var var_0 = Struct_1(vec3<u32>(u_input.a, 28122u, 0u), 4294967295u, ~(vec3<u32>(u_input.a, 0u ^ u_input.a, _wgslsmith_div_u32(33197u, 55961u)) >> (((vec3<u32>(u_input.a, 14016u, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, u_input.a)) << (vec3<u32>(0u, u_input.a, 14445u) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), vec3<f32>(1053f, 464f, -1141f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_4(Struct_3(global1[_wgslsmith_index_u32(87153u, 20u)], Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.a, vec3<u32>(28807u, u_input.a, 3571u), vec3<f32>(-1814f, -1385f, 265f), vec2<i32>(-2340i, u_input.d.x)), -11643i, u_input.b.wzy, 4294967295u, vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, 49195u), 1u, vec3<u32>(0u, 18051u, u_input.a), vec3<f32>(-1273f, -926f, -1697f), u_input.d), u_input.d.x, u_input.b.wxw, 51550u, vec3<u32>(u_input.a, 61775u, 1u)), 78613i, vec2<bool>(true, false)), Struct_3(global1[_wgslsmith_index_u32(u_input.a, 20u)], Struct_2(Struct_1(vec3<u32>(84658u, u_input.a, u_input.a), 17898u, vec3<u32>(u_input.a, 19481u, 4294967295u), vec3<f32>(1241f, 509f, -1475f), u_input.b.xz), 20049i, u_input.b.yxy, u_input.a, vec3<u32>(4294967295u, u_input.a, 1u)), Struct_2(global1[_wgslsmith_index_u32(12705u, 20u)], u_input.c.x, vec3<i32>(-1i, u_input.c.x, 27951i), u_input.a, vec3<u32>(2141u, u_input.a, 1u)), 0i, vec2<bool>(false, true)), vec2<u32>(28370u, 1072u), vec3<u32>(u_input.a, u_input.a, u_input.a)))))))), vec2<i32>(reverseBits(1i), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.zzx, u_input.b.yzw), _wgslsmith_mult_vec3_i32(vec3<i32>(-17292i, u_input.b.x, u_input.c.x), vec3<i32>(u_input.b.x, 38568i, u_input.c.x)))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_2(firstTrailingBit(vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), Struct_4(Struct_3(Struct_1(vec3<u32>(u_input.a, var_0.b, var_0.b), 1u, var_0.a, vec3<f32>(1000f, 548f, var_0.d.x), u_input.c), Struct_2(global1[_wgslsmith_index_u32(28950u, 20u)], -2147483647i, u_input.b.www, var_0.c.x, vec3<u32>(31171u, 0u, 0u)), Struct_2(global1[_wgslsmith_index_u32(u_input.a, 20u)], -10798i, u_input.b.xxz, 1u, var_0.c), -2147483647i, vec2<bool>(false, false)), Struct_3(Struct_1(var_0.c, u_input.a, var_0.a, var_0.d, vec2<i32>(u_input.b.x, var_0.e.x)), Struct_2(Struct_1(vec3<u32>(var_0.c.x, var_0.c.x, 19202u), var_0.a.x, var_0.a, vec3<f32>(-470f, 1000f, -245f), vec2<i32>(9009i, var_0.e.x)), 66227i, u_input.b.wzy, 0u, var_0.a), Struct_2(Struct_1(vec3<u32>(var_0.a.x, u_input.a, u_input.a), 72600u, vec3<u32>(u_input.a, var_0.c.x, var_0.c.x), var_0.d, u_input.b.yx), u_input.c.x, u_input.b.ywz, u_input.a, vec3<u32>(54363u, var_0.b, 13430u)), 0i, vec2<bool>(false, true)), ~vec2<u32>(var_0.c.x, u_input.a), vec3<u32>(var_0.b, 4294967295u, var_0.a.x)))).x, _wgslsmith_f_op_f32(907f * 1f), any(vec3<bool>(true, false, any(vec2<bool>(true, true)))))));
    var var_1 = vec2<bool>(true, true);
    return Struct_4(Struct_3(global1[_wgslsmith_index_u32(79548u, 20u)], Struct_2(global1[_wgslsmith_index_u32(var_0.b, 20u)], ~(0i ^ u_input.c.x), u_input.b.yzw, var_0.c.x, firstTrailingBit(~var_0.c)), Struct_2(global1[_wgslsmith_index_u32(~u_input.a, 20u)], select(u_input.b.x ^ 2147483647i, -var_0.e.x, var_1.x), reverseBits(~u_input.b.xzx), _wgslsmith_div_u32(u_input.a, ~var_0.b), max(var_0.c << (var_0.c % vec3<u32>(32u)), func_3())), _wgslsmith_dot_vec3_i32(~u_input.b.yxx, -abs(u_input.b.xxz)), vec2<bool>(!(true || var_1.x), !any(vec3<bool>(false, false, var_1.x)))), Struct_3(Struct_1(~var_0.a, 0u, ~vec3<u32>(u_input.a, 4294967295u, u_input.a), _wgslsmith_div_vec3_f32(var_0.d, _wgslsmith_f_op_vec3_f32(var_0.d + vec3<f32>(var_0.d.x, var_0.d.x, 1000f))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, firstLeadingBit(u_input.a)), 13u)]), Struct_2(Struct_1(vec3<u32>(43336u, 5685u, 1u), u_input.a ^ 31147u, var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(115f, var_0.d.x, var_0.d.x) * var_0.d), ~vec2<i32>(var_0.e.x, -2147483647i)), -1i >> (~u_input.a % 32u), u_input.b.zww, ~u_input.a, vec3<u32>(1u, abs(1u), u_input.a)), Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, 13021u), var_0.c, vec3<u32>(0u, 4294967295u, u_input.a)), u_input.a & u_input.a, vec3<u32>(u_input.a, 0u, u_input.a) ^ var_0.c, vec3<f32>(-1000f, -728f, var_0.d.x), var_0.e), firstLeadingBit(u_input.d.x), vec3<i32>(2147483647i, ~u_input.b.x, var_0.e.x), 0u >> (u_input.a % 32u), ~firstTrailingBit(vec3<u32>(u_input.a, 10758u, u_input.a))), -_wgslsmith_dot_vec3_i32(select(u_input.b.wyx, u_input.b.xyw, true), u_input.b.wwx << (var_0.a % vec3<u32>(32u))), !vec2<bool>(var_1.x, var_1.x || false)), vec2<u32>(~max(_wgslsmith_mult_u32(4294967295u, u_input.a), var_0.c.x), u_input.a), abs(vec3<u32>(_wgslsmith_clamp_u32(58813u & var_0.c.x, 0u, ~u_input.a), 15173u, 98324u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_4) -> vec2<f32> {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.b.a.d.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_2.b.a.d.x, arg_0.a.d.x)))), -2630f, !(!arg_2.a.e.x)))));
    global2 = _wgslsmith_clamp_i32(-min(-2147483647i, firstLeadingBit(-1i)), arg_0.c.x, 2147483647i);
    var var_0 = Struct_1(max(~_wgslsmith_sub_vec3_u32(arg_0.e, vec3<u32>(arg_0.a.c.x, 4294967295u, arg_2.a.c.d)) ^ ~_wgslsmith_mod_vec3_u32(arg_0.e, arg_2.b.a.c), arg_2.b.a.c), abs(~(~arg_0.a.a.x)) | arg_2.a.b.e.x, vec3<u32>(countOneBits(75027u), select(arg_0.e.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_2.c.x, 4294967295u, 0u), vec4<u32>(arg_0.d, arg_0.a.a.x, 39738u, arg_0.d)), all(select(vec3<bool>(false, arg_2.a.e.x, false), vec3<bool>(true, false, arg_2.a.e.x), vec3<bool>(false, arg_2.a.e.x, false)))), 136855u), arg_2.a.c.a.d, abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(11126i, 0i), min(-vec2<i32>(arg_2.a.a.e.x, arg_0.a.e.x), firstTrailingBit(vec2<i32>(arg_2.b.b.a.e.x, arg_2.a.a.e.x))))));
    let var_1 = vec4<i32>(u_input.c.x, 1i, -1i, -_wgslsmith_div_i32(-1i, u_input.b.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1011f, -881f)) + var_0.d.x)), -532f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-987f - arg_0.a.d.x)), _wgslsmith_f_op_f32(-239f + -1000f)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.x, arg_0.a.d.x, arg_0.a.d.x), vec3<f32>(_wgslsmith_f_op_f32(501f * _wgslsmith_f_op_f32(var_0.d.x - var_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -264f), 432f), !vec3<bool>(any(vec3<bool>(true, arg_2.a.e.x, arg_2.b.e.x)), true, var_1.x < u_input.b.x))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.d.xy) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * vec2<f32>(arg_2.a.a.d.x, 698f)))), vec2<f32>(func_1().b.b.a.d.x, _wgslsmith_f_op_f32(-var_0.d.x)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.d.x, arg_1.x), arg_2.a.a.d.yz)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, 17051u), ~(vec2<u32>(20906u, u_input.a) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)))) | ~(~(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(46469u, 4294967295u) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(global1[_wgslsmith_index_u32(10590u, 20u)], u_input.c.x, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(26939i, -34210i, u_input.d.x), vec3<i32>(-30705i, 20339i, -16608i)), firstTrailingBit(u_input.b.yyx)), 4294967295u, countOneBits(vec3<u32>(u_input.a, 24262u, 9256u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-824f, 1f) - vec2<f32>(-148f, _wgslsmith_div_f32(-867f, -750f))), func_1())));
    global2 = -u_input.d.x;
    var var_2 = func_1();
    let var_3 = var_2.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(reverseBits(var_2.a.d), -1i, _wgslsmith_add_i32(33667i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 20023i), vec4<i32>(-2147483647i, -40148i, -17548i, var_3.b)))));
}

