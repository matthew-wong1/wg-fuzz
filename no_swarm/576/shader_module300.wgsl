struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(0u, 20380u, 44346u, 19905u);

var<private> global1: array<f32, 3>;

var<private> global2: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec2<i32>(15427i, i32(-2147483648))), Struct_1(vec2<i32>(24482i, i32(-2147483648))), vec2<f32>(956f, 1037f)), Struct_1(vec2<i32>(0i, -1i)), Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(-40676i, 2147483647i)), Struct_1(vec2<i32>(-33268i, 10526i)), vec2<f32>(248f, -1254f))), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(42071i, 0i)), vec2<f32>(-141f, 1081f)), Struct_1(vec2<i32>(0i, -1i)), Struct_2(vec2<bool>(true, false), Struct_1(vec2<i32>(0i, 1i)), Struct_1(vec2<i32>(1i, 2147483647i)), vec2<f32>(-599f, -276f))), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec2<i32>(0i, -37074i)), Struct_1(vec2<i32>(1i, i32(-2147483648))), vec2<f32>(563f, 1000f)), Struct_1(vec2<i32>(0i, -25442i)), Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(2147483647i, 11709i)), Struct_1(vec2<i32>(-18062i, 0i)), vec2<f32>(-140f, 1437f))), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec2<i32>(0i, -23329i)), Struct_1(vec2<i32>(2147483647i, 1i)), vec2<f32>(747f, 684f)), Struct_1(vec2<i32>(-1713i, -1i)), Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(28544i, -32246i)), Struct_1(vec2<i32>(-1i, 0i)), vec2<f32>(-1000f, 684f))), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(16039i, 2147483647i)), Struct_1(vec2<i32>(58291i, -6377i)), vec2<f32>(3035f, 251f)), Struct_1(vec2<i32>(-20175i, -7475i)), Struct_2(vec2<bool>(false, false), Struct_1(vec2<i32>(i32(-2147483648), -54385i)), Struct_1(vec2<i32>(0i, -12122i)), vec2<f32>(1311f, -551f))), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(2147483647i, 32415i)), Struct_1(vec2<i32>(2147483647i, -1i)), vec2<f32>(808f, -144f)), Struct_1(vec2<i32>(-2120i, -1i)), Struct_2(vec2<bool>(true, false), Struct_1(vec2<i32>(-9162i, 17464i)), Struct_1(vec2<i32>(i32(-2147483648), 0i)), vec2<f32>(214f, -504f))), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec2<i32>(0i, 1i)), Struct_1(vec2<i32>(-42583i, 1i)), vec2<f32>(1000f, 949f)), Struct_1(vec2<i32>(-27936i, -12237i)), Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(1i, -9359i)), vec2<f32>(424f, -1000f))), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(-57767i, 20310i)), vec2<f32>(-491f, -1850f)), Struct_1(vec2<i32>(-33959i, 0i)), Struct_2(vec2<bool>(false, true), Struct_1(vec2<i32>(64891i, -16093i)), Struct_1(vec2<i32>(-1i, i32(-2147483648))), vec2<f32>(237f, -799f))), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(-13563i, i32(-2147483648))), Struct_1(vec2<i32>(48922i, -27861i)), vec2<f32>(-747f, -384f)), Struct_1(vec2<i32>(820i, 29055i)), Struct_2(vec2<bool>(true, false), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<i32>(2282i, -9024i)), vec2<f32>(-271f, -303f))), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(21196i, -1i)), Struct_1(vec2<i32>(-5537i, -1i)), vec2<f32>(1191f, 420f)), Struct_1(vec2<i32>(0i, 30310i)), Struct_2(vec2<bool>(false, true), Struct_1(vec2<i32>(48339i, -4112i)), Struct_1(vec2<i32>(1i, 16540i)), vec2<f32>(-2449f, 636f))), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(-94048i, -23511i)), Struct_1(vec2<i32>(44101i, -14712i)), vec2<f32>(-463f, 1000f)), Struct_1(vec2<i32>(-47346i, 10021i)), Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(27322i, 0i)), Struct_1(vec2<i32>(-1i, i32(-2147483648))), vec2<f32>(-332f, 723f))), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<i32>(0i, -13197i)), vec2<f32>(2707f, 365f)), Struct_1(vec2<i32>(2147483647i, 54214i)), Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec2<i32>(-194i, -23551i)), vec2<f32>(-906f, -641f))), Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec2<i32>(22087i, 0i)), Struct_1(vec2<i32>(-1i, 2147483647i)), vec2<f32>(407f, -382f)), Struct_1(vec2<i32>(1i, 2147483647i)), Struct_2(vec2<bool>(false, false), Struct_1(vec2<i32>(8542i, 2147483647i)), Struct_1(vec2<i32>(1i, 5041i)), vec2<f32>(-1580f, -345f))), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec2<i32>(7441i, 23796i)), Struct_1(vec2<i32>(1023i, 37600i)), vec2<f32>(451f, -440f)), Struct_1(vec2<i32>(1i, 30526i)), Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(1i, -1i)), Struct_1(vec2<i32>(-11437i, -25338i)), vec2<f32>(500f, -535f))), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec2<i32>(i32(-2147483648), 30458i)), Struct_1(vec2<i32>(1847i, 2147483647i)), vec2<f32>(-242f, -522f)), Struct_1(vec2<i32>(0i, -1i)), Struct_2(vec2<bool>(false, false), Struct_1(vec2<i32>(-17866i, 0i)), Struct_1(vec2<i32>(0i, -69740i)), vec2<f32>(-194f, -401f))), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(2147483647i, -1i)), Struct_1(vec2<i32>(984i, -1i)), vec2<f32>(-286f, 657f)), Struct_1(vec2<i32>(-43366i, 8226i)), Struct_2(vec2<bool>(true, false), Struct_1(vec2<i32>(59923i, -1i)), Struct_1(vec2<i32>(-10340i, 2147483647i)), vec2<f32>(-945f, 1249f))), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(i32(-2147483648), -10529i)), Struct_1(vec2<i32>(2147483647i, 16665i)), vec2<f32>(168f, 570f)), Struct_1(vec2<i32>(-7926i, 0i)), Struct_2(vec2<bool>(true, false), Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<i32>(-1i, 2147483647i)), vec2<f32>(2053f, 744f))), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec2<i32>(2147483647i, 53541i)), Struct_1(vec2<i32>(1i, 0i)), vec2<f32>(2199f, -190f)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(vec2<bool>(true, false), Struct_1(vec2<i32>(6555i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), -1i)), vec2<f32>(-1403f, 1039f))), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec2<i32>(29920i, 0i)), Struct_1(vec2<i32>(31626i, 37728i)), vec2<f32>(2037f, -392f)), Struct_1(vec2<i32>(17798i, -2519i)), Struct_2(vec2<bool>(true, false), Struct_1(vec2<i32>(1i, 2147483647i)), Struct_1(vec2<i32>(-21217i, -9929i)), vec2<f32>(-1291f, -1125f))));

