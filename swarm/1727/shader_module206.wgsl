struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, true, true, false, true, false, true, true, false, false, true, false, true, false, true, true, true, false, false, true);

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec4<bool>(false, true, false, false), Struct_1(vec3<i32>(47787i, 0i, i32(-2147483648)), 381f, vec3<u32>(64756u, 6033u, 4294967295u), false, 0i), vec2<i32>(-46851i, 1i)), Struct_3(vec4<bool>(false, true, true, false), Struct_1(vec3<i32>(-40709i, -64761i, -15847i), 641f, vec3<u32>(66642u, 19621u, 0u), true, -31528i), vec2<i32>(-20372i, i32(-2147483648))), Struct_3(vec4<bool>(false, true, false, false), Struct_1(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), -1278f, vec3<u32>(4294967295u, 1u, 11971u), true, 2147483647i), vec2<i32>(1i, 2147483647i)), Struct_3(vec4<bool>(false, false, true, true), Struct_1(vec3<i32>(-56852i, 0i, 27033i), 2065f, vec3<u32>(13383u, 23133u, 1u), true, 1i), vec2<i32>(2147483647i, i32(-2147483648))), Struct_3(vec4<bool>(false, true, true, true), Struct_1(vec3<i32>(-17312i, 3712i, -29425i), 537f, vec3<u32>(4294967295u, 1u, 1u), false, 2147483647i), vec2<i32>(-33264i, i32(-2147483648))), Struct_3(vec4<bool>(true, false, true, true), Struct_1(vec3<i32>(-25593i, 1i, 0i), 264f, vec3<u32>(17310u, 97562u, 1u), true, i32(-2147483648)), vec2<i32>(40536i, -1i)), Struct_3(vec4<bool>(true, true, true, true), Struct_1(vec3<i32>(-26906i, 16151i, 9136i), 320f, vec3<u32>(26042u, 41843u, 22199u), false, -1i), vec2<i32>(95926i, i32(-2147483648))), Struct_3(vec4<bool>(true, false, false, false), Struct_1(vec3<i32>(38656i, i32(-2147483648), 62498i), -898f, vec3<u32>(166499u, 4294967295u, 23956u), false, 34987i), vec2<i32>(-1i, i32(-2147483648))), Struct_3(vec4<bool>(true, true, true, true), Struct_1(vec3<i32>(2147483647i, -24275i, 1i), 2088f, vec3<u32>(31155u, 52196u, 2562u), false, -1i), vec2<i32>(-18713i, -38076i)), Struct_3(vec4<bool>(false, true, false, false), Struct_1(vec3<i32>(-53934i, -10570i, 59626i), 734f, vec3<u32>(0u, 1u, 1u), false, 1434i), vec2<i32>(-1i, 0i)), Struct_3(vec4<bool>(false, true, true, false), Struct_1(vec3<i32>(-17078i, i32(-2147483648), -1i), -419f, vec3<u32>(1u, 1u, 0u), false, 21514i), vec2<i32>(0i, -1i)), Struct_3(vec4<bool>(true, true, true, false), Struct_1(vec3<i32>(33610i, -14963i, 0i), -1506f, vec3<u32>(1u, 88114u, 11260u), false, 1i), vec2<i32>(-18427i, 18582i)), Struct_3(vec4<bool>(true, true, false, true), Struct_1(vec3<i32>(-17760i, 2147483647i, 1i), -1919f, vec3<u32>(38628u, 27014u, 0u), false, -90311i), vec2<i32>(16168i, 1i)), Struct_3(vec4<bool>(true, true, false, false), Struct_1(vec3<i32>(2644i, 2450i, i32(-2147483648)), 315f, vec3<u32>(17245u, 29072u, 52198u), false, 39163i), vec2<i32>(i32(-2147483648), 0i)), Struct_3(vec4<bool>(false, true, true, false), Struct_1(vec3<i32>(-29104i, 1i, 37095i), -489f, vec3<u32>(80289u, 61812u, 24374u), false, 74954i), vec2<i32>(1i, 1i)), Struct_3(vec4<bool>(true, true, false, true), Struct_1(vec3<i32>(1i, -29798i, -48528i), -319f, vec3<u32>(9811u, 18211u, 1u), true, 18166i), vec2<i32>(i32(-2147483648), -1i)));

var<private> global2: i32;

