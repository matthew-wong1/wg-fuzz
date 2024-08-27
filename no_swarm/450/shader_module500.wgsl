struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(26144u, 18641u);

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(false, 0i, 5357u), Struct_2(true, -22948i, 4355u), Struct_2(false, 61153i, 29096u), Struct_2(true, 2147483647i, 0u));

var<private> global2: array<Struct_5, 27> = array<Struct_5, 27>(Struct_5(vec2<u32>(71276u, 0u), Struct_3(vec2<i32>(26993i, -1i), vec3<i32>(-1i, -44536i, 0i), -1229f, vec2<bool>(true, true)), Struct_2(true, -1109i, 4294967295u), vec2<u32>(105294u, 26079u)), Struct_5(vec2<u32>(4294967295u, 1u), Struct_3(vec2<i32>(-21938i, 13185i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), 782f, vec2<bool>(true, false)), Struct_2(false, 0i, 1u), vec2<u32>(92161u, 39530u)), Struct_5(vec2<u32>(106437u, 1359u), Struct_3(vec2<i32>(1i, 2147483647i), vec3<i32>(1i, 1i, -30252i), 254f, vec2<bool>(false, true)), Struct_2(false, -60546i, 18853u), vec2<u32>(1u, 1u)), Struct_5(vec2<u32>(44856u, 0u), Struct_3(vec2<i32>(2147483647i, -69712i), vec3<i32>(-15427i, 1i, i32(-2147483648)), -1359f, vec2<bool>(false, false)), Struct_2(true, i32(-2147483648), 80794u), vec2<u32>(4294967295u, 4294967295u)), Struct_5(vec2<u32>(1u, 1u), Struct_3(vec2<i32>(-8923i, -94305i), vec3<i32>(-1i, i32(-2147483648), -14668i), 984f, vec2<bool>(true, false)), Struct_2(false, 26540i, 4294967295u), vec2<u32>(13266u, 0u)), Struct_5(vec2<u32>(8682u, 0u), Struct_3(vec2<i32>(31628i, -299i), vec3<i32>(0i, 21908i, 22658i), 646f, vec2<bool>(true, true)), Struct_2(true, 2147483647i, 15678u), vec2<u32>(7994u, 4294967295u)), Struct_5(vec2<u32>(69842u, 1u), Struct_3(vec2<i32>(13930i, -39221i), vec3<i32>(1i, 6286i, -1i), 340f, vec2<bool>(true, false)), Struct_2(false, 34564i, 3575u), vec2<u32>(63709u, 1u)), Struct_5(vec2<u32>(40557u, 4294967295u), Struct_3(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, 16673i, 42010i), 575f, vec2<bool>(true, true)), Struct_2(true, -3511i, 1u), vec2<u32>(0u, 53u)), Struct_5(vec2<u32>(46457u, 4294967295u), Struct_3(vec2<i32>(2147483647i, 1i), vec3<i32>(-1i, -1i, -35597i), -429f, vec2<bool>(false, true)), Struct_2(false, -1i, 0u), vec2<u32>(0u, 19622u)), Struct_5(vec2<u32>(22905u, 47330u), Struct_3(vec2<i32>(2147483647i, 1i), vec3<i32>(62663i, -28210i, -20164i), -850f, vec2<bool>(false, false)), Struct_2(false, i32(-2147483648), 1u), vec2<u32>(14206u, 0u)), Struct_5(vec2<u32>(85429u, 59743u), Struct_3(vec2<i32>(30534i, -19310i), vec3<i32>(2147483647i, 15560i, -15641i), 837f, vec2<bool>(true, false)), Struct_2(false, 0i, 82863u), vec2<u32>(2784u, 8412u)), Struct_5(vec2<u32>(1u, 1u), Struct_3(vec2<i32>(-301i, -73084i), vec3<i32>(-21101i, i32(-2147483648), 11782i), 870f, vec2<bool>(true, true)), Struct_2(false, -1i, 1u), vec2<u32>(4294967295u, 17496u)), Struct_5(vec2<u32>(1u, 4294967295u), Struct_3(vec2<i32>(11043i, -1i), vec3<i32>(25471i, -30953i, -19291i), 357f, vec2<bool>(true, true)), Struct_2(true, 0i, 45589u), vec2<u32>(43099u, 0u)), Struct_5(vec2<u32>(4294967295u, 19065u), Struct_3(vec2<i32>(16613i, 101686i), vec3<i32>(1i, 2147483647i, -27235i), -1160f, vec2<bool>(true, false)), Struct_2(false, 2147483647i, 1u), vec2<u32>(1u, 4294967295u)), Struct_5(vec2<u32>(1u, 4294967295u), Struct_3(vec2<i32>(-2098i, -1i), vec3<i32>(0i, i32(-2147483648), -31062i), -1041f, vec2<bool>(false, true)), Struct_2(true, 38174i, 0u), vec2<u32>(0u, 41561u)), Struct_5(vec2<u32>(4294967295u, 0u), Struct_3(vec2<i32>(1i, 27170i), vec3<i32>(-35087i, 0i, 19531i), -1982f, vec2<bool>(true, true)), Struct_2(true, 2147483647i, 6629u), vec2<u32>(4294967295u, 84746u)), Struct_5(vec2<u32>(0u, 55314u), Struct_3(vec2<i32>(-1i, 0i), vec3<i32>(1i, 1i, i32(-2147483648)), -753f, vec2<bool>(false, true)), Struct_2(true, -1i, 4294967295u), vec2<u32>(34876u, 30308u)), Struct_5(vec2<u32>(50218u, 16452u), Struct_3(vec2<i32>(-39146i, -29796i), vec3<i32>(-14119i, 32595i, 1i), 645f, vec2<bool>(true, false)), Struct_2(false, -1i, 28318u), vec2<u32>(4294967295u, 28086u)), Struct_5(vec2<u32>(10045u, 0u), Struct_3(vec2<i32>(i32(-2147483648), -16629i), vec3<i32>(70630i, 1i, 2147483647i), 1153f, vec2<bool>(false, false)), Struct_2(false, 1i, 0u), vec2<u32>(51631u, 1u)), Struct_5(vec2<u32>(0u, 4294967295u), Struct_3(vec2<i32>(-1i, 2147483647i), vec3<i32>(2147483647i, 58510i, 3176i), 556f, vec2<bool>(true, false)), Struct_2(false, 68784i, 12403u), vec2<u32>(4294967295u, 0u)), Struct_5(vec2<u32>(99442u, 4294967295u), Struct_3(vec2<i32>(2147483647i, -1i), vec3<i32>(-15885i, 0i, -45374i), 341f, vec2<bool>(false, false)), Struct_2(true, 2147483647i, 1u), vec2<u32>(4294967295u, 2298u)), Struct_5(vec2<u32>(32202u, 78983u), Struct_3(vec2<i32>(-1i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, 2909i), -286f, vec2<bool>(false, true)), Struct_2(false, 2147483647i, 0u), vec2<u32>(32731u, 21u)), Struct_5(vec2<u32>(2870u, 59117u), Struct_3(vec2<i32>(8882i, -1i), vec3<i32>(i32(-2147483648), 1i, -7159i), 1805f, vec2<bool>(false, false)), Struct_2(false, 0i, 55990u), vec2<u32>(4294967295u, 0u)), Struct_5(vec2<u32>(1u, 3900u), Struct_3(vec2<i32>(0i, -28998i), vec3<i32>(23392i, -42630i, i32(-2147483648)), -2156f, vec2<bool>(true, true)), Struct_2(false, i32(-2147483648), 20606u), vec2<u32>(1u, 74389u)), Struct_5(vec2<u32>(4294967295u, 4294967295u), Struct_3(vec2<i32>(17715i, 5696i), vec3<i32>(0i, 1636i, 0i), 695f, vec2<bool>(false, false)), Struct_2(true, 0i, 42756u), vec2<u32>(24345u, 37573u)), Struct_5(vec2<u32>(4294967295u, 6810u), Struct_3(vec2<i32>(1910i, 9261i), vec3<i32>(2147483647i, -1i, 24367i), -162f, vec2<bool>(true, true)), Struct_2(false, 0i, 1u), vec2<u32>(18419u, 1u)), Struct_5(vec2<u32>(4294967295u, 4294967295u), Struct_3(vec2<i32>(2147483647i, 16723i), vec3<i32>(0i, 1i, 0i), -1592f, vec2<bool>(false, true)), Struct_2(false, 2339i, 4294967295u), vec2<u32>(41210u, 1u)));

