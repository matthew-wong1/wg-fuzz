struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: u32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(-14487i, vec2<u32>(0u, 78288u), vec3<f32>(-914f, -2397f, 1000f), -17334i, vec2<bool>(true, true)), Struct_4(28868i, vec2<u32>(4294967295u, 1u), vec3<f32>(-684f, -1000f, 1197f), 1i, vec2<bool>(false, false)), Struct_4(-1i, vec2<u32>(0u, 1u), vec3<f32>(-1090f, 468f, 759f), 13835i, vec2<bool>(true, false)), Struct_4(i32(-2147483648), vec2<u32>(11161u, 143518u), vec3<f32>(-520f, -1000f, 575f), i32(-2147483648), vec2<bool>(true, true)), Struct_4(i32(-2147483648), vec2<u32>(11817u, 0u), vec3<f32>(-154f, -492f, 1725f), 0i, vec2<bool>(false, false)), Struct_4(-1i, vec2<u32>(1u, 68796u), vec3<f32>(1132f, -393f, -2383f), -36080i, vec2<bool>(false, true)), Struct_4(-86853i, vec2<u32>(99172u, 3989u), vec3<f32>(-332f, -253f, -1157f), 36696i, vec2<bool>(true, false)), Struct_4(59625i, vec2<u32>(32373u, 0u), vec3<f32>(451f, -385f, -1000f), 0i, vec2<bool>(true, false)), Struct_4(-14360i, vec2<u32>(4294967295u, 1u), vec3<f32>(163f, -356f, 1169f), 0i, vec2<bool>(false, true)), Struct_4(-31429i, vec2<u32>(4294967295u, 19094u), vec3<f32>(977f, -602f, -751f), 19943i, vec2<bool>(true, false)), Struct_4(i32(-2147483648), vec2<u32>(33870u, 101773u), vec3<f32>(1542f, 465f, -1038f), 63408i, vec2<bool>(true, false)), Struct_4(-41633i, vec2<u32>(48654u, 33175u), vec3<f32>(-608f, -688f, 1316f), 0i, vec2<bool>(false, true)), Struct_4(34033i, vec2<u32>(0u, 4294967295u), vec3<f32>(-891f, -1491f, 1057f), -48429i, vec2<bool>(false, true)), Struct_4(35638i, vec2<u32>(39746u, 29608u), vec3<f32>(-196f, 463f, 931f), -1i, vec2<bool>(true, false)), Struct_4(i32(-2147483648), vec2<u32>(43566u, 12221u), vec3<f32>(493f, 585f, 1935f), -11577i, vec2<bool>(true, false)), Struct_4(20335i, vec2<u32>(1u, 1u), vec3<f32>(1023f, -166f, -2212f), -43338i, vec2<bool>(true, false)), Struct_4(2128i, vec2<u32>(2677u, 4294967295u), vec3<f32>(821f, -2056f, -1301f), 17680i, vec2<bool>(true, true)), Struct_4(2147483647i, vec2<u32>(16349u, 0u), vec3<f32>(934f, 1536f, 226f), 2278i, vec2<bool>(false, false)), Struct_4(13565i, vec2<u32>(43633u, 0u), vec3<f32>(-391f, 193f, -276f), -59063i, vec2<bool>(true, false)), Struct_4(-8937i, vec2<u32>(75298u, 4294967295u), vec3<f32>(1000f, 453f, -513f), -36109i, vec2<bool>(true, false)), Struct_4(-1i, vec2<u32>(18147u, 28003u), vec3<f32>(-605f, -1838f, -412f), 9355i, vec2<bool>(false, true)), Struct_4(-13034i, vec2<u32>(0u, 80283u), vec3<f32>(-735f, -1025f, -907f), 10122i, vec2<bool>(false, false)), Struct_4(0i, vec2<u32>(16124u, 4294967295u), vec3<f32>(363f, 1378f, -1911f), 0i, vec2<bool>(true, true)), Struct_4(-22145i, vec2<u32>(1u, 39898u), vec3<f32>(1252f, 321f, -660f), -18091i, vec2<bool>(true, false)), Struct_4(-1i, vec2<u32>(59638u, 103954u), vec3<f32>(-2023f, 213f, -1052f), -60193i, vec2<bool>(true, false)), Struct_4(0i, vec2<u32>(22867u, 4294967295u), vec3<f32>(-1139f, 1393f, 1053f), 6358i, vec2<bool>(true, false)), Struct_4(i32(-2147483648), vec2<u32>(28108u, 16707u), vec3<f32>(-899f, -2315f, -1000f), -4083i, vec2<bool>(false, false)), Struct_4(26365i, vec2<u32>(0u, 11242u), vec3<f32>(363f, -823f, 1023f), 7121i, vec2<bool>(false, false)), Struct_4(7492i, vec2<u32>(0u, 0u), vec3<f32>(1000f, 1108f, 837f), 2826i, vec2<bool>(true, true)), Struct_4(-43930i, vec2<u32>(22465u, 0u), vec3<f32>(-283f, -2500f, 1000f), 33041i, vec2<bool>(false, true)), Struct_4(-24043i, vec2<u32>(0u, 4294967295u), vec3<f32>(-611f, 1081f, -1565f), -7943i, vec2<bool>(true, false)));

