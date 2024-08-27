struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(false, Struct_1(vec3<f32>(688f, 357f, -1201f), vec2<u32>(51944u, 39004u), vec3<i32>(-11941i, -30023i, 41576i)), Struct_1(vec3<f32>(-122f, -713f, -944f), vec2<u32>(4294967295u, 10699u), vec3<i32>(2147483647i, 0i, 1i))), Struct_2(true, Struct_1(vec3<f32>(-160f, 1261f, 976f), vec2<u32>(10243u, 0u), vec3<i32>(37437i, 0i, 3697i)), Struct_1(vec3<f32>(738f, 1211f, -1000f), vec2<u32>(0u, 76582u), vec3<i32>(1i, -1i, -22102i))), Struct_2(true, Struct_1(vec3<f32>(834f, -795f, 1259f), vec2<u32>(0u, 0u), vec3<i32>(0i, i32(-2147483648), 13221i)), Struct_1(vec3<f32>(-853f, 1554f, -1000f), vec2<u32>(66802u, 1u), vec3<i32>(-1i, -1i, 1i))), Struct_2(false, Struct_1(vec3<f32>(376f, 2360f, -1000f), vec2<u32>(0u, 0u), vec3<i32>(i32(-2147483648), -47059i, -21333i)), Struct_1(vec3<f32>(-1434f, -1064f, -1054f), vec2<u32>(4294967295u, 4294967295u), vec3<i32>(2147483647i, -1i, 12308i))), Struct_2(false, Struct_1(vec3<f32>(1339f, 545f, -263f), vec2<u32>(1u, 13606u), vec3<i32>(0i, 35448i, 2147483647i)), Struct_1(vec3<f32>(-2275f, -152f, 1974f), vec2<u32>(63401u, 1u), vec3<i32>(2147483647i, 0i, 38406i))), Struct_2(false, Struct_1(vec3<f32>(-987f, 1012f, -351f), vec2<u32>(41205u, 4468u), vec3<i32>(0i, -1i, 2147483647i)), Struct_1(vec3<f32>(-1888f, 285f, 214f), vec2<u32>(1u, 33568u), vec3<i32>(1i, 0i, i32(-2147483648)))), Struct_2(true, Struct_1(vec3<f32>(876f, 743f, 1226f), vec2<u32>(0u, 4294967295u), vec3<i32>(333i, 17971i, 0i)), Struct_1(vec3<f32>(-137f, 1705f, 918f), vec2<u32>(0u, 4294967295u), vec3<i32>(0i, -24827i, 0i))), Struct_2(false, Struct_1(vec3<f32>(-642f, -1665f, -730f), vec2<u32>(58026u, 33637u), vec3<i32>(-25934i, -1i, 0i)), Struct_1(vec3<f32>(1511f, -509f, -979f), vec2<u32>(4294967295u, 9760u), vec3<i32>(33235i, 6834i, 2147483647i))), Struct_2(true, Struct_1(vec3<f32>(-1853f, -1544f, 453f), vec2<u32>(61870u, 56147u), vec3<i32>(i32(-2147483648), 34827i, -1i)), Struct_1(vec3<f32>(1000f, 1549f, 1933f), vec2<u32>(4294967295u, 19494u), vec3<i32>(-15075i, 16848i, -46778i))), Struct_2(true, Struct_1(vec3<f32>(1770f, -1595f, -905f), vec2<u32>(4294967295u, 5253u), vec3<i32>(-12834i, -60083i, -34364i)), Struct_1(vec3<f32>(1675f, -927f, -1331f), vec2<u32>(46959u, 79068u), vec3<i32>(1i, i32(-2147483648), -16391i))), Struct_2(true, Struct_1(vec3<f32>(215f, -988f, 370f), vec2<u32>(49511u, 57417u), vec3<i32>(25860i, -1i, 0i)), Struct_1(vec3<f32>(1000f, 977f, 800f), vec2<u32>(37495u, 25255u), vec3<i32>(0i, 2147483647i, 2147483647i))));

var<private> global1: vec3<u32> = vec3<u32>(99728u, 50104u, 17756u);