var<private> global3: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(1u, 45373u, 61708u), vec3<u32>(26817u, 29319u, 5844u), vec3<u32>(4294967295u, 1116u, 4294967295u), vec3<u32>(50335u, 12146u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 55614u), vec3<u32>(66978u, 1u, 15535u), vec3<u32>(99179u, 4294967295u, 827u), vec3<u32>(33114u, 68829u, 7755u), vec3<u32>(65999u, 2825u, 1748u), vec3<u32>(4294967295u, 1u, 41405u), vec3<u32>(4294967295u, 32310u, 1u), vec3<u32>(36201u, 1u, 1u), vec3<u32>(1888u, 4294967295u, 53448u), vec3<u32>(39156u, 25946u, 0u), vec3<u32>(1u, 4294967295u, 34008u), vec3<u32>(10570u, 0u, 0u), vec3<u32>(59615u, 4294967295u, 1u), vec3<u32>(11755u, 1u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(33877u, 4294967295u, 4294967295u), vec3<u32>(0u, 24106u, 45761u), vec3<u32>(4294967295u, 1u, 50733u), vec3<u32>(0u, 23035u, 0u), vec3<u32>(41206u, 26524u, 69449u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(70155u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 16432u), vec3<u32>(575u, 16253u, 13117u), vec3<u32>(34700u, 32695u, 0u), vec3<u32>(0u, 4294967295u, 71122u), vec3<u32>(12277u, 43879u, 14782u));

var<private> global4: array<bool, 10> = array<bool, 10>(false, false, false, false, true, true, true, false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_1(true, ~(i32(-1i) * -2147483647i));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(922f, -1000f)), -564f, _wgslsmith_f_op_f32(sign(193f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(559f, 1571f, -1000f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(min(1790f, 3219f)), -176f, 1f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1023f, -1189f, -793f) + vec3<f32>(-680f, -1616f, -130f))))));
    global0 = reverseBits(vec2<u32>(global0.x, abs(~reverseBits(global0.x))));
    global1 = array<Struct_2, 4>();
    let var_2 = var_1.x;
    return vec2<bool>(!any(!vec4<bool>(var_0.a, global4[_wgslsmith_index_u32(u_input.b, 10u)], true, global4[_wgslsmith_index_u32(u_input.a, 10u)])) != true, global4[_wgslsmith_index_u32(abs(17593u), 10u)] & global4[_wgslsmith_index_u32(52364u, 10u)]);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = vec4<f32>(636f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(779f - 557f), _wgslsmith_f_op_f32(select(686f, 398f, global4[_wgslsmith_index_u32(arg_1.c, 10u)])), global4[_wgslsmith_index_u32(0u, 10u)])) * 142f) * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1601f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2545f))) + -346f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1966f)) - _wgslsmith_f_op_f32(ceil(169f)))));
    var var_1 = global2[_wgslsmith_index_u32(0u, 27u)];
    let var_2 = -628f;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(556f + 553f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -142f)), var_0.x, var_0.x))));
    let var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(abs(arg_0.x | 4547i), var_1.c.b, min(_wgslsmith_dot_vec3_i32(var_1.b.b, vec3<i32>(56541i, arg_1.b, 6742i)), var_1.b.a.x | 10189i)), abs(var_1.c.b)), reverseBits(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_1.c.b), select(vec2<i32>(var_1.c.b, 0i), vec2<i32>(arg_0.x, arg_0.x), var_1.b.d)))));
    return ~max(firstTrailingBit(_wgslsmith_mult_vec2_i32(var_1.b.a, min(var_4, arg_0.yx))), _wgslsmith_mod_vec2_i32(select(arg_0.zx, -arg_0.wx, !var_1.b.d), firstTrailingBit(var_4) | arg_0.zx));
}

