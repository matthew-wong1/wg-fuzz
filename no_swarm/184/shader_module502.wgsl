struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<u32>(4294967295u, 29258u), Struct_1(vec2<bool>(true, true), 12675u, 502f, 4294967295u), Struct_1(vec2<bool>(true, false), 66332u, -180f, 0u), vec4<bool>(false, false, false, false)), Struct_2(vec2<u32>(13637u, 4294967295u), Struct_1(vec2<bool>(true, false), 29485u, 772f, 0u), Struct_1(vec2<bool>(false, true), 39329u, 1000f, 31727u), vec4<bool>(true, false, true, false)), Struct_2(vec2<u32>(41282u, 1u), Struct_1(vec2<bool>(false, true), 1766u, -1066f, 1u), Struct_1(vec2<bool>(true, false), 4294967295u, -628f, 6805u), vec4<bool>(false, false, false, false)), Struct_2(vec2<u32>(9446u, 1u), Struct_1(vec2<bool>(true, true), 61013u, 989f, 75341u), Struct_1(vec2<bool>(true, false), 44375u, -1000f, 15160u), vec4<bool>(true, true, true, true)), Struct_2(vec2<u32>(19329u, 4594u), Struct_1(vec2<bool>(false, true), 0u, -1800f, 4294967295u), Struct_1(vec2<bool>(true, false), 1u, -356f, 7312u), vec4<bool>(false, true, true, false)), Struct_2(vec2<u32>(21551u, 71233u), Struct_1(vec2<bool>(false, true), 1u, -165f, 174u), Struct_1(vec2<bool>(false, true), 4294967295u, 812f, 4294967295u), vec4<bool>(true, false, true, true)), Struct_2(vec2<u32>(32222u, 4294967295u), Struct_1(vec2<bool>(false, true), 9821u, 190f, 39101u), Struct_1(vec2<bool>(false, true), 60074u, -1715f, 14750u), vec4<bool>(true, true, true, false)), Struct_2(vec2<u32>(5704u, 51467u), Struct_1(vec2<bool>(true, false), 0u, 892f, 1u), Struct_1(vec2<bool>(false, true), 0u, 1406f, 58318u), vec4<bool>(true, false, false, true)), Struct_2(vec2<u32>(1u, 1u), Struct_1(vec2<bool>(false, true), 10549u, -447f, 0u), Struct_1(vec2<bool>(true, false), 71739u, 1385f, 1u), vec4<bool>(true, true, false, false)), Struct_2(vec2<u32>(0u, 1u), Struct_1(vec2<bool>(false, false), 17490u, 348f, 50078u), Struct_1(vec2<bool>(true, false), 17270u, -1010f, 1u), vec4<bool>(true, false, false, false)), Struct_2(vec2<u32>(0u, 1u), Struct_1(vec2<bool>(true, false), 841u, -673f, 35321u), Struct_1(vec2<bool>(true, false), 34377u, -1477f, 1u), vec4<bool>(true, false, true, false)), Struct_2(vec2<u32>(22361u, 4294967295u), Struct_1(vec2<bool>(true, true), 6596u, -1118f, 1u), Struct_1(vec2<bool>(false, false), 30245u, 2174f, 53705u), vec4<bool>(false, true, false, true)), Struct_2(vec2<u32>(71214u, 4294967295u), Struct_1(vec2<bool>(false, true), 35200u, 303f, 0u), Struct_1(vec2<bool>(true, false), 925u, -498f, 32022u), vec4<bool>(true, false, true, false)), Struct_2(vec2<u32>(74575u, 4294967295u), Struct_1(vec2<bool>(true, true), 4294967295u, 403f, 0u), Struct_1(vec2<bool>(true, false), 0u, 582f, 36u), vec4<bool>(true, false, false, false)), Struct_2(vec2<u32>(58795u, 4294967295u), Struct_1(vec2<bool>(false, false), 0u, -130f, 17674u), Struct_1(vec2<bool>(false, false), 9103u, 283f, 39504u), vec4<bool>(true, true, false, true)), Struct_2(vec2<u32>(39025u, 17102u), Struct_1(vec2<bool>(false, false), 0u, 152f, 72667u), Struct_1(vec2<bool>(true, false), 4294967295u, 2200f, 102610u), vec4<bool>(true, true, true, false)), Struct_2(vec2<u32>(0u, 37437u), Struct_1(vec2<bool>(true, false), 4294967295u, -786f, 0u), Struct_1(vec2<bool>(true, true), 4294967295u, 1047f, 1u), vec4<bool>(true, true, true, false)), Struct_2(vec2<u32>(0u, 5683u), Struct_1(vec2<bool>(true, false), 1u, -358f, 0u), Struct_1(vec2<bool>(false, true), 3196u, 930f, 49579u), vec4<bool>(false, false, true, false)), Struct_2(vec2<u32>(1440u, 1u), Struct_1(vec2<bool>(false, true), 70776u, 1230f, 14794u), Struct_1(vec2<bool>(false, false), 0u, -549f, 4294967295u), vec4<bool>(false, true, false, false)), Struct_2(vec2<u32>(10527u, 4294967295u), Struct_1(vec2<bool>(true, true), 4294967295u, -1816f, 19376u), Struct_1(vec2<bool>(false, false), 0u, 886f, 4294967295u), vec4<bool>(false, true, true, true)), Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(vec2<bool>(true, false), 10258u, 853f, 0u), Struct_1(vec2<bool>(false, true), 1u, -810f, 1u), vec4<bool>(true, false, false, false)), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec2<bool>(true, true), 4592u, -467f, 22866u), Struct_1(vec2<bool>(true, false), 55888u, 1735f, 43547u), vec4<bool>(true, false, false, false)), Struct_2(vec2<u32>(12108u, 4294967295u), Struct_1(vec2<bool>(true, true), 0u, -1701f, 0u), Struct_1(vec2<bool>(false, false), 36155u, 294f, 22746u), vec4<bool>(false, true, false, true)), Struct_2(vec2<u32>(3003u, 1u), Struct_1(vec2<bool>(false, true), 79554u, 1050f, 45450u), Struct_1(vec2<bool>(true, true), 37557u, -756f, 1u), vec4<bool>(true, true, false, true)), Struct_2(vec2<u32>(4294967295u, 29127u), Struct_1(vec2<bool>(false, false), 0u, -113f, 42720u), Struct_1(vec2<bool>(true, false), 0u, -292f, 10316u), vec4<bool>(false, true, false, true)), Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(vec2<bool>(true, true), 42158u, 692f, 4294967295u), Struct_1(vec2<bool>(false, false), 0u, 231f, 1u), vec4<bool>(false, false, true, true)), Struct_2(vec2<u32>(1u, 12357u), Struct_1(vec2<bool>(false, true), 11333u, -897f, 0u), Struct_1(vec2<bool>(false, false), 19533u, 1184f, 4294967295u), vec4<bool>(true, false, true, true)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = vec4<i32>(~u_input.a, -2147483647i, -2147483647i, -67774i & _wgslsmith_div_i32(_wgslsmith_div_i32(firstTrailingBit(0i), -56846i), max(u_input.d, reverseBits(u_input.a))));
    let var_1 = Struct_3(!(!select(vec3<bool>(false, arg_0, arg_0), !vec3<bool>(true, arg_0, arg_0), arg_0 || arg_0)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, select(18267u, u_input.b.x, false), u_input.e, _wgslsmith_mult_u32(44312u, u_input.e)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.c, 7909u), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)))), 2263u), u_input.c, Struct_2(~_wgslsmith_div_vec2_u32(u_input.b.xz, u_input.b.yy), Struct_1(select(vec2<bool>(arg_0, arg_0), !vec2<bool>(false, arg_0), false), (80064u ^ u_input.b.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, u_input.e)), -1175f, ~_wgslsmith_mult_u32(4404u, 1u)), Struct_1(select(vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, true), vec2<bool>(false, false), vec2<bool>(arg_0, arg_0)), !vec2<bool>(true, arg_0)), u_input.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 310f)), u_input.c), select(vec4<bool>(true, select(arg_0, true, false), all(vec2<bool>(false, arg_0)), arg_0), select(select(vec4<bool>(true, arg_0, true, false), vec4<bool>(false, arg_0, true, false), arg_0), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, false)), true), true)));
    global0 = array<Struct_2, 27>();
    var var_2 = ~(_wgslsmith_clamp_vec3_u32(u_input.b, ~vec3<u32>(4294967295u, var_1.d.b.d, 4294967295u), vec3<u32>(_wgslsmith_mod_u32(1u, 4294967295u), ~var_1.d.c.d, 58516u)) << (u_input.b % vec3<u32>(32u)));
    let var_3 = var_0.zx;
    return select(var_1.a, vec3<bool>(false, true, arg_0), var_1.a.x & (true || select(true, arg_0 | var_1.d.c.a.x, arg_0 || false)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = min(i32(-1i) * -1i, u_input.a);
    var var_1 = Struct_3(!vec3<bool>(any(!vec3<bool>(true, arg_1.a.x, true)), !select(arg_1.a.x, false, arg_2), _wgslsmith_f_op_f32(sign(2104f)) <= arg_1.c), 4294967295u, min(_wgslsmith_mult_u32(u_input.c, 14509u), _wgslsmith_div_u32(~u_input.b.x << (1u % 32u), u_input.b.x)), Struct_2(u_input.b.yy, Struct_1(!(!vec2<bool>(false, arg_2)), ~firstTrailingBit(35220u), arg_1.c, 1u), Struct_1(vec2<bool>(arg_1.a.x, true), 4294967295u, 1409f, ~(~u_input.b.x)), select(!(!vec4<bool>(false, arg_1.a.x, arg_2, arg_2)), !select(vec4<bool>(arg_1.a.x, false, arg_2, arg_1.a.x), vec4<bool>(arg_2, arg_2, false, arg_1.a.x), true), false)));
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var_1 = Struct_3(select(!vec3<bool>(true, true, !arg_2), !(!func_3(arg_1.a.x)), any(select(vec2<bool>(arg_1.a.x, true), vec2<bool>(arg_1.a.x, false), select(var_1.d.c.a, vec2<bool>(true, arg_1.a.x), var_1.a.yy)))), ~(_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, arg_1.d, 22542u, 0u), vec4<u32>(u_input.c, 0u, var_1.c, 77752u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.e, 33111u), vec4<u32>(arg_1.d, 0u, 1u, 0u))) & ~firstTrailingBit(arg_1.b)), min(4294967295u, 1u), Struct_2(firstTrailingBit(max(var_1.d.a, ~vec2<u32>(53075u, 1u))), Struct_1(vec2<bool>(-1418f <= var_1.d.b.c, any(vec4<bool>(false, false, true, var_1.a.x))), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-411f - arg_1.c) - -1508f), min(~arg_1.b, 1u)), Struct_1(var_1.d.c.a, u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.c))), var_1.b), var_1.d.d));
    return 1i;
}

