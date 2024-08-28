struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(false, vec2<bool>(true, true), -239f, vec2<u32>(44398u, 44855u)), Struct_4(false, vec2<bool>(true, true), -858f, vec2<u32>(11479u, 1u)), Struct_4(false, vec2<bool>(false, true), 255f, vec2<u32>(16612u, 52877u)), Struct_4(false, vec2<bool>(false, false), 799f, vec2<u32>(137312u, 63932u)), Struct_4(false, vec2<bool>(false, true), -658f, vec2<u32>(4294967295u, 13577u)), Struct_4(false, vec2<bool>(false, true), 859f, vec2<u32>(21679u, 1u)), Struct_4(true, vec2<bool>(false, true), -797f, vec2<u32>(1u, 4294967295u)), Struct_4(true, vec2<bool>(true, false), 175f, vec2<u32>(21018u, 0u)), Struct_4(false, vec2<bool>(true, false), -519f, vec2<u32>(1u, 4294967295u)), Struct_4(false, vec2<bool>(false, false), -257f, vec2<u32>(4574u, 4294967295u)), Struct_4(false, vec2<bool>(true, true), -1000f, vec2<u32>(4294967295u, 1679u)), Struct_4(true, vec2<bool>(false, false), 1027f, vec2<u32>(4294967295u, 0u)), Struct_4(true, vec2<bool>(false, true), -1385f, vec2<u32>(42403u, 0u)), Struct_4(false, vec2<bool>(true, true), 1615f, vec2<u32>(4294967295u, 69506u)), Struct_4(false, vec2<bool>(true, false), 1000f, vec2<u32>(4389u, 0u)), Struct_4(false, vec2<bool>(true, true), -1122f, vec2<u32>(4294967295u, 36112u)), Struct_4(true, vec2<bool>(false, true), 157f, vec2<u32>(1u, 33925u)), Struct_4(false, vec2<bool>(false, true), -1796f, vec2<u32>(12401u, 62753u)), Struct_4(false, vec2<bool>(false, false), 1000f, vec2<u32>(40932u, 3414u)), Struct_4(true, vec2<bool>(false, true), -532f, vec2<u32>(30091u, 31016u)), Struct_4(false, vec2<bool>(true, false), 523f, vec2<u32>(59245u, 35255u)), Struct_4(false, vec2<bool>(true, false), 1128f, vec2<u32>(5278u, 1u)), Struct_4(false, vec2<bool>(false, true), 128f, vec2<u32>(21186u, 1u)), Struct_4(false, vec2<bool>(true, false), -868f, vec2<u32>(0u, 61759u)));

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(5439u, Struct_1(vec2<f32>(-1124f, -274f), false, 4294967295u), Struct_2(vec3<bool>(false, true, false), vec3<u32>(0u, 11251u, 9914u), 1u, Struct_1(vec2<f32>(-838f, -2018f), false, 4294967295u), 2147483647i)), Struct_3(0u, Struct_1(vec2<f32>(211f, -1043f), true, 0u), Struct_2(vec3<bool>(true, false, true), vec3<u32>(31677u, 0u, 11834u), 4294967295u, Struct_1(vec2<f32>(649f, 1169f), true, 4294967295u), 1i)), Struct_3(4294967295u, Struct_1(vec2<f32>(-777f, 1072f), false, 17587u), Struct_2(vec3<bool>(true, true, false), vec3<u32>(1u, 4294967295u, 4294967295u), 1u, Struct_1(vec2<f32>(1361f, -1000f), true, 1u), 32369i)), Struct_3(98139u, Struct_1(vec2<f32>(-1892f, -332f), false, 4294967295u), Struct_2(vec3<bool>(true, true, true), vec3<u32>(60747u, 1u, 0u), 1u, Struct_1(vec2<f32>(157f, 951f), false, 19606u), 43406i)), Struct_3(0u, Struct_1(vec2<f32>(-390f, 690f), false, 1u), Struct_2(vec3<bool>(false, true, false), vec3<u32>(1u, 4294967295u, 1u), 11825u, Struct_1(vec2<f32>(-393f, -1969f), true, 4294967295u), 29361i)), Struct_3(1663u, Struct_1(vec2<f32>(1690f, -472f), false, 36638u), Struct_2(vec3<bool>(true, false, true), vec3<u32>(44753u, 4294967295u, 1u), 51512u, Struct_1(vec2<f32>(223f, -814f), false, 0u), -17988i)), Struct_3(72883u, Struct_1(vec2<f32>(500f, 1772f), true, 0u), Struct_2(vec3<bool>(false, true, false), vec3<u32>(4294967295u, 55853u, 4294967295u), 36466u, Struct_1(vec2<f32>(423f, -934f), true, 40357u), -45148i)), Struct_3(9857u, Struct_1(vec2<f32>(1116f, 2039f), true, 0u), Struct_2(vec3<bool>(true, true, false), vec3<u32>(1u, 22703u, 33962u), 1u, Struct_1(vec2<f32>(-232f, 1037f), true, 61630u), 3810i)), Struct_3(13316u, Struct_1(vec2<f32>(853f, 1000f), true, 27362u), Struct_2(vec3<bool>(true, false, true), vec3<u32>(4294967295u, 1u, 17567u), 90157u, Struct_1(vec2<f32>(-1000f, -841f), false, 4294967295u), 0i)), Struct_3(6813u, Struct_1(vec2<f32>(1000f, -1336f), true, 4294967295u), Struct_2(vec3<bool>(true, false, true), vec3<u32>(0u, 4294967295u, 49740u), 4294967295u, Struct_1(vec2<f32>(-1310f, 551f), true, 0u), -1i)), Struct_3(4294967295u, Struct_1(vec2<f32>(-419f, -1122f), true, 2543u), Struct_2(vec3<bool>(true, false, false), vec3<u32>(64217u, 1u, 0u), 0u, Struct_1(vec2<f32>(-660f, 506f), false, 1202u), i32(-2147483648))), Struct_3(1u, Struct_1(vec2<f32>(-263f, -1000f), false, 4294967295u), Struct_2(vec3<bool>(true, true, true), vec3<u32>(94412u, 60242u, 29457u), 70536u, Struct_1(vec2<f32>(438f, 691f), true, 1u), i32(-2147483648))), Struct_3(1u, Struct_1(vec2<f32>(-458f, -319f), false, 1u), Struct_2(vec3<bool>(true, true, false), vec3<u32>(57723u, 4294967295u, 22120u), 15887u, Struct_1(vec2<f32>(310f, -625f), true, 0u), 8473i)), Struct_3(11883u, Struct_1(vec2<f32>(1508f, -1776f), true, 2737u), Struct_2(vec3<bool>(false, false, true), vec3<u32>(4294967295u, 4294967295u, 63037u), 56329u, Struct_1(vec2<f32>(816f, 269f), false, 1u), 0i)), Struct_3(4294967295u, Struct_1(vec2<f32>(-1394f, -977f), false, 0u), Struct_2(vec3<bool>(false, false, true), vec3<u32>(14781u, 0u, 591u), 4294967295u, Struct_1(vec2<f32>(-1352f, 195f), true, 4294967295u), i32(-2147483648))), Struct_3(39819u, Struct_1(vec2<f32>(1000f, 798f), true, 32377u), Struct_2(vec3<bool>(false, true, true), vec3<u32>(15477u, 107198u, 0u), 29134u, Struct_1(vec2<f32>(-513f, -485f), true, 14267u), -20339i)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    let var_0 = -(_wgslsmith_add_vec4_i32(vec4<i32>(10507i, 0i, -1i, u_input.b.x) << (select(vec4<u32>(4294967295u, 0u, 86041u, 1u), vec4<u32>(arg_1.c, 1u, arg_2.d.x, u_input.a), vec4<bool>(arg_2.b.x, false, false, true)) % vec4<u32>(32u)), ~vec4<i32>(54458i, 1i, u_input.b.x, u_input.b.x)) & vec4<i32>(u_input.b.x, firstTrailingBit(-u_input.b.x), u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x) & 12383i));
    var var_1 = vec2<i32>(var_0.x, _wgslsmith_sub_i32(var_0.x, 1i));
    var var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 15968i | u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(34695i, var_1.x), var_0.xw)), var_0.zyy), -(~(-41455i) ^ u_input.b.x));
    let var_3 = u_input.a;
    let var_4 = ~u_input.a;
    return var_3 ^ 42287u;
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(52342u, u_input.a << (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u), u_input.a, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-714f, 353f) + vec2<f32>(-1381f, 140f)), Struct_1(vec2<f32>(408f, -206f), false, 49363u), Struct_4(true, vec2<bool>(true, false), 469f, vec2<u32>(4294967295u, u_input.a)))), ~select(vec4<u32>(u_input.a, 73516u, u_input.a, 4294967295u), ~vec4<u32>(u_input.a, 51788u, u_input.a, u_input.a), vec4<bool>(true, false, false, true))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(363f - -2432f), _wgslsmith_f_op_f32(140f + 169f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(352f, -1537f), vec2<f32>(-539f, 1057f))), _wgslsmith_div_vec2_f32(vec2<f32>(-875f, 346f), vec2<f32>(-100f, -2070f)))), !(!select(false, true, true)), select(49112u, u_input.a, true)), Struct_2(vec3<bool>(true, select(any(vec2<bool>(false, false)), u_input.a >= 4719u, select(false, false, false)), true), ~(vec3<u32>(u_input.a, u_input.a, 34071u) | _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 31600u), vec3<u32>(0u, u_input.a, 23360u), vec3<u32>(4294967295u, u_input.a, u_input.a))), u_input.a, Struct_1(vec2<f32>(649f, _wgslsmith_f_op_f32(691f + 739f)), select(any(vec4<bool>(true, false, true, false)), true, true), _wgslsmith_mod_u32(abs(72719u), ~u_input.a)), u_input.b.x));
    var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~u_input.a, 1u >> (~(~u_input.a) % 32u)), 16u)];
    let var_1 = Struct_2(!var_0.c.a, vec3<u32>(4294967295u, ~countOneBits(1u), ~(~u_input.a >> (func_3(var_0.c.d.a, var_0.c.d, Struct_4(var_0.c.a.x, vec2<bool>(var_0.c.d.b, true), -1004f, var_0.c.b.yy)) % 32u))), 1u, var_0.b, -_wgslsmith_div_i32(-27270i, u_input.b.x) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(3950u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 9128u), var_0.c.b)), 1119u) % 32u));
    global0 = array<Struct_4, 24>();
    var_0 = global1[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d.a - var_0.b.a), vec2<f32>(var_1.d.a.x, var_0.c.d.a.x)) + var_1.d.a) + var_0.c.d.a), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.c.d.a), var_1.d.b, ~_wgslsmith_mult_u32(var_1.d.c, ~33006u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(~var_1.d.c, _wgslsmith_div_u32(33328u, ~u_input.a)), var_1.c), 24u)]), 16u)];
    return ~vec2<u32>(_wgslsmith_mod_u32(var_0.b.c, ~_wgslsmith_sub_u32(var_1.d.c, 19550u)), firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(45661u, u_input.a, var_0.b.c, u_input.a)), vec4<u32>(61031u, 0u, var_0.c.b.x, var_0.b.c) << (vec4<u32>(u_input.a, 471u, 0u, u_input.a) % vec4<u32>(32u)))));
}