fn func_2() -> vec2<u32> {
    global1 = array<Struct_2, 4>();
    var var_0 = Struct_5(vec2<u32>(78042u, 1u) & min(firstTrailingBit(countOneBits(vec2<u32>(u_input.b, global0.x))), ~vec2<u32>(global0.x, global0.x) & ~vec2<u32>(u_input.b, 4294967295u)), Struct_3(~(~func_3(vec4<i32>(1i, -2147483647i, -2852i, 0i), global1[_wgslsmith_index_u32(u_input.b, 4u)])), (vec3<i32>(1i, 2147483647i, -1i) >> (firstTrailingBit(global3[_wgslsmith_index_u32(u_input.a, 31u)]) % vec3<u32>(32u))) << (global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global0.x, 24489u), 31u)] % vec3<u32>(32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1769f, -256f, !global4[_wgslsmith_index_u32(u_input.a, 10u)])))), !vec2<bool>(false, global4[_wgslsmith_index_u32(1u, 10u)])), Struct_2(true, ~((1i << (global0.x % 32u)) >> (u_input.b % 32u)), _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(select(8351u, 0u >> (0u % 32u), true), 31u)], abs(vec3<u32>(42611u, 2827u, u_input.b) & vec3<u32>(4294967295u, 1u, global0.x)))), vec2<u32>(~u_input.b, _wgslsmith_mod_u32(global0.x, max(firstTrailingBit(1u), _wgslsmith_clamp_u32(global0.x, 0u, u_input.b)))));
    global2 = array<Struct_5, 27>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(var_0.b.c, -370f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(395f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(632f, -1000f)))))), _wgslsmith_f_op_f32(var_0.b.c - -2163f));
    let var_2 = abs(u_input.b);
    return vec2<u32>(var_0.c.c << (0u % 32u), ~var_2);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> vec3<i32> {
    let var_0 = func_3(min(abs(max(abs(vec4<i32>(2147483647i, arg_0.a.x, arg_0.b.x, arg_0.b.x)), vec4<i32>(arg_0.a.x, 2147483647i, arg_1.e, -16195i))), abs(vec4<i32>(11715i >> (0u % 32u), firstLeadingBit(-1i), _wgslsmith_add_i32(0i, arg_1.d.b.x), reverseBits(arg_1.c.b)))), global1[_wgslsmith_index_u32(~abs(~_wgslsmith_mult_u32(arg_1.a.x, 1u)), 4u)]);
    var var_1 = ~(i32(-1i) * -(~var_0.x));
    global4 = array<bool, 10>();
    global1 = array<Struct_2, 4>();
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.a.x, 21502u), 27u)];
    return vec3<i32>(2147483647i, ~(~(~0i)), ~_wgslsmith_add_i32(-1i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(vec2<i32>(~_wgslsmith_add_i32(1i, 0i), 1i << (global0.x % 32u)), vec2<i32>(_wgslsmith_add_i32(max(1i, 23705i), 17084i), abs(~(-2147483647i))), select(func_1(), select(vec2<bool>(global4[_wgslsmith_index_u32(1u, 10u)], false), vec2<bool>(true, global4[_wgslsmith_index_u32(1u, 10u)]), vec2<bool>(true, global4[_wgslsmith_index_u32(24078u, 10u)])), vec2<bool>(!global4[_wgslsmith_index_u32(u_input.a, 10u)], global4[_wgslsmith_index_u32(reverseBits(1u), 10u)]))), func_4(Struct_3(vec2<i32>(-2147483647i, 16971i) >> (func_2() % vec2<u32>(32u)), abs(~vec3<i32>(-1i, 59880i, 50236i)), 1f, vec2<bool>(true, global4[_wgslsmith_index_u32(1u, 10u)] | global4[_wgslsmith_index_u32(1u, 10u)])), Struct_4(global3[_wgslsmith_index_u32(global0.x, 31u)], Struct_1(true, 61159i), Struct_1(global4[_wgslsmith_index_u32(45869u, 10u)] || false, 0i), Struct_3(select(vec2<i32>(51150i, -24295i), vec2<i32>(-1i, 30546i), vec2<bool>(true, false)), -vec3<i32>(-1i, -2147483647i, -21860i), _wgslsmith_f_op_f32(trunc(579f)), !vec2<bool>(global4[_wgslsmith_index_u32(global0.x, 10u)], true)), i32(-1i) * -8270i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1712f))))), !select(vec2<bool>(all(vec3<bool>(global4[_wgslsmith_index_u32(global0.x, 10u)], true, false)), true), vec2<bool>(global4[_wgslsmith_index_u32(~u_input.b, 10u)], global4[_wgslsmith_index_u32(4294967295u, 10u)]), all(!vec3<bool>(false, true, global4[_wgslsmith_index_u32(55845u, 10u)]))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(317f, -1409f) * var_0.c);
    let var_2 = max(~(~(~vec2<u32>(2091u, 8180u))), abs(~abs(~vec2<u32>(1u, 4294967295u))));
    let var_3 = -_wgslsmith_mod_vec3_i32(var_0.b, ~var_0.b);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_vec3_u32(global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(~(~4294967295u), 31u)])), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.x, _wgslsmith_add_u32(50364u, global0.x >> (u_input.b % 32u))) ^ ~var_2.x, 31u)], _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(u_input.b, 4294967295u, global0.x, global0.x))), ~(~vec4<u32>(global0.x, u_input.b, var_2.x, 4294967295u)) >> ((~vec4<u32>(46559u, u_input.a, 4119u, 44300u) & ~vec4<u32>(var_2.x, 37712u, 2508u, var_2.x)) % vec4<u32>(32u))), ~vec4<i32>(var_3.x, firstLeadingBit(~var_0.a.x), var_3.x, min(~2147483647i, -var_3.x)), countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(3925i, 2147483647i, 0i, var_0.a.x), vec4<i32>(var_0.a.x, 24396i, var_0.a.x, var_3.x)), vec4<i32>(-2147483647i, var_0.a.x, -2147483647i, 1i)), ~(vec4<i32>(var_0.b.x, 1i, var_0.b.x, var_0.a.x) ^ vec4<i32>(-27119i, -7472i, 34595i, var_0.b.x)))));
}