var<private> global1: array<vec2<bool>, 18>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: i32) -> i32 {
    global1 = array<vec2<bool>, 18>();
    global1 = array<vec2<bool>, 18>();
    var var_0 = all(select(!vec2<bool>(!arg_0, 1i < u_input.b), vec2<bool>(true, true), global1[_wgslsmith_index_u32(1u, 18u)]));
    var var_1 = firstTrailingBit(~583u);
    var_0 = u_input.c <= ~select(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.d, u_input.d), vec4<u32>(u_input.d, 55024u, u_input.d, u_input.d)), ~vec4<u32>(47362u, u_input.c, 1u, u_input.d)), 1u, true);
    return abs(u_input.b);
}

fn func_2() -> Struct_3 {
    global1 = array<vec2<bool>, 18>();
    var var_0 = max(~vec3<u32>(countOneBits(countOneBits(10591u)), 1u, ~(1u >> (1u % 32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(8145u, _wgslsmith_add_u32(u_input.d, 0u), ~33444u), abs(u_input.c ^ u_input.c), ~10787u), vec3<u32>(~0u >> (u_input.d % 32u), _wgslsmith_sub_u32(u_input.c, max(123751u, 54238u)), u_input.c)));
    let var_1 = vec4<i32>(~(~countOneBits(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-24533i, 20513i, 0i, 0i)))), func_3(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, true), true)), vec2<f32>(-197f, 186f), -16022i), 0i, _wgslsmith_dot_vec3_i32(u_input.a.zxw, _wgslsmith_clamp_vec3_i32(vec3<i32>(-u_input.a.x, 2147483647i, -4221i), u_input.a.zwy, ~vec3<i32>(49800i, u_input.b, u_input.a.x))));
    var var_2 = !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-976f + 141f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-745f)) - 1296f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(929f, -2024f))));
    var var_3 = Struct_5(vec2<i32>(~(-51682i), 6620i), -773f, ~abs(vec4<u32>(u_input.d, 45579u, u_input.d, ~1u)));
    return Struct_3(select(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, false), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(any(vec4<bool>(false, false, false, true)), true, true)), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(false, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, true))), Struct_2(Struct_1(u_input.c & ~u_input.c, vec4<f32>(_wgslsmith_div_f32(-2316f, -3272f), 1439f, 300f, var_3.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1236f, var_3.b) * _wgslsmith_f_op_f32(abs(var_3.b))), _wgslsmith_f_op_f32(f32(-1f) * -1457f)), all(vec3<bool>(true, true, true)), -u_input.a.yww), ~(~_wgslsmith_mod_u32(1u, 1u)) | u_input.c, ~_wgslsmith_clamp_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 42124u, 0u, 58930u), vec4<u32>(var_3.c.x, var_3.c.x, var_0.x, 19878u)), ~var_3.c, 4294967295u > var_0.x), ~vec4<u32>(1u, 26531u, u_input.c, 32303u) | vec4<u32>(4294967295u, 62456u, var_3.c.x, u_input.d), var_3.c));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>) -> Struct_2 {
    global1 = array<vec2<bool>, 18>();
    let var_0 = 79897u;
    global0 = array<Struct_4, 31>();
    var var_1 = _wgslsmith_f_op_f32(-165f * -673f);
    let var_2 = 1u;
    return func_2().b;
}