var<private> global3: vec3<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> vec3<bool> {
    global3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(89533u, 4u)], _wgslsmith_sub_u32(15066u, ~global3.x), 0u), vec3<u32>(reverseBits(firstLeadingBit(~0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 3674u, ~global0[_wgslsmith_index_u32(global3.x, 4u)], 4294967295u), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(66416u, 4u)], global0[_wgslsmith_index_u32(53333u, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 4u)], 4u)], 4u)], 4u)], 4u)], 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(global3.x, global0[_wgslsmith_index_u32(7342u, 4u)], 75822u, global3.x), vec4<u32>(49509u, 11610u, global3.x, global0[_wgslsmith_index_u32(4294967295u, 4u)])))), _wgslsmith_add_u32(global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 1694u, 0u, global3.x), vec4<u32>(7192u, 4294967295u, 1u, global0[_wgslsmith_index_u32(91624u, 4u)])) & global0[_wgslsmith_index_u32(select(38338u, 31983u, arg_1.x), 4u)])), ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(838u, 4u)], 4u)], 9572u, 438u), _wgslsmith_mod_vec3_u32(vec3<u32>(9521u, global3.x, 33823u), vec3<u32>(31954u, 4294967295u, 1u))), ~0u, ~30615u));
    global3 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global0[_wgslsmith_index_u32(53813u, 4u)], 35228u, global0[_wgslsmith_index_u32(28793u, 4u)]), vec4<u32>(global3.x, global3.x, global0[_wgslsmith_index_u32(global3.x, 4u)], global3.x)) | _wgslsmith_dot_vec2_u32(global3.zx, global3.zz), 1u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(3720u, 4u)] >> (0u % 32u), 4u)]) ^ abs(_wgslsmith_div_vec3_u32(vec3<u32>(58555u, 42727u, 0u), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14462u, 4u)], 4u)], global0[_wgslsmith_index_u32(9747u, 4u)], 62110u))), ~vec3<u32>(9140u, global3.x, reverseBits(global3.x)));
    var var_0 = vec2<i32>(-1i, u_input.a.x);
    var var_1 = Struct_2(select(!vec2<bool>(all(vec3<bool>(arg_1.x, false, false)), arg_1.x == true), select(!(!arg_1.zx), arg_1.xy, select(select(vec2<bool>(arg_1.x, false), arg_1.yy, arg_1.zy), arg_1.yx, arg_1.yx)), true), Struct_1(vec2<i32>(u_input.b.x, 2147483647i)), Struct_1(countOneBits(_wgslsmith_div_vec2_i32(u_input.b.zw, -u_input.b.wx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(2913f, 999f), vec2<f32>(1041f, 322f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(332f, global1[_wgslsmith_index_u32(1u, 3u)])), true && arg_1.x))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(step(arg_0, 1030f))), _wgslsmith_f_op_f32(round(var_1.d.x)), false));
    return arg_1;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = ~arg_0;
    let var_1 = select(!(!vec3<bool>(true, true, arg_1.a.a.x)), !func_3(108f, !(!vec3<bool>(arg_1.a.a.x, arg_2.x, false))), true);
    var var_2 = _wgslsmith_clamp_i32(~0i, _wgslsmith_sub_i32(25035i, u_input.a.x), u_input.a.x);
    let var_3 = Struct_1(min(_wgslsmith_mod_vec2_i32(countOneBits(u_input.b.yw), ~vec2<i32>(u_input.a.x, arg_1.b.a.x)) | max(-vec2<i32>(1i, arg_1.b.a.x), u_input.a.xz >> (var_0.yw % vec2<u32>(32u))), u_input.a.xz));
    let var_4 = Struct_1(vec2<i32>(~(-14399i), u_input.b.x));
    return Struct_2(vec2<bool>(all(arg_2), all(func_3(arg_1.a.d.x, !vec3<bool>(true, arg_2.x, arg_1.c.a.x)).yy)), arg_1.b, Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.xw, vec2<i32>(var_3.a.x, 0i), vec2<i32>(u_input.a.x, var_3.a.x)), _wgslsmith_mod_vec2_i32(var_4.a, vec2<i32>(var_4.a.x, var_3.a.x))) ^ select(~arg_1.a.b.a, -var_4.a, vec2<bool>(arg_1.a.a.x, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-420f * arg_1.c.d.x), -2183f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.d * arg_1.a.d))) * arg_1.a.d));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = func_2(firstLeadingBit(~select(~vec4<u32>(0u, arg_2.x, 43235u, 21662u), select(vec4<u32>(12444u, arg_2.x, arg_2.x, global0[_wgslsmith_index_u32(arg_2.x, 4u)]), vec4<u32>(global3.x, 33864u, global3.x, global3.x), arg_0.c.a.x), vec4<bool>(arg_1, arg_0.a.a.x, arg_0.c.a.x, arg_0.a.a.x))), arg_0, arg_0.a.a);
    var var_1 = abs(min(~vec4<u32>(global3.x, 0u, arg_2.x, arg_2.x), ~vec4<u32>(1u, 4294967295u, 9873u, 58538u)) << (~(~vec4<u32>(global3.x, 39983u, global3.x, 4294967295u)) % vec4<u32>(32u))) ^ (vec4<u32>(firstTrailingBit(~global3.x), 4294967295u, 7214u, ~min(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46780u, 4u)], 4u)], 4u)])) ^ max(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, arg_2.x, 1u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global3.x, arg_2.x, 46495u)), ~(vec4<u32>(global3.x, 1u, arg_2.x, global3.x) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4137u, 4u)], 4u)], 4u)], arg_2.x, global3.x, arg_2.x) % vec4<u32>(32u)))));
    let var_2 = select(u_input.a, abs(abs(reverseBits(vec4<i32>(arg_3.a.x, -1i, var_0.b.a.x, u_input.b.x)) << (max(vec4<u32>(var_1.x, var_1.x, arg_2.x, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(15985u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], 0u, var_1.x)) % vec4<u32>(32u)))), !(!vec4<bool>(true, all(vec3<bool>(true, false, var_0.a.x)), select(true, arg_1, arg_1), var_0.a.x)));
    global0 = array<u32, 4>();
    let var_3 = var_0.a.x;
    return global2[_wgslsmith_index_u32(global3.x, 19u)];
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = !(!select(select(vec3<bool>(false, arg_3.a.a.x, arg_3.c.a.x), !vec3<bool>(arg_3.a.a.x, true, false), true), vec3<bool>(arg_1.a.c.a.x <= arg_1.b.a.x, true, !arg_2.a.x), select(!vec3<bool>(arg_1.a.a.x, true, arg_3.c.a.x), !vec3<bool>(arg_1.c.a.x, arg_2.a.x, arg_3.c.a.x), arg_3.a.c.a.x >= arg_1.b.a.x)));
    global0 = array<u32, 4>();
    var var_1 = func_4(func_4(func_4(Struct_3(arg_1.a, Struct_1(arg_3.c.b.a), func_2(vec4<u32>(global3.x, 36113u, 34845u, 5447u), global2[_wgslsmith_index_u32(0u, 19u)], vec2<bool>(arg_3.c.a.x, arg_1.c.a.x))), arg_3.c.d.x > arg_0, ~(~vec3<u32>(1u, 1u, 22241u)), Struct_1(arg_1.c.c.a)), false, _wgslsmith_mult_vec3_u32(~(~vec3<u32>(4294967295u, global3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)])), firstTrailingBit(~vec3<u32>(49952u, 4294967295u, 30688u))), Struct_1(arg_3.b.a)), func_2(vec4<u32>(~14994u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 4294967295u), vec2<u32>(4294967295u, global3.x)), ~1u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(4294967295u >> (0u % 32u)), 4u)], 4u)], _wgslsmith_dot_vec3_u32(~vec3<u32>(55147u, 50703u, 131142u), vec3<u32>(16495u, global0[_wgslsmith_index_u32(1u, 4u)], global3.x) & vec3<u32>(global3.x, 4294967295u, global0[_wgslsmith_index_u32(global3.x, 4u)]))), arg_1, func_3(arg_1.a.d.x, vec3<bool>(select(false, arg_1.a.a.x, false), true, true)).xx).a.x, _wgslsmith_div_vec3_u32(vec3<u32>(9135u, ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(63639u, 4u)], 1u), 30251u), vec3<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(54548u, global3.x, 69202u, global3.x), vec4<u32>(1u, 4294967295u, global3.x, global3.x)), select(vec4<u32>(global0[_wgslsmith_index_u32(0u, 4u)], 4294967295u, 1u, global0[_wgslsmith_index_u32(global3.x, 4u)]), vec4<u32>(4294967295u, 0u, 0u, global3.x), false)), min(70751u, global0[_wgslsmith_index_u32(1u, 4u)]) << ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 4u)], 4u)] & 1u) % 32u), firstTrailingBit(29988u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 4u)], 4u)] % 32u)))), func_4(Struct_3(Struct_2(arg_1.a.a, arg_2.c, arg_3.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1111f, global1[_wgslsmith_index_u32(4294967295u, 3u)]))), Struct_1(vec2<i32>(u_input.a.x, -21167i)), arg_2), arg_1.a.a.x, vec3<u32>(80861u, global0[_wgslsmith_index_u32(63265u, 4u)], _wgslsmith_clamp_u32(~global3.x, 1u, global3.x)), Struct_1(arg_3.b.a)).a.b);
    global0 = array<u32, 4>();
    var var_2 = 1054f;
    return func_2(_wgslsmith_add_vec4_u32(firstTrailingBit(~(~vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(global3.x, 4u)], 0u))), vec4<u32>(~global3.x, firstTrailingBit(71458u), min(~global3.x, global3.x >> (global3.x % 32u)), global0[_wgslsmith_index_u32(~global3.x, 4u)])), func_4(arg_1, arg_2.a.x, vec3<u32>(1u, global0[_wgslsmith_index_u32(~min(73161u, 54422u), 4u)], ~0u), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.c.a.x, arg_1.c.b.a.x), _wgslsmith_div_vec2_i32(var_1.c.c.a, vec2<i32>(-1i, u_input.b.x))))), !(!vec2<bool>(arg_3.a.a.x, any(vec4<bool>(var_1.a.a.x, arg_2.a.x, false, var_0.x))))).a;
}