fn func_1(arg_0: f32) -> Struct_5 {
    var var_0 = select(_wgslsmith_clamp_vec2_u32(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, u_input.a), countOneBits(vec2<u32>(u_input.a, u_input.a)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a), vec2<bool>(false, false))), vec2<u32>(u_input.a, 0u), vec2<u32>(~u_input.a, 1u)), func_2(), any(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)))));
    var var_1 = -max(u_input.b.x, _wgslsmith_add_i32(abs(u_input.b.x), 47254i << (var_0.x % 32u)));
    let var_2 = Struct_2(vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - 101f))) == _wgslsmith_f_op_f32(-arg_0), true, _wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, false)))), vec3<u32>(~4294967295u, reverseBits(1u), ~(min(1u, 5650u) & _wgslsmith_clamp_u32(u_input.a, 27510u, 33654u))), var_0.x >> (24850u % 32u), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(793f, -780f), vec2<f32>(arg_0, -1187f)))), true, ~49930u), ~min(-6934i, ~u_input.b.x));
    let var_3 = global0[_wgslsmith_index_u32(var_0.x, 24u)];
    var var_4 = _wgslsmith_mod_vec3_u32(abs(~vec3<u32>(var_3.d.x, firstLeadingBit(0u), 49934u)), select(reverseBits(~(~var_2.b)), vec3<u32>(~min(var_2.b.x, 35650u), var_3.d.x >> (func_2().x % 32u), 4294967295u), var_3.b.x));
    return Struct_5(select(select(var_3.b, var_2.a.yz, false), var_3.b, select(all(select(vec4<bool>(true, var_2.d.b, var_3.b.x, false), vec4<bool>(var_2.d.b, var_2.a.x, true, false), vec4<bool>(false, true, true, var_2.a.x))), !all(vec2<bool>(true, true)), select(var_3.a, true, var_3.b.x))), 1u);
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(64632u, 24u)];
    global0 = array<Struct_4, 24>();
    global0 = array<Struct_4, 24>();
    global1 = array<Struct_3, 16>();
    global1 = array<Struct_3, 16>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(2164f, 2108f), vec2<f32>(-1434f, var_0.c)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c, var_0.c))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.c)))), var_0.a, countOneBits(~1u) << (countOneBits(1u) % 32u));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_4) -> Struct_5 {
    let var_0 = _wgslsmith_clamp_vec2_i32(u_input.b, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(u_input.b, u_input.b)), (vec2<i32>(u_input.b.x, -17706i) & vec2<i32>(1i, 1i)) << (max(vec2<u32>(arg_0.c, u_input.a), arg_3.d) % vec2<u32>(32u))), u_input.b), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x | u_input.b.x, max(u_input.b.x, 1i), reverseBits(1i), u_input.b.x), -vec4<i32>(1i, 40114i, u_input.b.x, u_input.b.x)), -1i));
    let var_1 = firstTrailingBit(min(_wgslsmith_mod_i32(var_0.x, _wgslsmith_div_i32(u_input.b.x & var_0.x, u_input.b.x | 1i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.x, 0i), min(u_input.b.x, 1i), -2147483647i) ^ 0i));
    global1 = array<Struct_3, 16>();
    global0 = array<Struct_4, 24>();
    global0 = array<Struct_4, 24>();
    return Struct_5(vec2<bool>(func_4(func_1(_wgslsmith_f_op_f32(-433f + arg_3.c))).b, true), u_input.a);
}

