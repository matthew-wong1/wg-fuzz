struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a.d.x, arg_1.c.d.x), vec2<f32>(arg_2.a.a, arg_2.a.d.x))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), 996f), vec2<bool>(!arg_1.b.x, all(vec3<bool>(false, arg_1.b.x, arg_1.b.x))))))));
    let var_1 = arg_2.a;
    var var_2 = 16693i;
    global0 = all(arg_1.b);
    let var_3 = var_1.e;
    return u_input.a;
}

fn func_2() -> vec3<u32> {
    var var_0 = ~(~vec4<u32>(u_input.a, ~(~20130u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a), 4759u), func_3(Struct_4(u_input.b.x, Struct_2(Struct_1(-439f, vec2<u32>(0u, 0u), -2123i, vec4<f32>(428f, 417f, 812f, 857f), 14994i), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), vec2<i32>(u_input.b.x, 0i)), 4033u, Struct_1(899f, vec2<u32>(u_input.a, u_input.a), 44874i, vec4<f32>(-1364f, -1313f, -1203f, -378f), u_input.b.x)), Struct_3(-1314f, vec2<bool>(true, false), Struct_1(530f, vec2<u32>(u_input.a, u_input.a), 1i, vec4<f32>(715f, 1147f, 836f, 1187f), 2147483647i), Struct_1(-201f, vec2<u32>(u_input.a, 36399u), u_input.b.x, vec4<f32>(208f, -1354f, -317f, 833f), -2293i)), Struct_2(Struct_1(917f, vec2<u32>(15659u, 4294967295u), -4723i, vec4<f32>(-1279f, 742f, 1108f, -520f), u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec2<i32>(-1i, u_input.b.x)))));
    global0 = true;
    var var_1 = Struct_4(u_input.b.x, Struct_2(Struct_1(-360f, vec2<u32>(28440u, var_0.x), -u_input.b.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -885f, -1172f, -2316f), vec4<f32>(1081f, -442f, 630f, -1000f), false)), _wgslsmith_div_vec4_f32(vec4<f32>(-239f, -1416f, 721f, -1000f), vec4<f32>(-382f, -498f, 702f, -647f)))), ~(-u_input.b.x)), abs(u_input.b), u_input.b.yy), ~(var_0.x & reverseBits(~var_0.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1594f, -1000f))), max(reverseBits(~vec2<u32>(0u, var_0.x)), max(var_0.wx, var_0.zy)), 11314i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(175f, 1142f, 1568f, 383f) - vec4<f32>(-557f, 659f, -1585f, -1000f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-238f, 566f, 1162f, 612f), vec4<f32>(1324f, -1000f, -798f, -549f), vec4<bool>(true, true, true, false))))), ~(-8423i)));
    return var_0.xxy;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>) -> bool {
    var var_0 = !(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), !select(true, true, true)));
    var var_1 = Struct_3(-443f, !select(var_0.xz, !vec2<bool>(true, var_0.x), var_0.xz), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, 85631u), arg_1.zz & _wgslsmith_sub_vec2_u32(arg_1.yx, vec2<u32>(arg_1.x, 48781u))), _wgslsmith_add_i32((u_input.b.x & -2147483647i) & abs(-27344i), ~(-2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-749f, 296f, 250f, -1232f)) * vec4<f32>(1230f, -631f, -1000f, 312f))), 21443i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-665f - -1196f)), firstTrailingBit(~(vec2<u32>(u_input.a, arg_1.x) & vec2<u32>(11784u, 4294967295u))), -32974i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(616f, 661f, -1333f, 1103f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -2776f, 353f, -1132f), _wgslsmith_f_op_vec4_f32(vec4<f32>(132f, -173f, -362f, -638f) * vec4<f32>(163f, -240f, 548f, 939f)))), !any(vec3<bool>(false, false, true)))), (arg_0.x & 0i) ^ arg_0.x));
    var var_2 = Struct_4(-(~_wgslsmith_div_i32(~19652i, u_input.b.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -425f), func_2().yy, -(~arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d.d)), -40933i), -(~(vec3<i32>(-2147483647i, 29939i, arg_0.x) & arg_0.xyw)), select(_wgslsmith_add_vec2_i32(firstLeadingBit(u_input.b.yx), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.x, var_1.c.c), vec2<i32>(2147483647i, arg_0.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(4198i, 1i)), select(all(vec4<bool>(var_1.b.x, true, false, var_0.x)), true, var_0.x | var_1.b.x))), 67288u, var_1.c);
    global0 = (_wgslsmith_f_op_f32(max(var_2.b.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a * -217f)))) < var_1.c.d.x) & !(!(abs(var_2.b.c.x) == 24383i));
    let var_3 = vec3<bool>(all(vec4<bool>(all(select(vec4<bool>(var_0.x, true, var_1.b.x, false), vec4<bool>(var_0.x, var_1.b.x, var_0.x, var_0.x), var_1.b.x)), -var_2.b.a.e != ~var_1.d.e, false, all(select(vec3<bool>(var_1.b.x, var_1.b.x, var_0.x), vec3<bool>(var_1.b.x, var_1.b.x, true), vec3<bool>(false, false, true))))), false, false);
    return false;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> vec4<bool> {
    return vec4<bool>(func_4(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), u_input.b) >> (_wgslsmith_div_u32(u_input.a, arg_1.d.b.x) % 32u), -1i, _wgslsmith_mod_i32(firstLeadingBit(1i), ~1i), _wgslsmith_add_i32(arg_0.c.e | arg_0.c.c, u_input.b.x)), ~func_2()), !arg_0.b.x && any(vec3<bool>(true, arg_0.b.x, true)), false, arg_0.b.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>) -> vec2<u32> {
    let var_0 = abs(firstLeadingBit(i32(-1i) * -2147483647i));
    var var_1 = 943f;
    global0 = true;
    var var_2 = Struct_4(_wgslsmith_add_i32(0i ^ _wgslsmith_sub_i32(~var_0, i32(-1i) * -38138i), 1i), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1018f))), _wgslsmith_add_vec2_u32(max(vec2<u32>(arg_1.x, arg_1.x), arg_1.ww), arg_1.zw ^ vec2<u32>(u_input.a, u_input.a)), 1i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1482f, -1404f, 234f, -424f)))), countOneBits(-2147483647i)), u_input.b, u_input.b.xx & vec2<i32>(-2147483647i, ~u_input.b.x)), arg_1.x, Struct_1(-1425f, reverseBits(~vec2<u32>(6509u, arg_1.x)), u_input.b.x, vec4<f32>(1000f, _wgslsmith_div_f32(-904f, 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-599f * 1049f), _wgslsmith_f_op_f32(-739f - 1095f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(round(656f))))), u_input.b.x));
    let var_3 = Struct_1(var_2.d.d.x, vec2<u32>(_wgslsmith_mult_u32(~(~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 24534u, 1u, u_input.a), _wgslsmith_clamp_vec4_u32(arg_1, vec4<u32>(0u, 17237u, 49598u, 4294967295u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, u_input.a), arg_1.yy), func_2().x)), ~u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b.a.d)), _wgslsmith_mod_i32(var_0, ~(-(0i | var_0))));
    return vec2<u32>(~arg_1.x | max(_wgslsmith_clamp_u32(~var_2.d.b.x, 66041u, _wgslsmith_div_u32(u_input.a, var_2.c)), arg_1.x), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(func_5(vec3<bool>(true, true, true), min(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a)), func_1(Struct_3(926f, vec2<bool>(true, false), Struct_1(-387f, vec2<u32>(u_input.a, 4294967295u), u_input.b.x, vec4<f32>(328f, -1740f, -242f, -1152f), 24261i), Struct_1(1000f, vec2<u32>(4294967295u, u_input.a), u_input.b.x, vec4<f32>(465f, 477f, 481f, 707f), 17715i)), Struct_4(2147483647i, Struct_2(Struct_1(-354f, vec2<u32>(u_input.a, 0u), u_input.b.x, vec4<f32>(1168f, -397f, 305f, 502f), -11479i), u_input.b, u_input.b.zy), u_input.a, Struct_1(-149f, vec2<u32>(u_input.a, u_input.a), 1i, vec4<f32>(-132f, -2054f, 1093f, -355f), u_input.b.x)))), reverseBits(vec2<u32>(1u, 1u))), ~(~vec2<u32>(6221u, 18548u) | vec2<u32>(4294967295u, u_input.a))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -674f)), -314f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1116f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1275f + 224f)))));
    global0 = !(func_1(Struct_3(_wgslsmith_f_op_f32(trunc(var_1.x)), func_1(Struct_3(var_1.x, vec2<bool>(false, true), Struct_1(1548f, vec2<u32>(var_0.x, 1742u), 32359i, vec4<f32>(var_1.x, var_1.x, var_1.x, 1004f), -2147483647i), Struct_1(437f, var_0, u_input.b.x, vec4<f32>(var_1.x, -763f, -1440f, -1000f), 2147483647i)), Struct_4(-31551i, Struct_2(Struct_1(var_1.x, vec2<u32>(0u, 66544u), 20397i, vec4<f32>(634f, -1447f, var_1.x, var_1.x), u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.xy), 0u, Struct_1(var_1.x, vec2<u32>(u_input.a, 46567u), u_input.b.x, vec4<f32>(var_1.x, var_1.x, 2633f, var_1.x), u_input.b.x))).xz, Struct_1(371f, vec2<u32>(50488u, 0u), -14617i, vec4<f32>(var_1.x, -1517f, 1703f, var_1.x), u_input.b.x), Struct_1(-623f, vec2<u32>(0u, 51076u), -59399i, vec4<f32>(419f, 398f, 243f, var_1.x), 2147483647i)), Struct_4(abs(u_input.b.x), Struct_2(Struct_1(var_1.x, vec2<u32>(var_0.x, 1u), 1i, vec4<f32>(851f, var_1.x, -1867f, var_1.x), u_input.b.x), u_input.b, vec2<i32>(u_input.b.x, -2147483647i)), 4294967295u, Struct_1(-1721f, var_0, -54291i, vec4<f32>(1286f, var_1.x, -1000f, 917f), -1i))).x & func_1(Struct_3(_wgslsmith_f_op_f32(trunc(1000f)), vec2<bool>(true, true), Struct_1(var_1.x, var_0, u_input.b.x, vec4<f32>(var_1.x, -143f, 563f, var_1.x), u_input.b.x), Struct_1(-316f, vec2<u32>(28837u, u_input.a), 1i, vec4<f32>(2225f, 2561f, var_1.x, -1000f), u_input.b.x)), Struct_4(u_input.b.x, Struct_2(Struct_1(var_1.x, vec2<u32>(u_input.a, 10272u), -1i, vec4<f32>(var_1.x, -193f, var_1.x, 2305f), 16775i), vec3<i32>(u_input.b.x, -1i, u_input.b.x), vec2<i32>(u_input.b.x, -2147483647i)), abs(1u), Struct_1(1147f, var_0, u_input.b.x, vec4<f32>(-994f, -179f, 1731f, 1398f), u_input.b.x))).x);
    global0 = ~1i > reverseBits(u_input.b.x);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1267f)), var_1.x, _wgslsmith_f_op_f32(exp2(var_1.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, 739f, var_1.x))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -885f, var_1.x), vec3<f32>(var_1.x, var_1.x, -295f))))))));
    let var_2 = _wgslsmith_div_u32(4294967295u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(0u >> (u_input.a % 32u), func_2().x, ~0u), max(~vec3<u32>(var_0.x, 0u, 4807u), firstLeadingBit(vec3<u32>(var_0.x, var_2, u_input.a)))) << (vec3<u32>(reverseBits(0u), _wgslsmith_mult_u32(func_3(Struct_4(u_input.b.x, Struct_2(Struct_1(483f, var_0, u_input.b.x, vec4<f32>(var_1.x, 523f, var_1.x, 1042f), 967i), u_input.b, u_input.b.yz), 24978u, Struct_1(1018f, var_0, u_input.b.x, vec4<f32>(var_1.x, -3333f, -1129f, var_1.x), 1i)), Struct_3(var_1.x, vec2<bool>(false, false), Struct_1(655f, vec2<u32>(var_0.x, u_input.a), u_input.b.x, vec4<f32>(var_1.x, -398f, var_1.x, -300f), 25825i), Struct_1(var_1.x, var_0, u_input.b.x, vec4<f32>(var_1.x, -521f, 1753f, var_1.x), 38100i)), Struct_2(Struct_1(429f, var_0, u_input.b.x, vec4<f32>(var_1.x, 355f, 102f, -401f), u_input.b.x), vec3<i32>(u_input.b.x, 24422i, -2147483647i), u_input.b.yz)), 38033u), 1u) % vec3<u32>(32u)), 1u, min(~(vec4<u32>(1u, 2947u, u_input.a, 4294967295u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_2, 50147u, 1u), vec4<u32>(var_0.x, 26520u, 4294967295u, var_0.x)) % vec4<u32>(32u))), vec4<u32>((var_0.x ^ u_input.a) | reverseBits(var_2), firstTrailingBit(_wgslsmith_div_u32(1u, 4294967295u)), ~select(var_0.x, 33485u, false), 4294967295u)));
}