fn func_6(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = select(-29627i, -2147483647i, arg_2.x);
    var var_1 = global3.x;
    var_1 = global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(min(global0[_wgslsmith_index_u32(62632u, 4u)], _wgslsmith_dot_vec4_u32(vec4<u32>(45958u, global3.x, 0u, global3.x), vec4<u32>(global3.x, global0[_wgslsmith_index_u32(46536u, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 4u)], 4u)], global3.x))), 1u), ~global3.x), 4u)], 4u)];
    let var_2 = func_4(func_4(Struct_3(func_2(~vec4<u32>(global0[_wgslsmith_index_u32(1062u, 4u)], global3.x, global3.x, 4294967295u), func_4(Struct_3(Struct_2(arg_2, Struct_1(u_input.a.xz), Struct_1(vec2<i32>(u_input.b.x, u_input.a.x)), vec2<f32>(-1758f, 231f)), Struct_1(vec2<i32>(-13650i, u_input.a.x)), Struct_2(vec2<bool>(arg_1.x, false), Struct_1(u_input.b.wz), Struct_1(u_input.a.yx), vec2<f32>(global1[_wgslsmith_index_u32(19191u, 3u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 4u)], 4u)], 4u)], 4u)], 3u)]))), false, vec3<u32>(global0[_wgslsmith_index_u32(59122u, 4u)], 1u, 16679u), Struct_1(u_input.a.xy)), vec2<bool>(true, false)), func_2(select(vec4<u32>(global3.x, global3.x, global0[_wgslsmith_index_u32(21067u, 4u)], global3.x), vec4<u32>(global3.x, global0[_wgslsmith_index_u32(15689u, 4u)], global3.x, 38619u), vec4<bool>(false, true, false, arg_1.x)), func_4(Struct_3(Struct_2(vec2<bool>(arg_1.x, arg_2.x), Struct_1(u_input.a.xy), Struct_1(vec2<i32>(u_input.b.x, -44286i)), vec2<f32>(-895f, 152f)), Struct_1(vec2<i32>(-4553i, 1i)), Struct_2(arg_1, Struct_1(vec2<i32>(u_input.a.x, 37197i)), Struct_1(u_input.a.zw), vec2<f32>(-1808f, global1[_wgslsmith_index_u32(global3.x, 3u)]))), true, vec3<u32>(0u, global3.x, global0[_wgslsmith_index_u32(0u, 4u)]), Struct_1(u_input.a.yw)), !vec2<bool>(arg_1.x, false)).b, func_4(global2[_wgslsmith_index_u32(4294967295u, 19u)], arg_2.x, ~vec3<u32>(global3.x, global3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)]), func_4(Struct_3(Struct_2(vec2<bool>(arg_1.x, true), Struct_1(vec2<i32>(u_input.a.x, -16822i)), Struct_1(u_input.b.zy), vec2<f32>(1203f, arg_0)), Struct_1(vec2<i32>(u_input.a.x, 2147483647i)), Struct_2(arg_1, Struct_1(u_input.a.xw), Struct_1(u_input.a.xy), vec2<f32>(arg_0, -1191f))), arg_2.x, vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global3.x, 0u), Struct_1(vec2<i32>(6853i, u_input.b.x))).b).a), _wgslsmith_mult_i32(~(-2147483647i), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.a.x, -6527i, u_input.a.x, u_input.b.x))) <= ~u_input.a.x, reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(global3.x, global0[_wgslsmith_index_u32(global3.x, 4u)], 1u), vec3<u32>(global0[_wgslsmith_index_u32(global3.x, 4u)], global3.x, 0u) << (vec3<u32>(0u, global3.x, global3.x) % vec3<u32>(32u)))), Struct_1(u_input.b.zw)), !(!func_3(-1577f, select(vec3<bool>(arg_2.x, arg_1.x, false), vec3<bool>(arg_1.x, arg_2.x, arg_1.x), vec3<bool>(arg_2.x, false, false))).x), ~max(_wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, global3.x, global0[_wgslsmith_index_u32(1u, 4u)]), abs(vec3<u32>(global3.x, 54700u, global0[_wgslsmith_index_u32(29829u, 4u)]))), ~vec3<u32>(7737u, 15533u, global0[_wgslsmith_index_u32(3105u, 4u)]) | ~vec3<u32>(1u, global0[_wgslsmith_index_u32(22423u, 4u)], 1u)), func_2(reverseBits(vec4<u32>(reverseBits(global3.x), 4294967295u, 81331u, firstLeadingBit(0u))), func_4(global2[_wgslsmith_index_u32(16909u, 19u)], all(func_3(323f, vec3<bool>(arg_1.x, arg_1.x, true)).zz), ~(~vec3<u32>(global0[_wgslsmith_index_u32(11752u, 4u)], 4294967295u, global0[_wgslsmith_index_u32(global3.x, 4u)])), func_2(vec4<u32>(global0[_wgslsmith_index_u32(0u, 4u)], 4294967295u, 1u, global3.x), func_4(Struct_3(Struct_2(arg_1, Struct_1(u_input.b.zw), Struct_1(vec2<i32>(u_input.a.x, -35429i)), vec2<f32>(arg_0, 587f)), Struct_1(u_input.a.wx), Struct_2(vec2<bool>(false, false), Struct_1(vec2<i32>(u_input.b.x, u_input.a.x)), Struct_1(u_input.b.wy), vec2<f32>(arg_0, 322f))), arg_2.x, vec3<u32>(global0[_wgslsmith_index_u32(22650u, 4u)], 7097u, global3.x), Struct_1(vec2<i32>(2147483647i, u_input.a.x))), vec2<bool>(arg_1.x, arg_2.x)).c), func_4(func_4(Struct_3(Struct_2(vec2<bool>(true, arg_1.x), Struct_1(u_input.b.zz), Struct_1(u_input.a.zx), vec2<f32>(671f, -407f)), Struct_1(vec2<i32>(u_input.b.x, 1i)), Struct_2(arg_1, Struct_1(vec2<i32>(0i, u_input.b.x)), Struct_1(u_input.b.xz), vec2<f32>(-591f, -224f))), any(vec4<bool>(false, arg_2.x, true, arg_2.x)), vec3<u32>(global3.x, 1u, global3.x), func_2(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15152u, 4u)], 4u)], 66934u, global3.x), Struct_3(Struct_2(arg_1, Struct_1(u_input.a.xw), Struct_1(u_input.b.zz), vec2<f32>(1649f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 4u)], 3u)])), Struct_1(u_input.a.ww), Struct_2(arg_1, Struct_1(vec2<i32>(u_input.a.x, 1i)), Struct_1(u_input.b.zz), vec2<f32>(global1[_wgslsmith_index_u32(global3.x, 3u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 3u)]))), vec2<bool>(false, false)).c), !(global3.x >= 28345u), vec3<u32>(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 4u)]), 0u, _wgslsmith_dot_vec2_u32(global3.xy, global3.xz)), Struct_1(vec2<i32>(u_input.b.x, -1i))).c.a).c).a;
    let var_3 = ~vec4<i32>(var_2.c.a.x, countOneBits(func_4(Struct_3(Struct_2(arg_1, Struct_1(vec2<i32>(2147483647i, 1i)), var_2.b, vec2<f32>(917f, 288f)), Struct_1(u_input.a.ww), Struct_2(var_2.a, var_2.b, Struct_1(vec2<i32>(u_input.b.x, -1i)), var_2.d)), arg_1.x, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 4u)], 4u)], 4u)], 4294967295u, global3.x), var_2.c).b.a.x ^ 3102i), u_input.b.x, _wgslsmith_add_i32(-28655i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-1i, u_input.b.x, var_2.b.a.x, u_input.a.x)), u_input.a)));
    return func_2(firstLeadingBit(~vec4<u32>(~67769u, global3.x & global3.x, global3.x >> (102310u % 32u), countOneBits(global0[_wgslsmith_index_u32(66516u, 4u)]))), global2[_wgslsmith_index_u32(9438u, 19u)], vec2<bool>(true, !arg_2.x));
}

