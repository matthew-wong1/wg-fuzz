struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 35964u;

var<private> global1: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(Struct_2(vec4<u32>(36311u, 0u, 1u, 1u), Struct_1(vec2<u32>(4294967295u, 26778u), -39509i, 1085f, vec4<i32>(-1221i, i32(-2147483648), 0i, 2147483647i), 1u), vec3<i32>(-25720i, 2147483647i, 16780i), true)), Struct_4(Struct_2(vec4<u32>(1u, 43861u, 67141u, 4294967295u), Struct_1(vec2<u32>(4294967295u, 0u), 1i, -915f, vec4<i32>(1i, i32(-2147483648), -37246i, -27367i), 1u), vec3<i32>(8218i, -1i, 32460i), true)), Struct_4(Struct_2(vec4<u32>(4294967295u, 33606u, 4294967295u, 52662u), Struct_1(vec2<u32>(81265u, 46680u), -1i, 2676f, vec4<i32>(13610i, 29536i, 59443i, 0i), 13825u), vec3<i32>(12478i, i32(-2147483648), 0i), true)), Struct_4(Struct_2(vec4<u32>(28729u, 1u, 21096u, 0u), Struct_1(vec2<u32>(20810u, 74444u), 43204i, 774f, vec4<i32>(-17980i, 30307i, i32(-2147483648), 39437i), 5868u), vec3<i32>(51342i, 0i, i32(-2147483648)), false)), Struct_4(Struct_2(vec4<u32>(1u, 1u, 32637u, 2328u), Struct_1(vec2<u32>(30456u, 0u), i32(-2147483648), -1270f, vec4<i32>(1i, i32(-2147483648), -8879i, -5618i), 7825u), vec3<i32>(1i, 0i, -30053i), true)), Struct_4(Struct_2(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 35643u), Struct_1(vec2<u32>(0u, 50359u), 26062i, -289f, vec4<i32>(2995i, -49727i, 2147483647i, -11466i), 1u), vec3<i32>(-1i, -4362i, -10380i), true)), Struct_4(Struct_2(vec4<u32>(35397u, 92622u, 3884u, 0u), Struct_1(vec2<u32>(120829u, 32016u), 1i, -316f, vec4<i32>(-3623i, i32(-2147483648), -47512i, 33903i), 5705u), vec3<i32>(i32(-2147483648), 9796i, 1i), true)), Struct_4(Struct_2(vec4<u32>(0u, 49995u, 0u, 38076u), Struct_1(vec2<u32>(1u, 1u), -22743i, 612f, vec4<i32>(-1i, 0i, 1i, 24157i), 60491u), vec3<i32>(45345i, 3841i, 2147483647i), false)), Struct_4(Struct_2(vec4<u32>(57882u, 11486u, 18056u, 0u), Struct_1(vec2<u32>(27275u, 55661u), i32(-2147483648), -888f, vec4<i32>(-42915i, -28030i, 68028i, 0i), 6790u), vec3<i32>(i32(-2147483648), -12241i, -1i), true)), Struct_4(Struct_2(vec4<u32>(14012u, 4294967295u, 0u, 92874u), Struct_1(vec2<u32>(4294967295u, 7877u), -27738i, -269f, vec4<i32>(14086i, -22836i, 65647i, -1i), 1u), vec3<i32>(-2298i, -6341i, -69168i), false)), Struct_4(Struct_2(vec4<u32>(4294967295u, 4294967295u, 49902u, 4294967295u), Struct_1(vec2<u32>(4294967295u, 6629u), 15023i, 1686f, vec4<i32>(2147483647i, -1i, 24712i, 1i), 18839u), vec3<i32>(2147483647i, 49048i, -39210i), true)), Struct_4(Struct_2(vec4<u32>(53997u, 60377u, 6226u, 30305u), Struct_1(vec2<u32>(1u, 0u), 2147483647i, -165f, vec4<i32>(-35877i, 2147483647i, 2147483647i, -10775i), 9851u), vec3<i32>(1i, -11045i, -1i), false)), Struct_4(Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 22029u), Struct_1(vec2<u32>(25596u, 1u), -72183i, -551f, vec4<i32>(1i, 1i, -33727i, -34560i), 81546u), vec3<i32>(-10343i, 42169i, -1i), false)), Struct_4(Struct_2(vec4<u32>(15798u, 4295u, 13805u, 73049u), Struct_1(vec2<u32>(100978u, 0u), -25708i, 1594f, vec4<i32>(42926i, i32(-2147483648), 2147483647i, 7426i), 27930u), vec3<i32>(7305i, 1i, -26140i), true)), Struct_4(Struct_2(vec4<u32>(4108u, 6847u, 38862u, 21712u), Struct_1(vec2<u32>(0u, 2528u), i32(-2147483648), -2067f, vec4<i32>(36846i, -14410i, 1i, 2551i), 1u), vec3<i32>(i32(-2147483648), 0i, 0i), true)), Struct_4(Struct_2(vec4<u32>(6u, 4294967295u, 0u, 1u), Struct_1(vec2<u32>(21427u, 1u), 9706i, -1563f, vec4<i32>(7561i, 2147483647i, -27470i, -1i), 1u), vec3<i32>(-8845i, -28500i, -38945i), true)), Struct_4(Struct_2(vec4<u32>(11186u, 2116u, 94425u, 34828u), Struct_1(vec2<u32>(4294967295u, 7527u), -11867i, -978f, vec4<i32>(-25944i, 0i, -21531i, 1i), 0u), vec3<i32>(-14232i, 0i, 0i), false)), Struct_4(Struct_2(vec4<u32>(1u, 4799u, 1u, 2435u), Struct_1(vec2<u32>(1u, 45823u), -38966i, 886f, vec4<i32>(-36562i, -1i, 4144i, 511i), 50097u), vec3<i32>(56759i, 36848i, 1i), true)), Struct_4(Struct_2(vec4<u32>(0u, 4294967295u, 0u, 63046u), Struct_1(vec2<u32>(50812u, 28355u), 0i, -1127f, vec4<i32>(-27329i, 17058i, -34254i, -1i), 0u), vec3<i32>(2147483647i, -1i, 37162i), true)), Struct_4(Struct_2(vec4<u32>(1u, 19299u, 38826u, 18412u), Struct_1(vec2<u32>(3446u, 1u), -32450i, 320f, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 9552i), 4294967295u), vec3<i32>(1i, -36955i, 1i), true)), Struct_4(Struct_2(vec4<u32>(0u, 15481u, 2522u, 29399u), Struct_1(vec2<u32>(0u, 4294967295u), 9534i, 1361f, vec4<i32>(-30967i, 21635i, 5166i, 0i), 11790u), vec3<i32>(0i, i32(-2147483648), 19049i), false)), Struct_4(Struct_2(vec4<u32>(4294967295u, 21020u, 0u, 0u), Struct_1(vec2<u32>(1u, 63814u), 5436i, -294f, vec4<i32>(2147483647i, -14766i, -1i, -1i), 1u), vec3<i32>(-8881i, 24706i, 0i), true)), Struct_4(Struct_2(vec4<u32>(23471u, 3269u, 1511u, 1u), Struct_1(vec2<u32>(4294967295u, 1u), 1i, 528f, vec4<i32>(2147483647i, -3063i, -1i, -56801i), 22639u), vec3<i32>(-69540i, -6658i, -44462i), true)), Struct_4(Struct_2(vec4<u32>(55950u, 42499u, 37650u, 37199u), Struct_1(vec2<u32>(25886u, 44578u), 28490i, 1000f, vec4<i32>(-899i, 1i, -6999i, 2147483647i), 0u), vec3<i32>(-14270i, 0i, 33869i), true)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_mult_u32(arg_0 << (u_input.b.x % 32u), _wgslsmith_mod_u32(u_input.b.x & arg_0, abs(firstLeadingBit(min(u_input.b.x, 4294967295u)))));
    var var_1 = vec4<u32>(arg_0 | ~arg_0, arg_0, _wgslsmith_mod_u32(arg_0, u_input.b.x), ~arg_0);
    global1 = array<Struct_4, 24>();
    global1 = array<Struct_4, 24>();
    global0 = 0u;
    return !vec2<bool>(arg_2, false);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4) -> vec3<i32> {
    global1 = array<Struct_4, 24>();
    global0 = ~(~arg_2.a.a.x);
    var var_0 = arg_1.a;
    var_0 = arg_1.a;
    var_0 = Struct_2(~var_0.a, arg_1.a.b, ~(-vec3<i32>(~u_input.a.x, -71997i, reverseBits(1i))), true);
    return arg_1.a.b.d.zwz;
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_5(-vec3<i32>(-2147483647i, ~2147483647i, abs(u_input.a.x)), vec4<i32>(_wgslsmith_mod_i32(1i, u_input.a.x), ~(~17572i), -u_input.a.x, 1i ^ u_input.a.x), func_2(~4294967295u, -345f, true), ~firstLeadingBit(~_wgslsmith_mod_vec2_u32(u_input.b.zx, vec2<u32>(26003u, u_input.b.x))), !(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true)));
    global1 = array<Struct_4, 24>();
    var_0 = Struct_5((-countOneBits(var_0.a) & vec3<i32>(2967i, select(0i, -1i, var_0.c.x), _wgslsmith_div_i32(var_0.a.x, u_input.a.x))) ^ abs(func_3(u_input.a.x, global1[_wgslsmith_index_u32(~u_input.b.x, 24u)], Struct_4(Struct_2(vec4<u32>(27370u, var_0.d.x, 1971u, u_input.b.x), Struct_1(vec2<u32>(u_input.b.x, var_0.d.x), 2147483647i, 1000f, vec4<i32>(var_0.a.x, 8619i, -2147483647i, u_input.a.x), var_0.d.x), vec3<i32>(u_input.a.x, 2835i, 2147483647i), var_0.c.x)))), -min(vec4<i32>(var_0.a.x ^ var_0.b.x, abs(var_0.b.x), -1i, -12499i), (vec4<i32>(-29018i, u_input.a.x, var_0.b.x, 2147483647i) & vec4<i32>(-55631i, 4181i, -2147483647i, u_input.a.x)) << (vec4<u32>(0u, var_0.d.x, 72389u, 3743u) % vec4<u32>(32u))), select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(func_2(var_0.d.x, 929f, var_0.e.x).x & func_2(3186u, 266f, var_0.e.x).x, select(true, false, 0u != var_0.d.x)), !select(vec2<bool>(true, var_0.c.x), !var_0.e, var_0.e)), vec2<u32>(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x) | ~0u, 10744u), func_2(_wgslsmith_clamp_u32(max(var_0.d.x, _wgslsmith_mult_u32(var_0.d.x, u_input.b.x)), 19233u, ~var_0.d.x ^ abs(0u)), _wgslsmith_f_op_f32(floor(-1135f)), select(u_input.a.x > max(var_0.b.x, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, 0u, var_0.d.x), u_input.b) != 0u, var_0.c.x)));
    let var_1 = select(!(u_input.b.x != (~u_input.b.x ^ ~9299u)), var_0.c.x, true);
    let var_2 = ~firstTrailingBit(u_input.b & u_input.b);
    return vec4<i32>(firstTrailingBit(~reverseBits(_wgslsmith_dot_vec4_i32(var_0.b, var_0.b))), var_0.b.x, firstTrailingBit(var_0.b.x), ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_i32(~(min(vec4<i32>(57161i, u_input.a.x, 32128i, 1i) & vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), select(vec4<i32>(-1i, u_input.a.x, 43591i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), true)) & min(func_1(), firstLeadingBit(vec4<i32>(-1i, 2147483647i, u_input.a.x, -2147483647i)))), -_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(1i, 0i, u_input.a.x, u_input.a.x) ^ vec4<i32>(-2147483647i, 29455i, u_input.a.x, 0i)), abs(vec4<i32>(0i, u_input.a.x, -10684i, u_input.a.x))));
    var var_1 = ~_wgslsmith_add_vec4_u32(~((vec4<u32>(1u, 26748u, 12301u, u_input.b.x) >> (vec4<u32>(11877u, u_input.b.x, u_input.b.x, 16452u) % vec4<u32>(32u))) >> (~vec4<u32>(14801u, 0u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.b.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(7996u, 33678u, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 0u, 66076u)) % vec4<u32>(32u)), ~max(vec4<u32>(1u, u_input.b.x, 19359u, 57143u), vec4<u32>(u_input.b.x, 4294967295u, 57190u, 4294967295u))));
    let var_2 = Struct_1(_wgslsmith_sub_vec2_u32(select(vec2<u32>(8476u, abs(u_input.b.x)), vec2<u32>(~u_input.b.x, 24122u), select(vec2<bool>(true, true), func_2(1u, -196f, false), 65066i < u_input.a.x)), u_input.b.zx), ~9051i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -467f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1089f + -958f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-859f - -560f)))), -var_0, ~0u);
    var var_3 = Struct_5(-func_3(1i, global1[_wgslsmith_index_u32(~819u, 24u)], Struct_4(Struct_2(vec4<u32>(var_1.x, 42382u, var_2.a.x, u_input.b.x), var_2, vec3<i32>(u_input.a.x, var_2.b, -1i), true))), var_2.d, select(func_2(55927u, _wgslsmith_f_op_f32(sign(var_2.c)), false), vec2<bool>(false, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))), vec2<bool>(func_2(4294967295u, _wgslsmith_f_op_f32(-var_2.c), any(vec3<bool>(false, true, true))).x, false)), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(var_1.zw), var_2.a << (u_input.b.zz % vec2<u32>(32u))), vec2<u32>(0u, u_input.b.x)), min(~min(0u, 1u), 77612u)), !vec2<bool>(all(vec3<bool>(false, true, false)), false | select(false, false, false)));
    var_1 = ~_wgslsmith_clamp_vec4_u32(max(~vec4<u32>(var_3.d.x, var_2.e, 28124u, var_1.x), vec4<u32>(var_3.d.x, var_2.a.x, 1u, 44264u)) | vec4<u32>(var_2.e, _wgslsmith_mod_u32(15959u, var_3.d.x), var_1.x | var_1.x, ~34490u), ~vec4<u32>(var_2.a.x, var_2.a.x, select(4294967295u, 50616u, var_3.c.x), 54087u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_2.a.x, 0u, 0u) >> (vec4<u32>(var_1.x, u_input.b.x, 4294967295u, var_2.e) % vec4<u32>(32u)), reverseBits(vec4<u32>(var_1.x, var_1.x, 93801u, 5095u))) & abs(vec4<u32>(var_1.x, var_3.d.x, var_1.x, u_input.b.x)));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(5561i, -17462i), -var_2.d.zz) | vec2<i32>(0i, -var_0.x), -vec2<i32>(reverseBits(-1i), 47537i), (vec2<i32>(-13810i, 11926i) << ((vec2<u32>(1637u, 17749u) & var_1.xx) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(var_2.d.yx, vec2<i32>(var_0.x, -2147483647i), vec2<i32>(-1i, var_0.x)), vec2<i32>(1i, 1i))), i32(-1i) * -1i, vec4<u32>(u_input.b.x, min(_wgslsmith_add_u32(var_1.x, 1u), _wgslsmith_add_u32(1u, u_input.b.x) ^ _wgslsmith_div_u32(1u, 4294967295u)), var_2.a.x, ~min(31599u, 10929u) << (~_wgslsmith_mult_u32(var_3.d.x, u_input.b.x) % 32u)), _wgslsmith_add_vec2_i32(vec2<i32>(-var_3.a.x >> (~4294967295u % 32u), -(~var_2.d.x)), vec2<i32>(u_input.a.x ^ _wgslsmith_sub_i32(u_input.a.x, var_2.d.x), firstTrailingBit(u_input.a.x))));
}

