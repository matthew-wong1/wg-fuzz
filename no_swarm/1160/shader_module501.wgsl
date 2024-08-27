struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
    d: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: i32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
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

var<private> global0: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(-1680f, 49410i, 5547i, Struct_1(true, -1344f, vec3<i32>(i32(-2147483648), -18783i, -22312i), vec2<f32>(886f, -159f)), Struct_3(Struct_2(Struct_1(true, -713f, vec3<i32>(i32(-2147483648), 30749i, -17895i), vec2<f32>(836f, 951f)), vec4<u32>(0u, 1u, 4294967295u, 52440u), false, 0u), vec2<u32>(6557u, 29793u))), Struct_5(-1011f, i32(-2147483648), 1i, Struct_1(true, -871f, vec3<i32>(0i, 1887i, i32(-2147483648)), vec2<f32>(-101f, -119f)), Struct_3(Struct_2(Struct_1(true, 1600f, vec3<i32>(58983i, 2147483647i, -25290i), vec2<f32>(1000f, 373f)), vec4<u32>(61430u, 0u, 0u, 4294967295u), true, 4294967295u), vec2<u32>(0u, 4294967295u))), Struct_5(-1000f, 0i, -18131i, Struct_1(true, 128f, vec3<i32>(1i, 0i, i32(-2147483648)), vec2<f32>(183f, -462f)), Struct_3(Struct_2(Struct_1(false, -108f, vec3<i32>(-72633i, -37200i, 2147483647i), vec2<f32>(1000f, -719f)), vec4<u32>(56897u, 25672u, 30122u, 9481u), true, 1u), vec2<u32>(0u, 4294967295u))), Struct_5(-603f, 1i, 60771i, Struct_1(true, 1000f, vec3<i32>(2147483647i, 2147483647i, 16011i), vec2<f32>(1482f, 2331f)), Struct_3(Struct_2(Struct_1(false, 1000f, vec3<i32>(2147483647i, 0i, 50943i), vec2<f32>(1474f, -1860f)), vec4<u32>(81294u, 0u, 4294967295u, 1317u), true, 74949u), vec2<u32>(1u, 1u))), Struct_5(404f, 1i, -29482i, Struct_1(false, 1239f, vec3<i32>(i32(-2147483648), -17790i, 16202i), vec2<f32>(431f, 1123f)), Struct_3(Struct_2(Struct_1(true, 779f, vec3<i32>(i32(-2147483648), i32(-2147483648), -16647i), vec2<f32>(565f, 614f)), vec4<u32>(1u, 22978u, 36285u, 40077u), true, 3961u), vec2<u32>(1u, 1u))), Struct_5(1000f, 0i, 36051i, Struct_1(true, -128f, vec3<i32>(2147483647i, 3628i, 2147483647i), vec2<f32>(-103f, 178f)), Struct_3(Struct_2(Struct_1(false, 1000f, vec3<i32>(-1i, 0i, 2147483647i), vec2<f32>(-1920f, 593f)), vec4<u32>(1u, 26836u, 53713u, 13934u), true, 4294967295u), vec2<u32>(71157u, 62938u))), Struct_5(190f, 1896i, 38483i, Struct_1(false, 1000f, vec3<i32>(39179i, 1i, i32(-2147483648)), vec2<f32>(-144f, -1274f)), Struct_3(Struct_2(Struct_1(false, 1537f, vec3<i32>(11018i, -1i, 0i), vec2<f32>(-426f, -518f)), vec4<u32>(78510u, 4751u, 16895u, 4294967295u), true, 20165u), vec2<u32>(43267u, 32280u))), Struct_5(968f, 48910i, 0i, Struct_1(true, 160f, vec3<i32>(-1i, 2147483647i, 32746i), vec2<f32>(-1000f, 303f)), Struct_3(Struct_2(Struct_1(true, -266f, vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec2<f32>(478f, -875f)), vec4<u32>(31033u, 4294967295u, 4294967295u, 35923u), true, 33883u), vec2<u32>(1u, 15626u))), Struct_5(-810f, 15775i, 2147483647i, Struct_1(true, 278f, vec3<i32>(i32(-2147483648), -1i, -36615i), vec2<f32>(2776f, -509f)), Struct_3(Struct_2(Struct_1(true, -166f, vec3<i32>(39336i, -6102i, 62789i), vec2<f32>(-1664f, 525f)), vec4<u32>(0u, 90317u, 22529u, 38841u), true, 18376u), vec2<u32>(0u, 43767u))), Struct_5(-378f, 35098i, 6580i, Struct_1(false, 1392f, vec3<i32>(74624i, 45570i, i32(-2147483648)), vec2<f32>(865f, 272f)), Struct_3(Struct_2(Struct_1(true, -272f, vec3<i32>(i32(-2147483648), -24361i, 11694i), vec2<f32>(1000f, -300f)), vec4<u32>(1u, 1u, 2554u, 44264u), false, 39546u), vec2<u32>(0u, 3780u))), Struct_5(1152f, -27275i, -1i, Struct_1(true, -1320f, vec3<i32>(-50988i, -53673i, 72499i), vec2<f32>(-141f, 963f)), Struct_3(Struct_2(Struct_1(false, 1373f, vec3<i32>(39906i, 0i, -33397i), vec2<f32>(522f, -612f)), vec4<u32>(1u, 0u, 48369u, 1u), false, 42132u), vec2<u32>(0u, 40531u))), Struct_5(-1120f, -1i, 1i, Struct_1(true, -1007f, vec3<i32>(1i, -1i, 2147483647i), vec2<f32>(-670f, 1087f)), Struct_3(Struct_2(Struct_1(true, 229f, vec3<i32>(20958i, 1i, 0i), vec2<f32>(375f, 245f)), vec4<u32>(46952u, 37528u, 40062u, 1u), false, 4294967295u), vec2<u32>(22704u, 1u))), Struct_5(-294f, 1i, 20272i, Struct_1(true, -581f, vec3<i32>(12978i, 0i, -1i), vec2<f32>(-728f, -1000f)), Struct_3(Struct_2(Struct_1(false, 654f, vec3<i32>(1i, -15330i, -1i), vec2<f32>(313f, -1423f)), vec4<u32>(0u, 1u, 1u, 13763u), true, 0u), vec2<u32>(7203u, 11251u))), Struct_5(1542f, -18834i, 65055i, Struct_1(true, -2191f, vec3<i32>(-36045i, -24578i, -67920i), vec2<f32>(1000f, -159f)), Struct_3(Struct_2(Struct_1(true, -1193f, vec3<i32>(4800i, i32(-2147483648), -1i), vec2<f32>(768f, 175f)), vec4<u32>(82843u, 4294967295u, 0u, 30447u), true, 57468u), vec2<u32>(17539u, 93611u))), Struct_5(312f, 0i, 2147483647i, Struct_1(false, -976f, vec3<i32>(-101263i, -36i, -21349i), vec2<f32>(404f, 921f)), Struct_3(Struct_2(Struct_1(true, -1096f, vec3<i32>(-34904i, 0i, 1i), vec2<f32>(-361f, -1000f)), vec4<u32>(36061u, 4294967295u, 28819u, 18945u), true, 4294967295u), vec2<u32>(0u, 1828u))), Struct_5(-830f, -30151i, 21852i, Struct_1(false, -143f, vec3<i32>(-1i, 2147483647i, -35306i), vec2<f32>(198f, 161f)), Struct_3(Struct_2(Struct_1(false, 182f, vec3<i32>(0i, 1i, 19217i), vec2<f32>(-216f, -2762f)), vec4<u32>(15428u, 1u, 19966u, 53312u), true, 0u), vec2<u32>(1u, 4294967295u))), Struct_5(-955f, i32(-2147483648), 41388i, Struct_1(false, 1258f, vec3<i32>(4350i, 0i, 2467i), vec2<f32>(128f, 1518f)), Struct_3(Struct_2(Struct_1(true, -1955f, vec3<i32>(-2896i, -137i, -22688i), vec2<f32>(-1121f, -424f)), vec4<u32>(21386u, 59618u, 23599u, 30246u), false, 4294967295u), vec2<u32>(4294967295u, 6528u))), Struct_5(157f, 1i, 5543i, Struct_1(false, -530f, vec3<i32>(-18691i, 43954i, -1i), vec2<f32>(1063f, 1000f)), Struct_3(Struct_2(Struct_1(true, 820f, vec3<i32>(6544i, 2114i, 66944i), vec2<f32>(-1365f, -821f)), vec4<u32>(0u, 0u, 26534u, 1u), false, 39990u), vec2<u32>(53963u, 22814u))), Struct_5(1488f, 0i, 24639i, Struct_1(true, -1000f, vec3<i32>(3259i, 44861i, 7017i), vec2<f32>(-1067f, 864f)), Struct_3(Struct_2(Struct_1(false, -647f, vec3<i32>(31247i, i32(-2147483648), 66591i), vec2<f32>(-239f, -367f)), vec4<u32>(72126u, 4294967295u, 1u, 4294967295u), true, 34952u), vec2<u32>(31941u, 42646u))), Struct_5(2088f, 22457i, 1i, Struct_1(false, 898f, vec3<i32>(i32(-2147483648), -1i, -1i), vec2<f32>(1000f, 1000f)), Struct_3(Struct_2(Struct_1(true, -1068f, vec3<i32>(19960i, -7377i, 28263i), vec2<f32>(-831f, -526f)), vec4<u32>(32209u, 0u, 25913u, 0u), false, 99638u), vec2<u32>(1u, 28805u))), Struct_5(633f, -2206i, 37556i, Struct_1(true, -1077f, vec3<i32>(i32(-2147483648), 2147483647i, -30187i), vec2<f32>(1356f, 883f)), Struct_3(Struct_2(Struct_1(false, -1000f, vec3<i32>(-1148i, -1i, 53826i), vec2<f32>(1000f, 1298f)), vec4<u32>(78722u, 20933u, 3451u, 4294967295u), false, 1u), vec2<u32>(60391u, 37276u))), Struct_5(865f, 13870i, 2560i, Struct_1(false, 175f, vec3<i32>(-1i, 48569i, 2147483647i), vec2<f32>(-338f, 407f)), Struct_3(Struct_2(Struct_1(false, 449f, vec3<i32>(20558i, i32(-2147483648), 0i), vec2<f32>(-1572f, -272f)), vec4<u32>(0u, 26938u, 46180u, 23228u), true, 33119u), vec2<u32>(2997u, 21151u))));

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, 49022i);

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 4888u, 1u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<bool>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(305f, _wgslsmith_f_op_f32(round(717f)), _wgslsmith_f_op_f32(arg_0.b + 500f), -374f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d.x, 371f, arg_1.e.a.a.d.x, arg_0.b))), vec4<f32>(-481f, arg_1.d.d.x, arg_0.d.x, arg_1.d.d.x))))));
}