fn func_1(arg_0: Struct_2) -> vec3<u32> {
    global2 = array<Struct_3, 19>();
    let var_0 = func_6(-902f, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.d.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 4u)], 4u)], 4u)], 3u)]), 617f, true)) - -1032f), func_4(Struct_3(func_2(vec4<u32>(1u, global3.x, 0u, global0[_wgslsmith_index_u32(4294967295u, 4u)]), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23999u, 4u)], 19u)], vec2<bool>(false, true)), arg_0.b, Struct_2(arg_0.a, Struct_1(vec2<i32>(arg_0.c.a.x, -17522i)), Struct_1(vec2<i32>(u_input.b.x, 1i)), arg_0.d)), arg_0.a.x, ~vec3<u32>(22669u, 103422u, 0u), arg_0.c), Struct_2(vec2<bool>(true, true), Struct_1(~vec2<i32>(-1i, 2147483647i)), func_2(vec4<u32>(61091u, 1751u, 5461u, global3.x), Struct_3(arg_0, arg_0.b, arg_0), arg_0.a).c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, arg_0.d.x) * arg_0.d))), Struct_3(arg_0, arg_0.c, func_2(vec4<u32>(13402u, 12810u, global3.x, 4294967295u) & vec4<u32>(global0[_wgslsmith_index_u32(22935u, 4u)], global0[_wgslsmith_index_u32(global3.x, 4u)], global0[_wgslsmith_index_u32(45112u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]), func_4(global2[_wgslsmith_index_u32(1u, 19u)], true, vec3<u32>(0u, 40677u, 4294967295u), arg_0.c), arg_0.a))), arg_0.a);
    let var_1 = func_4(global2[_wgslsmith_index_u32(4294967295u, 19u)], var_0.a.x, vec3<u32>(~(~_wgslsmith_mod_u32(12494u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)])), ~abs(global3.x ^ global3.x), min(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(29034u, 4u)]), 4u)], 4u)]), _wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(4294967295u, 4u)]))), var_0.b);
    global1 = array<f32, 3>();
    var var_2 = 10103i;
    return _wgslsmith_mod_vec3_u32(vec3<u32>(1u ^ (reverseBits(global3.x) & global3.x), 39115u, min(~(31256u << (global3.x % 32u)), global3.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, global3.x), vec3<u32>(68052u, 18039u, global3.x)), abs(vec3<u32>(25223u, 4294967295u, global0[_wgslsmith_index_u32(0u, 4u)])), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global3.x, global3.x), vec3<u32>(global3.x, 0u, global3.x))), countOneBits(~vec3<u32>(4931u, global0[_wgslsmith_index_u32(global3.x, 4u)], 0u)), vec3<u32>(firstLeadingBit(49120u), _wgslsmith_dot_vec2_u32(global3.yy, global3.zx), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(2459u, 4u)], global3.x, 22134u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 4u)], 18566u)))) ^ vec3<u32>(max(~31840u, ~global0[_wgslsmith_index_u32(global3.x, 4u)]), global0[_wgslsmith_index_u32(global3.x | ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], global0[_wgslsmith_index_u32(1114u, 4u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i >> (1u % 32u);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(~func_1(Struct_2(vec2<bool>(true, false), Struct_1(vec2<i32>(u_input.a.x, u_input.b.x)), Struct_1(u_input.a.zx), vec2<f32>(global1[_wgslsmith_index_u32(48948u, 3u)], 1000f))))), ~(~(~vec3<u32>(global0[_wgslsmith_index_u32(global3.x, 4u)], global3.x, 4294967295u)))), 19u)];
    let var_2 = vec2<u32>(firstLeadingBit(~global3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(34076u, 68467u << (global3.x % 32u), ~47055u), firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], global3.x), 4294967295u << (global3.x % 32u), 0u))));
    var var_3 = func_2(~(vec4<u32>(~global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(56850u, global3.x, var_2.x, 1u), vec4<u32>(1u, 18527u, global3.x, 4294967295u)), ~4294967295u, 0u) & _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 1u, var_2.x, var_2.x), vec4<u32>(global3.x, 4294967295u, global0[_wgslsmith_index_u32(1u, 4u)], global3.x)), ~vec4<u32>(1u, var_2.x, 23926u, global3.x), ~vec4<u32>(0u, global0[_wgslsmith_index_u32(2827u, 4u)], 4294967295u, 0u))), Struct_3(func_6(-1858f, vec2<bool>(var_1.c.a.x, all(vec2<bool>(var_1.c.a.x, true))), !vec2<bool>(false, var_1.c.a.x)), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 0i), -vec2<i32>(u_input.b.x, 1i))), var_1.c), func_5(473f, Struct_3(Struct_2(var_1.c.a, func_2(vec4<u32>(global0[_wgslsmith_index_u32(3007u, 4u)], global3.x, 1u, 0u), Struct_3(var_1.c, var_1.c.b, var_1.c), var_1.c.a).c, func_2(vec4<u32>(1u, var_2.x, 54861u, global3.x), Struct_3(var_1.a, var_1.c.c, var_1.a), vec2<bool>(var_1.a.a.x, var_1.a.a.x)).c, var_1.a.d), func_4(func_4(Struct_3(var_1.c, var_1.a.b, Struct_2(vec2<bool>(var_1.a.a.x, var_1.c.a.x), var_1.a.c, Struct_1(vec2<i32>(u_input.b.x, 2147483647i)), var_1.a.d)), true, vec3<u32>(global0[_wgslsmith_index_u32(0u, 4u)], 30348u, 1u), Struct_1(vec2<i32>(var_1.a.b.a.x, 32164i))), var_1.c.a.x, vec3<u32>(41691u, var_2.x, global3.x), Struct_1(var_1.b.a)).a.b, var_1.a), var_1.c, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(~var_2.x) << (firstLeadingBit(reverseBits(global0[_wgslsmith_index_u32(1u, 4u)])) % 32u), 4u)], 4u)], 19u)])).c;
    let var_4 = var_1.c.a.x;
    global2 = array<Struct_3, 19>();
    var var_5 = ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 4u)], global3.x);
    var var_6 = Struct_2(select(vec2<bool>(false, true), vec2<bool>(select(global3.x, global0[_wgslsmith_index_u32(global3.x, 4u)], false) <= func_1(Struct_2(vec2<bool>(var_1.c.a.x, true), Struct_1(vec2<i32>(2147483647i, var_1.c.c.a.x)), var_1.b, vec2<f32>(var_1.a.d.x, -846f))).x, all(vec4<bool>(true, false, true, var_1.c.a.x)) | select(true, var_1.a.a.x, var_1.c.a.x)), func_3(func_2(~vec4<u32>(global3.x, 80881u, 36794u, 1u), func_4(global2[_wgslsmith_index_u32(0u, 19u)], var_1.a.a.x, vec3<u32>(25207u, 1u, global3.x), var_1.c.c), !var_1.c.a).d.x, vec3<bool>(true, true, true)).x), func_2(_wgslsmith_add_vec4_u32(select(vec4<u32>(62049u, 4294967295u, global0[_wgslsmith_index_u32(global3.x, 4u)], 8954u) >> (vec4<u32>(global0[_wgslsmith_index_u32(0u, 4u)], 58926u, 77561u, 48887u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global3.x, global0[_wgslsmith_index_u32(global3.x, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.x, 4u)], 4u)], global3.x), vec4<u32>(4294967295u, var_2.x, 1u, global3.x), vec4<u32>(17840u, 13062u, 3676u, global3.x)), !vec4<bool>(false, var_1.a.a.x, true, var_1.c.a.x)), max(vec4<u32>(global3.x, global0[_wgslsmith_index_u32(2383u, 4u)], var_2.x, var_2.x), vec4<u32>(61631u, 44060u, 0u, var_2.x)) | ~vec4<u32>(0u, 8301u, 4294967295u, 4294967295u)), func_4(Struct_3(Struct_2(vec2<bool>(var_1.a.a.x, var_1.a.a.x), Struct_1(vec2<i32>(0i, -28319i)), Struct_1(var_3.a), vec2<f32>(162f, global1[_wgslsmith_index_u32(1u, 3u)])), var_1.a.c, Struct_2(var_1.c.a, var_1.c.c, var_1.b, var_1.c.d)), false, vec3<u32>(global3.x, 0u, 6864u) & ~vec3<u32>(var_2.x, global0[_wgslsmith_index_u32(62623u, 4u)], 18385u), Struct_1(_wgslsmith_mult_vec2_i32(var_3.a, vec2<i32>(-1087i, var_1.c.c.a.x)))), func_2(vec4<u32>(var_2.x, 18816u, ~global0[_wgslsmith_index_u32(var_2.x, 4u)], ~global3.x), func_4(func_4(Struct_3(var_1.a, Struct_1(var_3.a), Struct_2(vec2<bool>(true, false), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(var_1.b.a.x, u_input.b.x)), var_1.a.d)), true, vec3<u32>(var_2.x, 0u, 0u), var_1.c.b), func_5(933f, global2[_wgslsmith_index_u32(var_2.x, 19u)], var_1.a, global2[_wgslsmith_index_u32(global3.x, 19u)]).x, abs(vec3<u32>(0u, global3.x, global3.x)), Struct_1(var_1.b.a)), select(!var_1.c.a, !var_1.a.a, false)).a).b, Struct_1(vec2<i32>(2147483647i, -1i)), _wgslsmith_f_op_vec2_f32(func_4(global2[_wgslsmith_index_u32(~(~4294967295u), 19u)], true, vec3<u32>(36714u, global3.x, 4294967295u) >> (vec3<u32>(34190u, 21138u, var_2.x) % vec3<u32>(32u)), Struct_1(vec2<i32>(1i, 71205i))).a.d - var_1.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(max(~vec4<u32>(var_2.x, var_2.x, global0[_wgslsmith_index_u32(2043u, 4u)], global0[_wgslsmith_index_u32(var_2.x, 4u)]), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_2.x, global0[_wgslsmith_index_u32(76236u, 4u)], global3.x), vec4<u32>(1u, global3.x, var_2.x, 12347u)) ^ vec4<u32>(0u, global0[_wgslsmith_index_u32(var_2.x, 4u)], 4294967295u, 70468u)), ~(~(~vec4<u32>(global3.x, var_2.x, 4483u, 1u)))), ~_wgslsmith_clamp_u32(0u, max(global0[_wgslsmith_index_u32(var_2.x, 4u)], 48343u) << (func_1(var_1.a).x % 32u), ~43362u), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.x, 0u, global3.x, var_2.x), vec4<u32>(49996u, 4294967295u, 0u, var_2.x), vec4<u32>(global3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 4u)], 4u)], 36244u, global3.x))) & vec4<u32>(var_2.x ^ ~1u, var_2.x, 1u, 44409u), var_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.x, 3u)]), 419f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 4u)], 4u)], 3u)])) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 967f, global1[_wgslsmith_index_u32(global3.x, 3u)])))))));
}