fn func_6(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3.e;
    global1 = array<Struct_3, 16>();
    global0 = array<Struct_4, 24>();
    var var_1 = u_input.a;
    let var_2 = func_4(Struct_5(vec2<bool>(!all(vec4<bool>(arg_3.a.x, false, arg_2.a.x, arg_2.a.x)), func_5(Struct_1(vec2<f32>(1187f, -475f), false, 18354u), arg_2.a.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1546f, -542f, -1058f, -1303f), vec4<f32>(arg_3.d.a.x, arg_3.d.a.x, 1196f, -383f), arg_2.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, arg_3.d.c), 24u)]).a.x), ~_wgslsmith_sub_u32(abs(u_input.a), u_input.a)));
    return 22317u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 16>();
    global0 = array<Struct_4, 24>();
    let var_0 = func_6(~_wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(u_input.a, u_input.a, 1642u))), vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(11947u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)), _wgslsmith_clamp_u32(10218u, 0u, 4294967295u))), vec3<i32>((4957i | (u_input.b.x & u_input.b.x)) & -(i32(-1i) * -28798i), _wgslsmith_mult_i32(-_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -61802i, u_input.b.x, 0i), vec4<i32>(36467i, 0i, 2147483647i, u_input.b.x)) >> (74046u % 32u)), u_input.b.x), func_5(func_4(func_1(_wgslsmith_f_op_f32(min(-765f, -617f)))), all(vec3<bool>(true, true, true)) || any(vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(194f, -183f, -217f, 1000f)) * vec4<f32>(-161f, -986f, -551f, 146f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-504f, 406f, -850f, 324f)))), global0[_wgslsmith_index_u32(~abs(u_input.a ^ u_input.a), 24u)]), Struct_2(vec3<bool>(true, u_input.b.x > ~u_input.b.x, true), ~reverseBits(~vec3<u32>(5121u, 4294967295u, u_input.a)), 18631u, Struct_1(vec2<f32>(1f, 1f), func_1(-447f).a.x, ~func_2().x), firstLeadingBit(min(u_input.b.x, u_input.b.x) >> ((u_input.a | 73083u) % 32u))));
    global1 = array<Struct_3, 16>();
    global0 = array<Struct_4, 24>();
    global1 = array<Struct_3, 16>();
    var var_1 = -u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(272f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1147f + _wgslsmith_f_op_f32(max(-248f, -600f))))), -102f, -1799f));
}