fn func_3() -> f32 {
    global1 = -vec2<i32>(-u_input.b, 2147483647i);
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(global1.x) ^ _wgslsmith_add_i32(1i, u_input.b), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(65160i, global1.x, u_input.b, u_input.b)), vec4<i32>(global1.x, global1.x, u_input.b, -8620i)), -u_input.b >> (global2.x % 32u), -1i) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, global1.x, global1.x), vec4<i32>(-69225i, -global1.x, _wgslsmith_mult_i32(-2147483647i, global1.x), u_input.b)), select(vec4<i32>(-1i) * -vec4<i32>(global1.x, 25186i, u_input.b, -12141i), ~(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, global1.x, -1i, 53828i), vec4<i32>(57612i, -2147483647i, -2147483647i, -1i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, global2.x, 0u, 85586u), vec4<u32>(global2.x, global2.x, 34186u, 4294967295u)) % vec4<u32>(32u))), !vec4<bool>(true, 0i > global1.x, all(vec2<bool>(false, true)), true)));
    let var_1 = 926f;
    let var_2 = Struct_4(var_1, Struct_2(Struct_1(~global2.x >= max(global2.x, global2.x), -683f, abs(firstTrailingBit(var_0.yxx)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(154f, var_1)), vec2<f32>(var_1, var_1)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(43582u, 115u, global2.x, 1u), vec4<u32>(63135u, 0u, 16082u, 10991u))), true, _wgslsmith_sub_u32(min(1u, 86973u), u_input.a)), Struct_3(Struct_2(Struct_1(true, -1180f, select(vec3<i32>(1i, 0i, 1917i), var_0.zwz, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-333f, 181f), vec2<f32>(583f, var_1), vec2<bool>(false, true)))), vec4<u32>(52849u, 7566u, ~31525u, ~u_input.d.x), true, global2.x), u_input.d.yz), var_0.zww);
    var_0 = -(~(~(vec4<i32>(global1.x, var_2.b.a.c.x, 0i, var_0.x) & vec4<i32>(global1.x, 42500i, global1.x, 0i)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(67749u, var_2.b.b.x, 693u, 4294967295u), var_2.b.b, reverseBits(var_2.c.a.b)) % vec4<u32>(32u))));
    return -2395f;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> vec2<bool> {
    global0 = array<Struct_5, 22>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    let var_1 = u_input.d;
    let var_2 = Struct_3(Struct_2(Struct_1(true, -458f, countOneBits(vec3<i32>(u_input.b, global1.x, -46474i)) ^ min(vec3<i32>(global1.x, u_input.b, u_input.b), vec3<i32>(56172i, 12611i, -1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 721f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1326f, 1461f) + vec2<f32>(-1001f, -123f)))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 129891u, 1u, u_input.e.x), ~(~vec4<u32>(1u, 34909u, var_1.x, 3407u))), any(vec2<bool>(u_input.b >= 11728i, true)), u_input.e.x), global2.zx);
    var var_3 = var_2.a.a.c.xz;
    return !select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(var_2.a.c, false, false, false)), !any(vec3<bool>(var_2.a.a.a, false, var_2.a.c))), vec2<bool>(false, true));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: u32) -> vec4<bool> {
    return vec4<bool>(arg_1.x, !(!(u_input.b > global1.x) | (arg_1.x || (false && arg_1.x))), arg_1.x && arg_1.x, true);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3) -> u32 {
    global2 = ~_wgslsmith_sub_vec4_u32(~(~(arg_2.a.b ^ arg_2.a.b)), vec4<u32>(4294967295u, firstTrailingBit(0u), ~u_input.d.x << (_wgslsmith_clamp_u32(0u, global2.x, 1u) % 32u), 1u << (1u % 32u)));
    global2 = vec4<u32>(~((_wgslsmith_dot_vec4_u32(vec4<u32>(40533u, u_input.a, 0u, 22613u), arg_2.a.b) >> (15559u % 32u)) >> (arg_2.b.x % 32u)), _wgslsmith_dot_vec2_u32(abs(~global2.zx), firstTrailingBit(vec2<u32>(u_input.e.x, global2.x)) & _wgslsmith_add_vec2_u32(vec2<u32>(global2.x, 29061u), arg_2.b)) << (arg_2.a.d % 32u), u_input.e.x, _wgslsmith_sub_u32(u_input.e.x, select(u_input.a, ~_wgslsmith_mod_u32(95365u, arg_2.a.b.x), true)));
    let var_0 = arg_2.a.a;
    global0 = array<Struct_5, 22>();
    let var_1 = var_0;
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<u32>(~func_5(func_4(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(true, 774f, vec3<i32>(1i, -2463i, global1.x), vec2<f32>(747f, 1036f)), global0[_wgslsmith_index_u32(global2.x, 22u)], vec4<bool>(true, true, false, true))), func_2(u_input.b, vec2<u32>(79781u, u_input.e.x)), 54385u), _wgslsmith_f_op_f32(func_3()), Struct_3(Struct_2(Struct_1(false, 213f, vec3<i32>(0i, u_input.b, 18847i), vec2<f32>(1306f, 291f)), vec4<u32>(1u, 41401u, u_input.d.x, 367u), true, global2.x), vec2<u32>(global2.x, 14888u))), u_input.e.x, ~u_input.c, select(u_input.a, ~u_input.e.x, _wgslsmith_dot_vec3_i32(min(vec3<i32>(global1.x, u_input.b, 2147483647i), vec3<i32>(24920i, u_input.b, 25437i)), firstLeadingBit(vec3<i32>(u_input.b, -1i, global1.x))) >= -1i));
    global1 = vec2<i32>(-2147483647i, firstTrailingBit(reverseBits(_wgslsmith_add_i32(-2147483647i, select(u_input.b, 7196i, false)))));
    global2 = abs(_wgslsmith_mod_vec4_u32(vec4<u32>(17921u, 44312u >> (u_input.c % 32u), 0u, countOneBits(u_input.a)) ^ countOneBits(~vec4<u32>(4294967295u, 66497u, global2.x, u_input.d.x)), _wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(0u, global2.x, global2.x, 0u)), firstLeadingBit(~vec4<u32>(61926u, u_input.c, u_input.d.x, u_input.a)))));
    global0 = array<Struct_5, 22>();
    global0 = array<Struct_5, 22>();
    global1 = -max(~(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(global1.x, global1.x)) & vec2<i32>(-23968i, 16542i)), ~(~(-vec2<i32>(-2147483647i, u_input.b))));
    let var_0 = Struct_2(Struct_1(false, -474f, abs(_wgslsmith_mult_vec3_i32(-vec3<i32>(47086i, -2147483647i, -76427i), vec3<i32>(global1.x, u_input.b, global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(437f, -148f) * vec2<f32>(1844f, 1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2778f, 769f), vec2<f32>(2561f, -1173f), vec2<bool>(true, true))))))), ~vec4<u32>(global2.x, global2.x, _wgslsmith_clamp_u32(30790u, 17165u, global2.x), global2.x >> (84440u % 32u)) << (reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 64481u, 25538u, 25697u), vec4<u32>(global2.x, 0u, global2.x, u_input.d.x))) % vec4<u32>(32u)), true || any(!func_4(vec4<f32>(1164f, 372f, -742f, 1355f), vec2<bool>(true, false), global2.x)), firstLeadingBit(102647u));
    var var_1 = u_input.a;
    var var_2 = select(select(!vec2<bool>(true, var_0.a.a), !func_2(global1.x, u_input.d.xz), false), func_2(_wgslsmith_add_i32(~_wgslsmith_mult_i32(-2147483647i, u_input.b), var_0.a.c.x), ~var_0.b.yx << (u_input.e % vec2<u32>(32u))), !vec2<bool>(var_0.c, true));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, 1i, global1.x), vec3<i32>(-1i, var_0.a.c.x, global1.x) & vec3<i32>(global1.x, -1i, -202i), var_0.a.c), vec3<i32>(_wgslsmith_mult_i32(46111i, 1i), 1i, 0i)));
}

