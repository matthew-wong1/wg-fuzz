struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec2<u32>(1u, 15985u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(286f, -426f, -3119f), Struct_1(10283u, 9461u, 5380u)), Struct_2(vec2<u32>(1u, 1u), vec3<u32>(4294967295u, 836u, 43878u), vec3<f32>(-747f, 433f, 550f), Struct_1(0u, 1u, 10165u)), Struct_2(vec2<u32>(21117u, 0u), vec3<u32>(111589u, 25302u, 15054u), vec3<f32>(1149f, -828f, -2654f), Struct_1(4294967295u, 0u, 4294967295u)), Struct_2(vec2<u32>(71258u, 1u), vec3<u32>(62960u, 0u, 21907u), vec3<f32>(-168f, -385f, -631f), Struct_1(67591u, 45002u, 13454u)), Struct_2(vec2<u32>(4294967295u, 292u), vec3<u32>(25000u, 1u, 0u), vec3<f32>(-1000f, -1555f, 715f), Struct_1(1u, 1u, 46130u)), Struct_2(vec2<u32>(22674u, 22819u), vec3<u32>(61991u, 0u, 4294967295u), vec3<f32>(551f, -1155f, -520f), Struct_1(4294967295u, 9021u, 3349u)), Struct_2(vec2<u32>(23986u, 39738u), vec3<u32>(0u, 4294967295u, 1u), vec3<f32>(-680f, 390f, 982f), Struct_1(9720u, 67636u, 64085u)), Struct_2(vec2<u32>(0u, 0u), vec3<u32>(0u, 1u, 25471u), vec3<f32>(-1034f, -1440f, 1347f), Struct_1(4294967295u, 56443u, 4294967295u)), Struct_2(vec2<u32>(62214u, 11971u), vec3<u32>(44813u, 5406u, 4294967295u), vec3<f32>(-174f, 140f, 372f), Struct_1(4294967295u, 7160u, 32492u)), Struct_2(vec2<u32>(3731u, 10118u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<f32>(-466f, 620f, -119f), Struct_1(82802u, 4785u, 6843u)), Struct_2(vec2<u32>(1u, 4294967295u), vec3<u32>(1u, 24811u, 4294967295u), vec3<f32>(-173f, 1533f, -270f), Struct_1(69904u, 1u, 45734u)), Struct_2(vec2<u32>(4294967295u, 25277u), vec3<u32>(34615u, 22620u, 66796u), vec3<f32>(-306f, -1258f, 921f), Struct_1(4294967295u, 36360u, 0u)), Struct_2(vec2<u32>(4744u, 98409u), vec3<u32>(62764u, 4294967295u, 55643u), vec3<f32>(953f, 572f, 2072f), Struct_1(4294967295u, 28577u, 14387u)), Struct_2(vec2<u32>(1u, 84476u), vec3<u32>(4294967295u, 41876u, 4294967295u), vec3<f32>(-285f, -195f, 185f), Struct_1(1u, 0u, 24857u)), Struct_2(vec2<u32>(0u, 0u), vec3<u32>(43803u, 23014u, 55717u), vec3<f32>(-1813f, -1000f, -1122f), Struct_1(18964u, 25261u, 26335u)), Struct_2(vec2<u32>(1u, 37538u), vec3<u32>(1u, 28201u, 25960u), vec3<f32>(-740f, -646f, 415f), Struct_1(1u, 4294967295u, 47048u)), Struct_2(vec2<u32>(0u, 30018u), vec3<u32>(1u, 56209u, 0u), vec3<f32>(-677f, -418f, 1000f), Struct_1(1u, 1u, 77990u)), Struct_2(vec2<u32>(19724u, 4294967295u), vec3<u32>(4294967295u, 59185u, 30795u), vec3<f32>(215f, 214f, -1000f), Struct_1(44796u, 75270u, 0u)), Struct_2(vec2<u32>(21291u, 72516u), vec3<u32>(0u, 54414u, 13530u), vec3<f32>(2137f, -1745f, -943f), Struct_1(111385u, 0u, 4294967295u)), Struct_2(vec2<u32>(18428u, 4294967295u), vec3<u32>(2296u, 1u, 7728u), vec3<f32>(699f, -829f, 1127f), Struct_1(2150u, 1u, 0u)), Struct_2(vec2<u32>(1u, 0u), vec3<u32>(4294967295u, 4294967295u, 24197u), vec3<f32>(-1405f, -1099f, 1143f), Struct_1(3399u, 67390u, 1u)), Struct_2(vec2<u32>(25481u, 0u), vec3<u32>(42826u, 18716u, 1u), vec3<f32>(-2203f, -614f, 498f), Struct_1(1u, 4294967295u, 3105u)), Struct_2(vec2<u32>(41342u, 43402u), vec3<u32>(1u, 11194u, 0u), vec3<f32>(1968f, 973f, -1240f), Struct_1(0u, 121159u, 15265u)), Struct_2(vec2<u32>(27537u, 96839u), vec3<u32>(18087u, 45581u, 0u), vec3<f32>(2511f, 1064f, -1158f), Struct_1(41285u, 1u, 4294967295u)));