var<private> global3: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec4<bool>(false, true, true, false), Struct_1(vec3<i32>(-30923i, 1i, -47517i), 323f, vec3<u32>(1u, 1u, 0u), false, i32(-2147483648)), vec2<i32>(-37271i, 1i)), Struct_3(vec4<bool>(true, false, false, true), Struct_1(vec3<i32>(23524i, -32035i, 0i), -129f, vec3<u32>(1u, 4294967295u, 4294967295u), true, 1i), vec2<i32>(2147483647i, 0i)), Struct_3(vec4<bool>(true, false, false, false), Struct_1(vec3<i32>(16187i, -1i, 0i), -465f, vec3<u32>(3640u, 38123u, 6637u), false, 1i), vec2<i32>(7507i, -40062i)), Struct_3(vec4<bool>(true, true, false, false), Struct_1(vec3<i32>(i32(-2147483648), -1i, 2147483647i), -444f, vec3<u32>(50408u, 24513u, 2520u), true, 9314i), vec2<i32>(15386i, 1i)), Struct_3(vec4<bool>(true, true, true, false), Struct_1(vec3<i32>(1i, 2147483647i, 20636i), -112f, vec3<u32>(58663u, 1u, 13862u), true, 15289i), vec2<i32>(-1i, 1i)), Struct_3(vec4<bool>(true, true, true, false), Struct_1(vec3<i32>(-39763i, -36844i, i32(-2147483648)), 185f, vec3<u32>(4294967295u, 41621u, 69935u), true, 42581i), vec2<i32>(2147483647i, 0i)), Struct_3(vec4<bool>(true, false, false, false), Struct_1(vec3<i32>(22844i, -30877i, -13962i), 1470f, vec3<u32>(26376u, 47177u, 24624u), true, -56458i), vec2<i32>(1i, 1i)), Struct_3(vec4<bool>(true, false, false, false), Struct_1(vec3<i32>(1i, -1i, i32(-2147483648)), 654f, vec3<u32>(42443u, 1u, 20923u), true, 0i), vec2<i32>(2147483647i, 36611i)), Struct_3(vec4<bool>(false, false, true, false), Struct_1(vec3<i32>(2147483647i, 35108i, 9994i), 714f, vec3<u32>(4294967295u, 0u, 0u), true, -24649i), vec2<i32>(19330i, -1i)), Struct_3(vec4<bool>(false, true, false, false), Struct_1(vec3<i32>(-1i, -7487i, 60001i), -426f, vec3<u32>(4294967295u, 5414u, 0u), true, -48831i), vec2<i32>(-35300i, 2147483647i)), Struct_3(vec4<bool>(true, false, true, true), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 21105i), -2266f, vec3<u32>(54289u, 0u, 4294967295u), true, 1i), vec2<i32>(2147483647i, 23375i)), Struct_3(vec4<bool>(false, true, true, true), Struct_1(vec3<i32>(i32(-2147483648), 42309i, 2147483647i), 503f, vec3<u32>(1u, 7055u, 0u), true, i32(-2147483648)), vec2<i32>(22481i, 1i)), Struct_3(vec4<bool>(true, true, false, false), Struct_1(vec3<i32>(-1i, 2147483647i, -1i), 2411f, vec3<u32>(0u, 85386u, 57441u), true, -66519i), vec2<i32>(i32(-2147483648), -22279i)), Struct_3(vec4<bool>(false, true, true, false), Struct_1(vec3<i32>(1i, 8500i, -11817i), 1000f, vec3<u32>(1u, 37328u, 0u), false, -1i), vec2<i32>(18915i, i32(-2147483648))));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1762f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-364f, 502f) + _wgslsmith_f_op_f32(step(958f, -1704f)))) * 824f));
    var var_1 = u_input.c;
    global1 = array<Struct_3, 16>();
    global3 = array<Struct_3, 14>();
    global2 = 25638i;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(741f, 105f)) * vec2<f32>(var_0, var_0)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 930f) + vec2<f32>(var_0, 1458f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(-1000f, 2217f)))) * _wgslsmith_div_vec2_f32(vec2<f32>(648f, var_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(962f, var_0) - vec2<f32>(var_0, -1000f)))))));
}