fn func_1() -> f32 {
    var var_0 = Struct_5(vec2<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), -4748i)) & u_input.a.yy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-901f, _wgslsmith_f_op_f32(f32(-1f) * -311f), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1254f - 205f) * _wgslsmith_f_op_f32(-224f + 637f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(606f + 587f), 876f))), ~(~(~(vec4<u32>(45871u, u_input.c, 45733u, u_input.d) >> (vec4<u32>(4294967295u, u_input.d, 4294967295u, u_input.d) % vec4<u32>(32u))))));
    global1 = array<vec2<bool>, 18>();
    global0 = array<Struct_4, 31>();
    global1 = array<vec2<bool>, 18>();
    let var_1 = func_4(func_2(), i32(-1i) * -abs(19008i), _wgslsmith_add_vec4_u32(vec4<u32>(~(~u_input.c), 8772u, 46293u, 1u), ~vec4<u32>(u_input.d, u_input.d ^ var_0.c.x, u_input.d, u_input.d << (var_0.c.x % 32u))));
    return 1541f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = u_input.a.x;
    global1 = array<vec2<bool>, 18>();
    global0 = array<Struct_4, 31>();
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(min(~reverseBits(vec4<u32>(var_0, 1u, var_0, u_input.c)), firstLeadingBit(vec4<u32>(14314u, u_input.c, 0u, 74703u))), reverseBits(firstLeadingBit(vec4<u32>(0u, 4294967295u, 57466u, 0u)))), vec4<f32>(-897f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -700f), -972f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-264f, 1000f, false))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(367f)) - _wgslsmith_f_op_f32(max(435f, -269f))))), 713f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1240f + -641f))), _wgslsmith_f_op_f32(round(-793f)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1185f, _wgslsmith_f_op_f32(-1049f * -1009f))) - _wgslsmith_f_op_f32(func_4(Struct_3(vec3<bool>(false, false, false), Struct_2(Struct_1(var_0, vec4<f32>(752f, -811f, 1000f, -1625f), -764f, 375f), true, u_input.a.zzx), var_0, vec4<u32>(665u, 14267u, u_input.d, var_0)), u_input.a.x, vec4<u32>(var_0, var_0, 4294967295u, var_0)).a.c * -1630f)))));
    var var_3 = var_2.b.ywx;
    let var_4 = Struct_5(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(_wgslsmith_add_i32(u_input.a.x, 21120i), min(1i, 8491i))), u_input.a.zw), _wgslsmith_f_op_f32(-var_2.d), select(_wgslsmith_div_vec4_u32(~vec4<u32>(31864u, var_2.a, 4294967295u, var_0) | abs(vec4<u32>(50515u, 1u, 1u, 4294967295u)), vec4<u32>(select(10153u, var_2.a, true), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(0u, 4294967295u)), var_0 | u_input.c, u_input.d)), ~max(_wgslsmith_div_vec4_u32(vec4<u32>(31712u, var_2.a, 48728u, 48958u), vec4<u32>(155706u, var_0, u_input.d, u_input.d)), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) ^ vec4<u32>(var_0, u_input.d, u_input.c, u_input.c)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), select(select(false, false, true), true, true))));
    let var_5 = Struct_5(u_input.a.xz, _wgslsmith_f_op_f32(f32(-1f) * -848f), var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(var_5.c, ~_wgslsmith_add_vec4_u32(~var_5.c, ~var_4.c), abs(min(vec4<u32>(var_2.a, 19891u, var_4.c.x, 5289u), ~vec4<u32>(var_0, var_2.a, var_0, 0u)))), var_4.a.x, var_4.a.x, var_4.c.yxz);
}