var<private> global1: array<vec2<i32>, 1>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> vec2<bool> {
    let var_0 = 2147483647i;
    global0 = array<Struct_2, 24>();
    global1 = array<vec2<i32>, 1>();
    global1 = array<vec2<i32>, 1>();
    let var_1 = Struct_2(vec2<u32>(~_wgslsmith_mod_u32(min(0u, arg_1), 60174u), 0u), ~_wgslsmith_mod_vec3_u32(~(~u_input.a.yxz), vec3<u32>(4294967295u, ~arg_1, firstLeadingBit(u_input.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-1198f, -793f), -163f, _wgslsmith_f_op_f32(max(-315f, 1074f))), vec3<f32>(-589f, -698f, _wgslsmith_f_op_f32(floor(-1622f)))))), Struct_1(~_wgslsmith_clamp_u32(83588u, 1u, arg_1) >> (0u % 32u), 0u, ~u_input.a.x));
    return !(!vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), any(vec3<bool>(false, false, true))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: bool, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_clamp_vec3_i32((vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x), vec3<i32>(8953i, u_input.d.x, 10610i)), -2147483647i, u_input.d.x) >> (vec3<u32>(arg_3, 1u, u_input.b << (1u % 32u)) % vec3<u32>(32u))) | vec3<i32>(u_input.c.x ^ u_input.c.x, -(i32(-1i) * -22417i), 1i >> (_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(42191u, arg_3)) % 32u)), vec3<i32>(max(u_input.c.x, _wgslsmith_sub_i32(2147483647i, u_input.c.x) & u_input.d.x), -2147483647i, abs(firstTrailingBit(_wgslsmith_add_i32(u_input.d.x, 2147483647i)))), reverseBits(firstTrailingBit(vec3<i32>(u_input.c.x, max(-1i, u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, -1i)))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(521f, -203f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1131f, 1000f) + vec2<f32>(-1533f, -1693f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-725f, -788f))), vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-881f, -402f))) * vec2<f32>(-431f, 2839f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(303f, -1385f), vec2<f32>(1624f, -1124f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1272f, 1318f), vec2<f32>(971f, -1178f), vec2<bool>(arg_0.x, arg_2)))))));
    let var_2 = Struct_2(vec2<u32>(~arg_1.x, ~1u), ~vec3<u32>(~_wgslsmith_mult_u32(4294967295u, u_input.a.x), ~_wgslsmith_mult_u32(arg_3, u_input.a.x), _wgslsmith_mult_u32(0u, 4131u) >> (arg_3 % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-496f)), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -867f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 246f, 1703f), vec3<f32>(-431f, -1646f, 581f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 540f, var_1.x), vec3<f32>(var_1.x, -478f, -598f)))))), Struct_1(_wgslsmith_div_u32(1u & _wgslsmith_mult_u32(arg_3, u_input.a.x), u_input.b), 0u, 63857u));
    var_1 = var_2.c.zz;
    var var_3 = arg_2 && (var_0.x > -(_wgslsmith_sub_i32(var_0.x, 0i) << (0u % 32u)));
    return 1109f;
}

fn func_2() -> u32 {
    let var_0 = ~(~u_input.a.zww ^ u_input.a.wyw);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1270f, 113f) - _wgslsmith_f_op_f32(func_4(func_3(vec2<i32>(50796i, 33316i), var_0.x), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(71707u, var_0.x, u_input.a.x, 0u)), true, u_input.a.x)))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(round(-964f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1054f - 474f), _wgslsmith_f_op_f32(-1482f - 1034f)), _wgslsmith_f_op_f32(-154f * _wgslsmith_f_op_f32(func_4(vec2<bool>(false, false), u_input.a, false, u_input.b))))))));
    var_1 = var_2.x;
    return var_0.x;
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_2, 24>();
    var var_0 = Struct_1(func_2() >> (select(_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.a), ~vec4<u32>(u_input.a.x, u_input.b, 20689u, 0u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 0u), u_input.a.wzz), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false))) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 1u), 19209u, 0u), vec3<u32>(u_input.b, ~73212u, ~1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u << (u_input.a.x % 32u), 1u) & u_input.a.yx, firstLeadingBit(_wgslsmith_clamp_vec2_u32(~u_input.a.zw, ~u_input.a.xz, ~vec2<u32>(u_input.a.x, 1u)))));
    var var_1 = Struct_2(u_input.a.xz, u_input.a.yyw | ~u_input.a.xyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2257f, -1852f, 1908f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1092f, 438f, -257f))))), Struct_1(~var_0.c, firstLeadingBit(_wgslsmith_add_u32(var_0.c, ~var_0.c)), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 9132u, var_0.c, var_0.c) | u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(var_0.b, u_input.b, u_input.b, 0u))))));
    let var_2 = var_1.d;
    let var_3 = var_1.d;
    return Struct_2(vec2<u32>(select(4294967295u, 4294967295u, all(vec3<bool>(true, true, true))), 25649u), vec3<u32>(var_1.b.x, ~(_wgslsmith_div_u32(u_input.b, 31737u) << (var_0.c % 32u)), var_3.c), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, -765f, var_1.c.x), var_1.c))))), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 1>();
    let var_0 = -(-36253i ^ min(firstTrailingBit(~(-2147483647i)), -u_input.d.x << (29555u % 32u)));
    let var_1 = true;
    var var_2 = -(~(-_wgslsmith_div_vec3_i32(~u_input.d, u_input.c)));
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(~vec4<i32>(~2147483647i, i32(-1i) * -17727i, var_2.x >> (u_input.b % 32u), ~37125i), -firstTrailingBit(vec4<i32>(0i, 1i, 2147483647i, var_2.x))), 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-146f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_3.c.x)), abs(25910u) >> (var_3.b.x % 32u));
}