fn func_3() -> vec3<bool> {
    var var_0 = u_input.a;
    global1 = array<Struct_3, 16>();
    global2 = _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -2147483647i, u_input.c, -2147483647i), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), -_wgslsmith_mod_vec4_i32(vec4<i32>(-22425i, 2147483647i, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, -5347i, 1i))), -u_input.c << ((u_input.b >> (_wgslsmith_div_u32(7705u, u_input.a) % 32u)) % 32u)) << (u_input.b % 32u);
    let var_1 = Struct_4(countOneBits(~vec2<i32>(min(-34674i, 16084i), 1i)), _wgslsmith_f_op_f32(f32(-1f) * -1010f), Struct_2(Struct_1(select(vec3<i32>(-28287i, u_input.c, -1i) ^ vec3<i32>(-1i, 0i, u_input.c), vec3<i32>(18594i, u_input.c, u_input.c), true), -688f, vec3<u32>(u_input.b, 26778u, 4294967295u) << (~vec3<u32>(4294967295u, 116740u, 56786u) % vec3<u32>(32u)), false & all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 20u)], true)), _wgslsmith_sub_i32(u_input.c, i32(-1i) * -52785i)), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -648f)), Struct_1(-vec3<i32>(u_input.c, 2147483647i, 53442i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(sign(-1285f)))), vec3<u32>(u_input.b, 53914u, 1u) & vec3<u32>(0u, u_input.b, u_input.b), true, i32(-1i) * -18160i)), _wgslsmith_f_op_f32(select(-201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -227f))), true)), Struct_2(Struct_1(vec3<i32>(1i, -16677i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 404f)), _wgslsmith_mult_vec3_u32(vec3<u32>(44881u, 0u, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 13968u, 1u), vec3<u32>(u_input.b, u_input.a, u_input.b))), global0[_wgslsmith_index_u32(1u, 20u)], ~_wgslsmith_sub_i32(1i, -1690i)), u_input.c, _wgslsmith_f_op_f32(abs(687f)), Struct_1(vec3<i32>(max(-2147483647i, 1i), ~u_input.c, 12090i), _wgslsmith_f_op_f32(abs(-403f)), ~vec3<u32>(u_input.a, 419u, u_input.b), true, select(u_input.c | u_input.c, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, 0i), false))));
    var var_2 = select(vec3<bool>(true, any(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 20u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(15771u, 20u)]), vec2<bool>(true, false)), vec2<bool>(true, false), select(vec2<bool>(var_1.c.d.d, global0[_wgslsmith_index_u32(var_1.e.a.c.x, 20u)]), vec2<bool>(false, false), vec2<bool>(var_1.e.a.d, global0[_wgslsmith_index_u32(u_input.b, 20u)])))), false), select(select(!select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 20u)], var_1.c.a.d, true), vec3<bool>(var_1.e.d.d, false, false), false), vec3<bool>(all(vec3<bool>(false, false, true)), !var_1.c.a.d, true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 20u)], true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_1.e.d.c.x, 20u)]), u_input.b <= 4294967295u)), !select(vec3<bool>(var_1.c.a.d, true, var_1.e.d.d), vec3<bool>(var_1.c.d.d, global0[_wgslsmith_index_u32(u_input.b, 20u)], true), true), global0[_wgslsmith_index_u32(~(~u_input.a), 20u)]), any(vec3<bool>(true, true, true)));
    return select(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 20u)], var_1.e.d.d, false), select(vec3<bool>(true, true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 20u)], var_1.e.a.d), var_1.e.d.d), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)], var_1.c.a.d, var_2.x))), select(vec3<bool>(var_1.e.d.d, var_2.x, var_1.e.d.d), vec3<bool>(var_2.x, true, var_1.e.a.d), global0[_wgslsmith_index_u32(10200u, 20u)] || false), vec3<bool>(!var_2.x, true, var_2.x)), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, var_1.c.d.d), var_1.c.a.d), vec3<bool>(false, var_1.c.d.d, true), vec3<bool>(true, false, false)), true), vec3<bool>(false, var_1.c.d.d, (var_1.c.d.b == 1627f) & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.a.c.x, var_1.c.d.c.x, var_1.c.d.c.x, var_1.c.a.c.x), vec4<u32>(0u, u_input.a, u_input.a, 90026u)), 20u)]), true), !vec3<bool>(true, var_2.x, var_1.c.d.d));
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = u_input.a;
    global3 = array<Struct_3, 14>();
    var_0 = abs(u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-369f)));
    let var_2 = Struct_4(firstTrailingBit(-_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(u_input.c, u_input.c)), vec2<i32>(-1i, 3630i), ~vec2<i32>(u_input.c, -2147483647i))), var_1, Struct_2(Struct_1(vec3<i32>(u_input.c, 41524i, firstLeadingBit(u_input.c)), var_1, ~(~vec3<u32>(4492u, u_input.a, u_input.b)), any(func_3()), ~_wgslsmith_mult_i32(-16900i, u_input.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(29055i, max(u_input.c, -22237i)), (vec2<i32>(u_input.c, 22741i) | vec2<i32>(2147483647i, u_input.c)) | ~vec2<i32>(u_input.c, u_input.c)), arg_0.x, Struct_1(select(vec3<i32>(u_input.c, -3998i, 2147483647i), vec3<i32>(u_input.c, u_input.c, u_input.c) | vec3<i32>(1i, -7009i, 624i), select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], true, global0[_wgslsmith_index_u32(u_input.b, 20u)]), false)), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(floor(arg_0.x))), vec3<u32>(1u, abs(u_input.a), 0u), global0[_wgslsmith_index_u32(1u, 20u)], 24319i)), 1462f, Struct_2(Struct_1(vec3<i32>(u_input.c, 2147483647i, i32(-1i) * -21179i), var_1, select(vec3<u32>(71123u, u_input.a, 15049u) << (vec3<u32>(u_input.b, 4294967295u, 58840u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(58336u, 1u, u_input.a), vec3<u32>(u_input.b, u_input.a, 37700u)), global0[_wgslsmith_index_u32(~33687u, 20u)]), all(func_3().zx), ~1i), u_input.c, arg_0.x, Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(0i, u_input.c, 19187i)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1323f)), vec3<u32>(~15502u, ~52245u, ~u_input.b), global0[_wgslsmith_index_u32(u_input.a, 20u)], -abs(-217i))));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_2.c.b, 2147483647i, -53360i, 20573i), ~(~vec4<i32>(-18996i, var_2.e.b, var_2.c.a.a.x, -50374i))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, var_2.a.x, u_input.c, u_input.c) << (vec4<u32>(var_2.c.d.c.x, 9239u, var_2.c.a.c.x, var_2.c.a.c.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(abs(vec4<i32>(var_2.a.x, 2147483647i, u_input.c, 23590i)), -vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c)))), vec4<i32>(select(~_wgslsmith_mod_i32(-2147483647i, var_2.a.x), var_2.a.x, !(!var_2.c.a.d)), u_input.c, _wgslsmith_mult_i32(-_wgslsmith_sub_i32(u_input.c, u_input.c), var_2.a.x), _wgslsmith_div_i32(23334i, 7717i) ^ min(reverseBits(u_input.c), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mult_i32(_wgslsmith_div_i32(-9050i, -(~u_input.c)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-118f, -647f) + vec2<f32>(-874f, -1650f))))));
    global2 = firstLeadingBit(~(~u_input.c));
    var var_0 = global1[_wgslsmith_index_u32(12063u, 16u)];
    var var_1 = -797f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f) + var_0.b.b);
    var var_3 = Struct_1(vec3<i32>(var_0.b.a.x, ~2147483647i, 44138i), -699f, ~(vec3<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), abs(var_0.b.c.x), ~4294967295u) & select(max(vec3<u32>(52829u, var_0.b.c.x, 1u), var_0.b.c), ~var_0.b.c, !vec3<bool>(global0[_wgslsmith_index_u32(26166u, 20u)], false, global0[_wgslsmith_index_u32(0u, 20u)]))), !var_0.a.x, -_wgslsmith_mult_i32(-u_input.c, -u_input.c));
    var var_4 = Struct_3(var_0.a, Struct_1(-min(~var_3.a, vec3<i32>(-49090i, 12172i, var_3.a.x)), var_3.b, vec3<u32>(reverseBits(52874u << (var_0.b.c.x % 32u)), reverseBits(~7496u), _wgslsmith_mod_u32(0u, 1u) << ((u_input.b >> (9869u % 32u)) % 32u)), all(select(!var_0.a, !var_0.a, true)), _wgslsmith_mult_i32(u_input.c, -1i)), var_0.c);
    let var_5 = ~(vec4<u32>(_wgslsmith_div_u32(reverseBits(var_0.b.c.x), _wgslsmith_div_u32(var_4.b.c.x, var_3.c.x)), var_3.c.x, _wgslsmith_mod_u32(var_4.b.c.x, _wgslsmith_dot_vec2_u32(var_0.b.c.zx, vec2<u32>(var_3.c.x, u_input.b))), 0u) & abs(~vec4<u32>(var_4.b.c.x, var_4.b.c.x, 4294967295u, var_4.b.c.x)));
    global3 = array<Struct_3, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c << (12042u % 32u), ~u_input.c), 43022i), var_3.a.x, _wgslsmith_mult_i32(~0i, var_0.b.e), -1i), ((var_4.b.c.yz << (vec2<u32>(1u, var_0.b.c.x) % vec2<u32>(32u))) | var_4.b.c.yz) | vec2<u32>(~var_3.c.x, firstTrailingBit(7880u)), min(reverseBits(4294967295u), 1u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b, var_4.b.b)) + _wgslsmith_div_vec2_f32(vec2<f32>(-261f, -473f), vec2<f32>(var_4.b.b, -458f))))))));
}

