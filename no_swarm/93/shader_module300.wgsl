struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -50939i)), 2147483647i, Struct_2(vec4<f32>(-256f, 1087f, -1016f, -188f), Struct_1(vec4<i32>(-13997i, 0i, -1i, i32(-2147483648))), 24552u, Struct_1(vec4<i32>(29630i, 6338i, 32609i, -1i))), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec4<i32>(-1i, -16935i, 28884i, 32446i)), 1i, Struct_2(vec4<f32>(-371f, -1966f, 820f, 691f), Struct_1(vec4<i32>(-16669i, -1i, 27552i, 13270i)), 1u, Struct_1(vec4<i32>(-4191i, -28382i, i32(-2147483648), i32(-2147483648)))), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec4<i32>(66143i, 54707i, 0i, -9696i)), -80367i, Struct_2(vec4<f32>(-846f, -699f, 1000f, 217f), Struct_1(vec4<i32>(-4237i, -24603i, -1i, 2631i)), 4294967295u, Struct_1(vec4<i32>(0i, 2147483647i, 2147483647i, 1i))), vec3<bool>(true, false, true)), Struct_3(Struct_1(vec4<i32>(2744i, -16078i, 2938i, 0i)), -1i, Struct_2(vec4<f32>(526f, 556f, 576f, 1000f), Struct_1(vec4<i32>(0i, -34661i, 0i, 3166i)), 64009u, Struct_1(vec4<i32>(17475i, 13154i, -32563i, -42856i))), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec4<i32>(52975i, -1i, -1i, -75416i)), 25230i, Struct_2(vec4<f32>(-502f, 300f, -1685f, 172f), Struct_1(vec4<i32>(-12402i, i32(-2147483648), i32(-2147483648), 1061i)), 1u, Struct_1(vec4<i32>(-6852i, i32(-2147483648), 0i, 34091i))), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 48850i, 12951i)), 36063i, Struct_2(vec4<f32>(1061f, 1812f, 655f, -1000f), Struct_1(vec4<i32>(2147483647i, -4123i, i32(-2147483648), 2147483647i)), 1u, Struct_1(vec4<i32>(0i, i32(-2147483648), 10306i, 0i))), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec4<i32>(-18672i, 11901i, -35763i, 2147483647i)), 1i, Struct_2(vec4<f32>(1310f, 390f, -1047f, -294f), Struct_1(vec4<i32>(723i, i32(-2147483648), i32(-2147483648), -1i)), 72524u, Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, -30584i))), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec4<i32>(2781i, 21332i, -13627i, 0i)), -1i, Struct_2(vec4<f32>(-140f, 867f, 216f, -224f), Struct_1(vec4<i32>(-37172i, 22508i, 0i, 3307i)), 1u, Struct_1(vec4<i32>(i32(-2147483648), 2727i, 0i, 343i))), vec3<bool>(true, false, true)), Struct_3(Struct_1(vec4<i32>(-8158i, i32(-2147483648), 36232i, 1i)), i32(-2147483648), Struct_2(vec4<f32>(1452f, -504f, 132f, 1909f), Struct_1(vec4<i32>(0i, 2147483647i, 30100i, -38720i)), 30193u, Struct_1(vec4<i32>(-298i, -48794i, -10372i, -1i))), vec3<bool>(false, true, false)), Struct_3(Struct_1(vec4<i32>(-17363i, 1i, 22492i, 1397i)), 1i, Struct_2(vec4<f32>(-228f, 565f, 467f, 541f), Struct_1(vec4<i32>(0i, -21123i, 84274i, 11977i)), 4294967295u, Struct_1(vec4<i32>(i32(-2147483648), -71485i, 4473i, 0i))), vec3<bool>(false, true, true)), Struct_3(Struct_1(vec4<i32>(1i, 0i, -1i, -4326i)), 3021i, Struct_2(vec4<f32>(452f, -1037f, 657f, -529f), Struct_1(vec4<i32>(2147483647i, -6306i, 23371i, 2147483647i)), 53714u, Struct_1(vec4<i32>(-28209i, -1i, 11685i, 22589i))), vec3<bool>(true, false, false)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -43899i, 2147483647i, i32(-2147483648))), 61563i, Struct_2(vec4<f32>(313f, -232f, 276f, -251f), Struct_1(vec4<i32>(-1i, 9403i, 0i, i32(-2147483648))), 0u, Struct_1(vec4<i32>(-40573i, 70128i, 1i, -48045i))), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec4<i32>(16492i, 21818i, -1i, -329i)), -11446i, Struct_2(vec4<f32>(1984f, 848f, -906f, -990f), Struct_1(vec4<i32>(-28144i, 2147483647i, -1i, 1i)), 1u, Struct_1(vec4<i32>(0i, -4922i, -1i, -1i))), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec4<i32>(-1i, 9429i, 0i, 0i)), 1i, Struct_2(vec4<f32>(-2408f, -575f, -723f, 1065f), Struct_1(vec4<i32>(i32(-2147483648), 1i, 2147483647i, 104i)), 44094u, Struct_1(vec4<i32>(2147483647i, -1i, -1i, 0i))), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec4<i32>(0i, i32(-2147483648), 2147483647i, 21084i)), 2700i, Struct_2(vec4<f32>(2493f, -974f, -363f, -1342f), Struct_1(vec4<i32>(i32(-2147483648), 0i, 9092i, 5709i)), 1u, Struct_1(vec4<i32>(56808i, i32(-2147483648), 2147483647i, 2147483647i))), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec4<i32>(-80964i, 0i, 1i, i32(-2147483648))), -1i, Struct_2(vec4<f32>(716f, 1000f, -669f, -1791f), Struct_1(vec4<i32>(1i, -25663i, 1i, -42021i)), 4294967295u, Struct_1(vec4<i32>(-12448i, 1i, 0i, i32(-2147483648)))), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec4<i32>(-9782i, i32(-2147483648), -35382i, 16187i)), -1i, Struct_2(vec4<f32>(683f, 182f, 744f, 1668f), Struct_1(vec4<i32>(-1i, 1i, 1i, -4588i)), 9418u, Struct_1(vec4<i32>(-12482i, 22778i, 0i, 1i))), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec4<i32>(26294i, 0i, 2147483647i, 3807i)), 2147483647i, Struct_2(vec4<f32>(629f, 1000f, 1000f, -212f), Struct_1(vec4<i32>(53693i, 1891i, 70716i, 20996i)), 4294967295u, Struct_1(vec4<i32>(1i, -47795i, -1i, 55059i))), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 42472i, 2147483647i, 2147483647i)), i32(-2147483648), Struct_2(vec4<f32>(824f, 1000f, -658f, -339f), Struct_1(vec4<i32>(1i, i32(-2147483648), -36440i, -5990i)), 85267u, Struct_1(vec4<i32>(41463i, 2147483647i, 2088i, 2409i))), vec3<bool>(true, false, true)), Struct_3(Struct_1(vec4<i32>(-15472i, -37124i, -67628i, 5452i)), i32(-2147483648), Struct_2(vec4<f32>(301f, 785f, -229f, -344f), Struct_1(vec4<i32>(11822i, 42037i, 28808i, -35449i)), 63470u, Struct_1(vec4<i32>(-1i, 1i, 29885i, i32(-2147483648)))), vec3<bool>(false, true, true)), Struct_3(Struct_1(vec4<i32>(22044i, -39892i, 20827i, 7340i)), 0i, Struct_2(vec4<f32>(-429f, 151f, -861f, -152f), Struct_1(vec4<i32>(6916i, -14426i, -1i, 2147483647i)), 1u, Struct_1(vec4<i32>(0i, 25393i, i32(-2147483648), 28311i))), vec3<bool>(false, true, true)), Struct_3(Struct_1(vec4<i32>(-1i, i32(-2147483648), 12137i, 2147483647i)), 10679i, Struct_2(vec4<f32>(-338f, 1187f, -1197f, 1792f), Struct_1(vec4<i32>(-19396i, i32(-2147483648), 2147483647i, -2463i)), 16629u, Struct_1(vec4<i32>(1i, 0i, 0i, 1808i))), vec3<bool>(true, false, true)), Struct_3(Struct_1(vec4<i32>(35733i, 1i, 1i, 25470i)), -7670i, Struct_2(vec4<f32>(-177f, -1237f, 1000f, -1105f), Struct_1(vec4<i32>(9276i, 0i, -1i, 2147483647i)), 66397u, Struct_1(vec4<i32>(-1i, 8452i, 0i, 70315i))), vec3<bool>(true, false, false)), Struct_3(Struct_1(vec4<i32>(22007i, 0i, 47893i, i32(-2147483648))), 24579i, Struct_2(vec4<f32>(-1000f, 313f, -211f, 1124f), Struct_1(vec4<i32>(-35382i, -11662i, -12933i, -1i)), 1u, Struct_1(vec4<i32>(0i, 0i, 0i, 0i))), vec3<bool>(false, true, false)));