fn func_1() -> f32 {
    var var_0 = vec2<i32>(~4863i, -(u_input.d >> (u_input.b.x % 32u))) ^ vec2<i32>(i32(-1i) * -37429i, func_2(-1i, Struct_1(vec2<bool>(true, true), u_input.b.x, _wgslsmith_f_op_f32(ceil(-2808f)), _wgslsmith_mod_u32(1u, u_input.b.x)), any(vec3<bool>(true, true, true))));
    var_0 = vec2<i32>(-(5916i << (1u % 32u)), u_input.a);
    let var_1 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true);
    var var_2 = Struct_2(select(u_input.b.yx, ~u_input.b.zy, select(var_1.x, false, true | var_1.x)), Struct_1(vec2<bool>(true, var_1.x), 0u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-977f + _wgslsmith_f_op_f32(min(-2213f, -902f))), _wgslsmith_f_op_f32(ceil(454f)), true)), u_input.e), Struct_1(vec2<bool>(any(func_3(false).yy), true), abs(~(~1u)), 685f, u_input.b.x), vec4<bool>(var_1.x, true, func_3(any(vec3<bool>(false, var_1.x, false)) || all(var_1.zy)).x, true));
    global0 = array<Struct_2, 27>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-230f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.b.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-352f, 921f, 584f, 2156f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 626f, -1059f, -866f))) + vec4<f32>(_wgslsmith_div_f32(-1000f, 1236f), 470f, _wgslsmith_f_op_f32(-1258f - -480f), -654f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-497f, -2609f, -1000f, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(421f, -1208f, 1000f, 921f) * vec4<f32>(-1449f, 620f, 743f, 1272f))))) + vec4<f32>(340f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1039f)))), 373f, _wgslsmith_f_op_f32(func_1())));
    global0 = array<Struct_2, 27>();
    let var_1 = Struct_2(u_input.b.yz, Struct_1(vec2<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, false, false))), ~(~63343u), -287f, u_input.c), Struct_1(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, true)), u_input.e <= u_input.e), (0u << (u_input.e % 32u)) == min(0u, 82324u)), ~(4294967295u & (102146u & u_input.c)), _wgslsmith_f_op_f32(-1424f * -1345f), ~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(0u, u_input.e))), vec4<bool>(!(u_input.c <= 4294967295u) || false, true, false, true));
    let var_2 = u_input.d;
    global0 = array<Struct_2, 27>();
    let var_3 = vec4<i32>(22917i, var_2, -36912i, -2147483647i);
    global0 = array<Struct_2, 27>();
    var var_4 = ~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(abs(var_1.a.x), 0u, u_input.c & var_1.a.x, ~var_1.c.b), firstLeadingBit(~vec4<u32>(139083u, u_input.c, 1u, 70328u)), 27331u == _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.d, 1u, var_1.a.x, var_1.c.d), vec4<u32>(0u, 4294967295u, var_1.b.d, var_1.b.b))), vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(6959u, u_input.e, u_input.c))), 0u, 6092u, ~(~15092u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(138779u, 1u, 1u, u_input.c) ^ vec4<u32>(4294967295u, 1u, 64134u, 11160u), vec4<u32>(13252u, 51244u, u_input.b.x, var_1.b.d)));
    var var_5 = Struct_3(vec3<bool>(!(!func_3(true).x), true, all(select(var_1.d.wyw, vec3<bool>(true, true, true), var_1.b.a.x)) | true), u_input.b.x, _wgslsmith_dot_vec2_u32(reverseBits(~u_input.b.xz), vec2<u32>(1u, 1u)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.wxy >> (~(~(vec3<u32>(var_1.a.x, var_4.x, var_1.b.d) ^ var_4.xxx)) % vec3<u32>(32u)), reverseBits(_wgslsmith_sub_u32(4294967295u, 4294967295u)));
}