var<private> global2: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(1288f, -1761f, -480f, 1049f), vec4<f32>(1052f, -611f, -529f, -453f), vec4<f32>(-1235f, -1445f, 200f, -1195f), vec4<f32>(-510f, 931f, -137f, 747f), vec4<f32>(-524f, -627f, -225f, -1297f), vec4<f32>(788f, -1797f, 1000f, 1000f), vec4<f32>(367f, 1101f, -1589f, -160f), vec4<f32>(940f, -324f, -478f, 530f), vec4<f32>(-1374f, -495f, -1537f, -682f), vec4<f32>(-1440f, -252f, 738f, 1427f), vec4<f32>(-448f, -462f, -518f, -933f), vec4<f32>(-996f, -1324f, -1530f, -256f), vec4<f32>(-158f, -1000f, -794f, -1514f), vec4<f32>(351f, 1537f, -215f, -372f), vec4<f32>(-324f, -802f, 1565f, 293f), vec4<f32>(-1218f, -382f, 797f, 568f), vec4<f32>(-411f, 461f, -684f, -1000f), vec4<f32>(-1771f, -243f, 606f, -2158f), vec4<f32>(-1000f, 359f, -1279f, 858f), vec4<f32>(-966f, 428f, 1276f, -749f), vec4<f32>(115f, -1000f, -135f, -1034f), vec4<f32>(-206f, 745f, 141f, -143f), vec4<f32>(-1654f, -1000f, 1619f, 179f), vec4<f32>(156f, 242f, -318f, -1346f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> f32 {
    return _wgslsmith_f_op_f32(ceil(-869f));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> vec3<f32> {
    global0 = array<Struct_2, 11>();
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(min(global1.x, global1.x), _wgslsmith_mult_u32(0u, 43440u), _wgslsmith_mult_u32(1u, 18229u)), arg_1 & vec3<u32>(arg_1.x, global1.x, 3438u)), global1.x) << (vec2<u32>((_wgslsmith_div_u32(global1.x, arg_0) << (~13192u % 32u)) << (47859u % 32u), global1.x) % vec2<u32>(32u));
    global1 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(abs(arg_1), ~(~arg_1)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 19434u, var_0.x, 1u), vec4<u32>(0u, 1u, var_0.x, global1.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 16172u, 20395u, var_0.x), vec4<u32>(arg_1.x, 19863u, 0u, 4611u))), ~(~0u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(646f, 1002f, 817f), vec3<f32>(-1704f, 1141f, 354f))) * vec3<f32>(2076f, -440f, -235f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(263f + -410f))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(-2086f, 1000f))), _wgslsmith_f_op_f32(func_2(26889i, Struct_1(vec3<f32>(-1279f, -1000f, 839f), global1.yy, vec3<i32>(64951i, -2147483647i, -29269i)), _wgslsmith_f_op_f32(floor(1029f))))), !vec3<bool>(true, all(vec2<bool>(false, true)), true))), ~arg_1.xx, _wgslsmith_sub_vec3_i32(firstTrailingBit(-vec3<i32>(88098i, u_input.a, u_input.a)), ~_wgslsmith_div_vec3_i32(vec3<i32>(49040i, u_input.a, -1i), vec3<i32>(46632i, 30825i, u_input.a))) >> (arg_1 % vec3<u32>(32u)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.x, _wgslsmith_add_u32(global1.x, ~min(min(arg_0, global1.x), 4294967295u))), 11u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b.a)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.b.a.x, var_1.a.x, var_1.a.x))), var_1.a)), vec3<f32>(_wgslsmith_f_op_f32(trunc(415f)), _wgslsmith_f_op_f32(560f + var_2.b.a.x), _wgslsmith_f_op_f32(var_2.c.a.x * 177f)))), !all(select(vec2<bool>(var_2.a, false), vec2<bool>(true, var_2.a), vec2<bool>(true, true))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec3<f32> {
    global0 = array<Struct_2, 11>();
    global2 = array<vec4<f32>, 24>();
    var var_0 = arg_1;
    global2 = array<vec4<f32>, 24>();
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.a.x)), _wgslsmith_f_op_f32(func_2(i32(-1i) * -49872i, var_0.c, _wgslsmith_f_op_f32(-759f * -1637f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.c.x, Struct_1(arg_1.c.a, vec2<u32>(global1.x, global1.x), arg_0.c), arg_1.b.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(4294967295u, vec3<u32>(arg_0.b.x, arg_0.b.x, global1.x) ^ vec3<u32>(arg_1.b.b.x, arg_1.b.b.x, arg_1.c.b.x))) * _wgslsmith_f_op_vec3_f32(var_0.c.a - _wgslsmith_f_op_vec3_f32(arg_0.a * vec3<f32>(arg_1.c.a.x, 1422f, var_0.b.a.x))))), abs(firstTrailingBit(_wgslsmith_div_vec2_u32(max(vec2<u32>(28285u, arg_1.c.b.x), var_0.c.b), abs(vec2<u32>(arg_1.c.b.x, 21639u))))), var_0.b.c);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(global1.x, 11u)];
    var_0 = Struct_2(all(select(vec3<bool>(var_0.a, !var_0.a, var_0.a), vec3<bool>(true, var_0.a, any(vec3<bool>(true, var_0.a, true))), var_0.a)), Struct_1(vec3<f32>(-468f, var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x))), ~(reverseBits(vec2<u32>(var_0.b.b.x, 11591u)) << (~global1.xy % vec2<u32>(32u))), max(vec3<i32>(-20050i, ~23270i, -u_input.a), vec3<i32>(max(18999i, u_input.a), -2147483647i, _wgslsmith_mult_i32(-25894i, u_input.a)))), Struct_1(_wgslsmith_f_op_vec3_f32(func_1(var_0.c, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c.b.x, select(var_0.b.b.x, global1.x, false)), 11u)])), vec2<u32>(~(~4294967295u), max(firstTrailingBit(27384u), 1u)), var_0.b.c));
    var var_1 = global0[_wgslsmith_index_u32(global1.x << (global1.x % 32u), 11u)];
    var var_2 = ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 41916u), ~(~vec2<u32>(var_0.c.b.x, var_0.c.b.x))));
    let var_3 = Struct_1(vec3<f32>(-1176f, var_0.b.a.x, 440f), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.b.x, select(1u, var_1.c.b.x, var_1.a), global1.x, ~global1.x), firstLeadingBit(vec4<u32>(global1.x, var_0.c.b.x, 2136u, global1.x))), ~var_1.b.b.x), var_1.b.c);
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-916f)), _wgslsmith_f_op_f32(f32(-1f) * -178f), var_3.a.x) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_1.b.a.x, -1288f), var_0.b.a), _wgslsmith_f_op_vec3_f32(var_1.b.a + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.c.a)) - var_3.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(13846u);
}

