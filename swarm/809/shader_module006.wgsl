struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4>;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(-1561f, 0u, 4294967295u, vec2<f32>(644f, 1123f)), vec4<i32>(i32(-2147483648), i32(-2147483648), 22857i, -33695i), Struct_1(630f, 10055u, 64240u, vec2<f32>(1261f, -959f)), vec2<i32>(-25468i, 19214i), vec4<u32>(84964u, 8850u, 1u, 4294967295u)), Struct_3(Struct_1(-668f, 1u, 0u, vec2<f32>(-773f, 905f)), vec4<i32>(-32993i, 61017i, -1i, 0i), Struct_1(1126f, 1u, 17194u, vec2<f32>(1244f, 1122f)), vec2<i32>(28003i, 2147483647i), vec4<u32>(55876u, 100206u, 97061u, 1u)), Struct_3(Struct_1(1000f, 38119u, 25273u, vec2<f32>(621f, -794f)), vec4<i32>(-23343i, 10444i, 30587i, 49121i), Struct_1(364f, 1u, 0u, vec2<f32>(-2090f, -820f)), vec2<i32>(0i, -1i), vec4<u32>(4294967295u, 79431u, 19860u, 4294967295u)), Struct_3(Struct_1(-942f, 67501u, 4294967295u, vec2<f32>(-629f, 1000f)), vec4<i32>(88658i, 29136i, -37943i, 13396i), Struct_1(1000f, 4294967295u, 1u, vec2<f32>(1000f, -1458f)), vec2<i32>(1379i, -1i), vec4<u32>(1u, 50750u, 0u, 9742u)), Struct_3(Struct_1(552f, 14454u, 31087u, vec2<f32>(-949f, 368f)), vec4<i32>(65803i, 49545i, -1i, 6036i), Struct_1(1025f, 28456u, 26501u, vec2<f32>(-134f, 2156f)), vec2<i32>(0i, 1i), vec4<u32>(1u, 7792u, 51639u, 4294967295u)), Struct_3(Struct_1(295f, 13928u, 4294u, vec2<f32>(497f, 1136f)), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 2147483647i), Struct_1(925f, 21366u, 4294967295u, vec2<f32>(-926f, 540f)), vec2<i32>(-1i, 0i), vec4<u32>(64701u, 0u, 1u, 13738u)), Struct_3(Struct_1(1269f, 60454u, 18898u, vec2<f32>(189f, 1686f)), vec4<i32>(4636i, 0i, i32(-2147483648), 2147483647i), Struct_1(-236f, 19352u, 4294967295u, vec2<f32>(-1373f, 2269f)), vec2<i32>(-43790i, 8923i), vec4<u32>(1u, 1u, 4294967295u, 23008u)), Struct_3(Struct_1(-693f, 1u, 31725u, vec2<f32>(1653f, -251f)), vec4<i32>(51364i, 2147483647i, -72832i, -35988i), Struct_1(455f, 33181u, 1u, vec2<f32>(-867f, -750f)), vec2<i32>(63783i, -30691i), vec4<u32>(4294967295u, 8616u, 16173u, 80669u)), Struct_3(Struct_1(-1560f, 47052u, 1u, vec2<f32>(-1547f, -1024f)), vec4<i32>(66308i, 9545i, i32(-2147483648), 13720i), Struct_1(-1000f, 1u, 0u, vec2<f32>(3261f, 1341f)), vec2<i32>(2147483647i, 5740i), vec4<u32>(52578u, 1u, 1u, 0u)), Struct_3(Struct_1(250f, 0u, 21358u, vec2<f32>(-334f, 463f)), vec4<i32>(i32(-2147483648), i32(-2147483648), 20387i, 44363i), Struct_1(848f, 4294967295u, 0u, vec2<f32>(-236f, -1314f)), vec2<i32>(i32(-2147483648), -9703i), vec4<u32>(0u, 7783u, 97221u, 33788u)), Struct_3(Struct_1(-1000f, 4294967295u, 4294967295u, vec2<f32>(396f, 210f)), vec4<i32>(3435i, 0i, 0i, -1384i), Struct_1(-136f, 1u, 36978u, vec2<f32>(-1000f, -1000f)), vec2<i32>(26446i, i32(-2147483648)), vec4<u32>(13847u, 1u, 4294967295u, 0u)), Struct_3(Struct_1(-1557f, 1u, 69753u, vec2<f32>(2139f, -717f)), vec4<i32>(103758i, 39453i, 1i, -3422i), Struct_1(-1422f, 85796u, 0u, vec2<f32>(-3303f, 1000f)), vec2<i32>(-1i, 28874i), vec4<u32>(3231u, 32717u, 484u, 1u)), Struct_3(Struct_1(-1000f, 1u, 4294967295u, vec2<f32>(1462f, 1782f)), vec4<i32>(-1i, i32(-2147483648), 23021i, -12193i), Struct_1(-270f, 2567u, 1u, vec2<f32>(-1233f, 832f)), vec2<i32>(1i, -14205i), vec4<u32>(1090u, 0u, 71237u, 4294967295u)), Struct_3(Struct_1(-1118f, 1u, 73091u, vec2<f32>(328f, 1000f)), vec4<i32>(25192i, 2662i, 16722i, i32(-2147483648)), Struct_1(-810f, 0u, 26582u, vec2<f32>(454f, 198f)), vec2<i32>(1i, i32(-2147483648)), vec4<u32>(4294967295u, 0u, 34395u, 71835u)), Struct_3(Struct_1(-709f, 58901u, 65403u, vec2<f32>(-123f, -584f)), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 1i), Struct_1(1252f, 36126u, 4294967295u, vec2<f32>(-342f, 958f)), vec2<i32>(-1i, 27976i), vec4<u32>(26804u, 1u, 13434u, 6716u)), Struct_3(Struct_1(-1753f, 4294967295u, 21606u, vec2<f32>(-323f, -1000f)), vec4<i32>(0i, -55925i, 7751i, 1i), Struct_1(982f, 0u, 67764u, vec2<f32>(2533f, 449f)), vec2<i32>(1i, 6469i), vec4<u32>(16709u, 1u, 10374u, 4294967295u)), Struct_3(Struct_1(-225f, 58814u, 17030u, vec2<f32>(310f, -1000f)), vec4<i32>(-11469i, i32(-2147483648), -4974i, 1i), Struct_1(2311f, 75347u, 4294967295u, vec2<f32>(-1184f, -798f)), vec2<i32>(0i, 38815i), vec4<u32>(61898u, 4294967295u, 46194u, 60319u)), Struct_3(Struct_1(-275f, 1u, 3717u, vec2<f32>(-792f, 694f)), vec4<i32>(0i, 7539i, 0i, 33697i), Struct_1(139f, 1u, 56484u, vec2<f32>(1284f, -1000f)), vec2<i32>(0i, 2147483647i), vec4<u32>(35892u, 4294967295u, 0u, 9042u)), Struct_3(Struct_1(1422f, 0u, 4294967295u, vec2<f32>(1295f, 542f)), vec4<i32>(-9938i, -1i, -16819i, -69872i), Struct_1(-899f, 39870u, 2586u, vec2<f32>(-621f, 1000f)), vec2<i32>(0i, 6613i), vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), Struct_3(Struct_1(711f, 1u, 6005u, vec2<f32>(686f, 1000f)), vec4<i32>(-4125i, 0i, i32(-2147483648), -924i), Struct_1(-1000f, 1u, 4294967295u, vec2<f32>(1001f, -2895f)), vec2<i32>(41468i, -30239i), vec4<u32>(0u, 1u, 14755u, 1u)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> vec3<i32> {
    global1 = array<Struct_3, 20>();
    var var_0 = reverseBits(~(~vec3<i32>(-2147483647i, u_input.c, arg_0.c)));
    global0 = array<vec4<u32>, 4>();
    return vec3<i32>(abs(~(-2147483647i)), ~arg_0.c, ~var_0.x);
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-1211i, u_input.c) ^ 0i, firstTrailingBit(u_input.c), _wgslsmith_div_i32(-(u_input.c << (u_input.b % 32u)), abs(u_input.c))), func_3(Struct_2(select(false, false, false), _wgslsmith_dot_vec2_u32(u_input.d.yw, vec2<u32>(0u, 4294967295u)), u_input.c & 25735i), vec2<bool>(true, true)) & -countOneBits(-vec3<i32>(u_input.c, 0i, u_input.c)));
    let var_1 = u_input.d.x;
    var var_2 = select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true), true), vec2<bool>(true, !all(vec4<bool>(true, true, true, true))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), var_1 > 5538u), vec2<bool>(true, true), !(!all(vec3<bool>(false, true, false)))));
    global0 = array<vec4<u32>, 4>();
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1098f)))), 4294967295u, var_1, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(828f, -1459f) + vec2<f32>(1f, 1f)), vec2<f32>(1f, 1f))), (-vec4<i32>(u_input.c, var_0.x, -6821i, var_0.x) | min(max(vec4<i32>(var_0.x, u_input.c, -29960i, -2147483647i), vec4<i32>(22575i, -1i, var_0.x, -5758i)), vec4<i32>(1i, var_0.x, var_0.x, u_input.c))) >> (~global0[_wgslsmith_index_u32(u_input.e, 4u)] % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(select(-672f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1618f)), -327f)), true)), 10887u, 4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-582f, -549f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1424f, -611f)))))), vec2<i32>(_wgslsmith_add_i32(var_0.x >> (u_input.e % 32u), 7433i), 0i) ^ firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(u_input.c, u_input.c), 42150i)), select(max(select(vec4<u32>(0u, u_input.a, var_1, u_input.a), vec4<u32>(84580u, var_1, 4294967295u, u_input.b), false), vec4<u32>(27765u, 1u, 0u, u_input.d.x)), reverseBits(abs(global0[_wgslsmith_index_u32(var_1, 4u)])), !select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(false, false, false, var_2.x), vec4<bool>(false, var_2.x, false, var_2.x))) << (~(u_input.d ^ (u_input.d & global0[_wgslsmith_index_u32(u_input.a, 4u)])) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    global1 = array<Struct_3, 20>();
    let var_0 = func_2();
    let var_1 = abs(114931u) >= ~(~func_2().e.x << (~min(3634u, var_0.c.b) % 32u));
    var var_2 = ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(103586u >> (0u % 32u), 51631u) & _wgslsmith_dot_vec3_u32(func_2().e.wxy, var_0.e.wzx), ~(~4294967295u));
    var var_3 = Struct_3(Struct_1(-366f, ~1u, 18218u, vec2<f32>(984f, var_0.c.d.x)), vec4<i32>(~abs(~26384i), _wgslsmith_mod_i32(reverseBits(~var_0.d.x), _wgslsmith_mod_i32(var_0.b.x, u_input.c) | ~u_input.c), max(_wgslsmith_mult_i32(abs(39020i), ~u_input.c), ~max(-47173i, var_0.b.x)), u_input.c), func_2().a, firstTrailingBit(var_0.d), select(firstLeadingBit((vec4<u32>(u_input.a, 0u, 90208u, u_input.a) | global0[_wgslsmith_index_u32(7099u, 4u)]) << (vec4<u32>(var_0.c.c, var_0.c.c, 1u, 4294967295u) % vec4<u32>(32u))), countOneBits(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, 30947u, var_0.a.b, 1u), vec4<u32>(12181u, u_input.e, var_0.c.c, var_0.a.c), vec4<u32>(u_input.d.x, 9102u, u_input.a, var_0.c.b)), _wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(1u, 4u)], vec4<u32>(var_0.a.c, 18173u, 1u, var_0.e.x)))), select(select(select(vec4<bool>(true, false, var_1, var_1), vec4<bool>(true, false, arg_0.x, true), true), !vec4<bool>(var_1, true, false, false), !vec4<bool>(arg_0.x, arg_0.x, var_1, false)), vec4<bool>(true, !arg_0.x, var_1, true & arg_0.x), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)))));
    return 24264u ^ _wgslsmith_clamp_u32(8849u, 12415u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(u_input.e), 20u)];
    let var_1 = _wgslsmith_div_u32(var_0.e.x | ~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, 0u), ~u_input.b), 1u);
    var var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(func_1(vec2<bool>(false, true)), var_0.a.c) >> (14036u % 32u)), 20u)];
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(~(~var_2.e.wzz), ~u_input.d.zzy, vec3<u32>(0u << (var_1 % 32u), var_2.e.x, var_2.c.c)), ~max(u_input.d.zzz, vec3<u32>(0u, 8763u, u_input.e & 0u))), 20u)];
    global0 = array<vec4<u32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a, func_2().a.d.x, firstTrailingBit(var_2.a.b));
}