var<private> global3: i32 = -35275i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + vec4<f32>(-1590f, -2146f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1704f - -1426f), _wgslsmith_f_op_f32(f32(-1f) * -1018f)), -530f))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, _wgslsmith_mod_i32(1i << (u_input.d % 32u), reverseBits(select(u_input.a.x, -55296i, false)))), (vec3<i32>(24588i, -24346i, _wgslsmith_mult_i32(u_input.a.x, -2147483647i)) >> (vec3<u32>(max(u_input.d, u_input.c), ~u_input.b, u_input.c) % vec3<u32>(32u))) & ~abs(vec3<i32>(u_input.a.x, -25766i, -1i)));
    let var_2 = select(-u_input.a, ~u_input.a, global0.x);
    global0 = global1[_wgslsmith_index_u32(4294967295u, 30u)];
    var var_3 = vec3<u32>(1u, _wgslsmith_mult_u32(4294967295u >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 22897u), vec3<u32>(u_input.b, 1u, u_input.d))) % 32u), ~(~u_input.d)), u_input.c | firstLeadingBit(1u));
    return _wgslsmith_f_op_f32(var_0.x * 942f);
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global1 = array<vec2<bool>, 30>();
    var var_0 = Struct_1(firstTrailingBit(vec4<i32>(~u_input.a.x, u_input.a.x, -1i, firstLeadingBit(max(arg_0.x, arg_0.x)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-748f)), 194f);
    let var_2 = 4294967295u;
    var var_3 = false;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(max(var_1, -101f)), _wgslsmith_f_op_f32(387f * var_1))), Struct_1(~max(~var_0.a, vec4<i32>(-37114i, var_0.a.x, -4266i, var_0.a.x))), _wgslsmith_add_u32(max(u_input.d, ~_wgslsmith_clamp_u32(4294967295u, var_2, 4294967295u)), u_input.d), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, -430i), ~1i) ^ var_0.a));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = func_2(~(~_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, u_input.a.x), vec3<i32>(-26881i, u_input.a.x, u_input.a.x)) | abs(_wgslsmith_mod_vec3_i32(vec3<i32>(40046i, arg_0.x, 77637i), vec3<i32>(u_input.a.x, -1i, u_input.a.x)))));
    global0 = !(!select(!(!vec2<bool>(global0.x, global0.x)), vec2<bool>(!arg_2.x, global0.x), vec2<bool>(global0.x, global0.x | arg_2.x)));
    var var_1 = _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(i32(-1i) * -1i, (arg_0.x >> (u_input.d % 32u)) << (18879u % 32u), min(select(u_input.a.x, -10944i, arg_2.x), arg_0.x))), var_0.b.a.wzx);
    global2 = array<Struct_3, 24>();
    var_1 = 65720i;
    return 644f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-276f, _wgslsmith_f_op_f32(func_1(u_input.a, vec2<u32>(~4294967295u, _wgslsmith_mod_u32(u_input.d, 0u) >> (_wgslsmith_add_u32(98448u, 68112u) % 32u)), !(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, true, true), false)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1026f * var_0.x))))) - var_0.x);
    global3 = _wgslsmith_sub_i32(-_wgslsmith_add_i32(u_input.a.x, -2147483647i), -2147483647i);
    let var_2 = func_2(vec3<i32>(61780i, abs(-1i & firstLeadingBit(u_input.a.x)), min(u_input.a.x, u_input.a.x)));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(85023u << (_wgslsmith_sub_u32(var_2.c, 0u) % 32u), var_2.c, ~(11471u >> (u_input.c % 32u)), u_input.d)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.c, 41795u, 50636u, u_input.b)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.d, 30507u, u_input.b, var_2.c), vec4<u32>(u_input.b, 69460u, 0u, 13616u)), abs(vec4<u32>(43396u, 48162u, u_input.b, var_2.c))), min(~vec4<u32>(var_2.c, 29414u, u_input.c, u_input.c), ~vec4<u32>(u_input.c, 0u, 1u, var_2.c))))), 30u)];
    global0 = vec2<bool>(true, any(select(vec4<bool>(all(vec4<bool>(false, false, global0.x, global0.x)), global0.x, 16821u < var_2.c, u_input.c <= 1u), select(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(true, global0.x, false, global0.x)), select(vec4<bool>(true, false, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), false), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(true, false, global0.x, true))), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -546f), false))))), ~firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 74611u), vec2<u32>(var_2.c, 31450u), vec2<u32>(u_input.b, 1u)), ~vec2<u32>(var_2.c, 0u))));
}

