struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
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

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec3<i32>(0i, 9336i, -658i), true, vec4<bool>(true, true, false, true), 1i), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<i32>(17249i, 1i, -1i), false, vec4<bool>(true, true, false, true), -10603i), vec2<bool>(true, false)));

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec2<f32>(408f, 1716f), vec3<bool>(false, true, false), vec4<i32>(37167i, 2147483647i, -1i, i32(-2147483648)), Struct_1(vec3<i32>(-44472i, 2147483647i, -30180i), true, vec4<bool>(true, false, true, false), i32(-2147483648))), Struct_3(vec2<f32>(-870f, -1507f), vec3<bool>(false, false, true), vec4<i32>(2236i, 67018i, i32(-2147483648), 1i), Struct_1(vec3<i32>(0i, 0i, -15906i), false, vec4<bool>(false, true, false, false), -6719i)), Struct_3(vec2<f32>(-575f, 894f), vec3<bool>(false, true, false), vec4<i32>(-42406i, -52489i, i32(-2147483648), i32(-2147483648)), Struct_1(vec3<i32>(24594i, 0i, -1146i), false, vec4<bool>(false, true, true, true), 1i)), Struct_3(vec2<f32>(1748f, -3050f), vec3<bool>(false, true, false), vec4<i32>(2147483647i, 49933i, i32(-2147483648), -26232i), Struct_1(vec3<i32>(i32(-2147483648), 40543i, -26518i), true, vec4<bool>(true, true, true, true), -1i)), Struct_3(vec2<f32>(-1506f, 1157f), vec3<bool>(false, true, true), vec4<i32>(-5039i, 1i, 7658i, 2147483647i), Struct_1(vec3<i32>(0i, 2147483647i, 57749i), false, vec4<bool>(false, true, true, false), 2147483647i)), Struct_3(vec2<f32>(1034f, -519f), vec3<bool>(false, false, true), vec4<i32>(-66105i, 2147483647i, -97271i, -6061i), Struct_1(vec3<i32>(25087i, 33168i, 1i), true, vec4<bool>(true, true, false, true), 1i)), Struct_3(vec2<f32>(837f, -1086f), vec3<bool>(true, true, false), vec4<i32>(1i, 75124i, 23364i, 0i), Struct_1(vec3<i32>(24689i, 0i, 32220i), false, vec4<bool>(false, false, true, true), -1i)), Struct_3(vec2<f32>(1247f, 171f), vec3<bool>(false, false, false), vec4<i32>(36412i, -23191i, i32(-2147483648), 68380i), Struct_1(vec3<i32>(32556i, 31163i, -19863i), false, vec4<bool>(true, true, true, true), 74326i)), Struct_3(vec2<f32>(-1000f, -1832f), vec3<bool>(true, true, false), vec4<i32>(-20344i, 4690i, 36431i, 420i), Struct_1(vec3<i32>(-45376i, -12934i, -1i), true, vec4<bool>(true, false, true, false), 2147483647i)), Struct_3(vec2<f32>(1000f, 322f), vec3<bool>(false, true, false), vec4<i32>(1i, -64764i, -2603i, 0i), Struct_1(vec3<i32>(19820i, 21123i, 2147483647i), true, vec4<bool>(true, false, false, true), -6219i)), Struct_3(vec2<f32>(-165f, 1228f), vec3<bool>(false, true, false), vec4<i32>(-3036i, 1i, -1i, 10816i), Struct_1(vec3<i32>(0i, -30687i, -1i), true, vec4<bool>(true, false, false, true), 1i)), Struct_3(vec2<f32>(-1990f, -185f), vec3<bool>(false, true, false), vec4<i32>(-62177i, 40988i, 1i, -43079i), Struct_1(vec3<i32>(-55463i, -31640i, -18674i), true, vec4<bool>(false, false, false, true), 1i)), Struct_3(vec2<f32>(965f, -1000f), vec3<bool>(true, true, true), vec4<i32>(19741i, -18770i, 2147483647i, 18169i), Struct_1(vec3<i32>(-69330i, -39891i, -729i), false, vec4<bool>(true, true, false, false), 39962i)), Struct_3(vec2<f32>(1789f, -708f), vec3<bool>(false, false, false), vec4<i32>(-3192i, 30278i, 8099i, -9284i), Struct_1(vec3<i32>(i32(-2147483648), 17698i, 1i), false, vec4<bool>(true, false, true, false), -2392i)), Struct_3(vec2<f32>(-575f, -394f), vec3<bool>(true, false, false), vec4<i32>(2147483647i, 0i, -1i, -1i), Struct_1(vec3<i32>(0i, i32(-2147483648), 2147483647i), true, vec4<bool>(true, false, false, true), 52191i)), Struct_3(vec2<f32>(375f, 1980f), vec3<bool>(false, false, true), vec4<i32>(-1i, 0i, -19569i, -313i), Struct_1(vec3<i32>(2147483647i, 1i, 1i), false, vec4<bool>(false, false, false, true), 6876i)), Struct_3(vec2<f32>(-1380f, -1134f), vec3<bool>(true, false, true), vec4<i32>(2147483647i, -53242i, -816i, -1i), Struct_1(vec3<i32>(2147483647i, 1i, 1i), false, vec4<bool>(false, true, false, true), 0i)), Struct_3(vec2<f32>(-1633f, 1448f), vec3<bool>(true, true, false), vec4<i32>(1i, 26987i, -33888i, 0i), Struct_1(vec3<i32>(-1i, 1i, i32(-2147483648)), false, vec4<bool>(false, true, false, false), 47906i)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_2, 2>();
    let var_0 = -809f;
    global1 = array<Struct_3, 18>();
    var var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~(~select(vec4<u32>(110618u, 15746u, u_input.a.x, 17906u), vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, 120474u), false)), vec4<u32>(u_input.a.x, 1u, 0u, ~14907u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 6226u, 4294967295u, u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(9002u, u_input.a.x, u_input.b.x, 23591u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 21465u)))));
    var var_2 = Struct_1(reverseBits(vec3<i32>(-countOneBits(-2147483647i), -1i, abs(-2147483647i))), true, !vec4<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))), false, var_0 >= _wgslsmith_f_op_f32(f32(-1f) * -1706f), true), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-49335i, 1i), vec2<i32>(-20671i, 0i)) | 19314i, 1i)));
    return !vec2<bool>(true, any(vec4<bool>(true, all(vec3<bool>(var_2.c.x, false, false)), var_2.b, all(vec3<bool>(false, var_2.b, false)))));
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_3, 18>();
    global1 = array<Struct_3, 18>();
    var var_0 = false;
    let var_1 = vec2<u32>(u_input.b.x, ~(u_input.b.x | reverseBits(~0u)));
    let var_2 = global1[_wgslsmith_index_u32(~1u, 18u)];
    return Struct_2(Struct_1(vec3<i32>(var_2.c.x ^ -1i, var_2.c.x, -1i) ^ ~(~var_2.c.xyy), var_2.b.x, !var_2.d.c, 26837i), func_3());
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = select(_wgslsmith_mod_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -13721i), arg_0.a.a.xx), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 2147483647i), arg_1.a.a.zy)), vec2<i32>(~_wgslsmith_sub_i32(arg_1.a.d, 2147483647i) ^ (~(-1i) | (arg_1.a.a.x >> (u_input.b.x % 32u))), i32(-1i) * -max(31447i, 0i)), arg_0.a.c.x);
    var var_1 = -226f;
    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.b.x, abs(55158u), u_input.b.x ^ u_input.a.x) >> (_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.b.x, 1u, 0u), vec3<u32>(u_input.a.x, 1u, u_input.b.x)), ~vec3<u32>(52382u, 0u, 5721u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.a.x, 4294967295u, 16845u)), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x)) & ~abs(vec3<u32>(35684u, u_input.b.x, u_input.a.x)), ~select(~vec3<u32>(5311u, u_input.b.x, u_input.a.x), vec3<u32>(u_input.b.x, 70303u, u_input.b.x), false)) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(~u_input.b.x, 4294967295u, u_input.b.x), ~select(~vec3<u32>(4401u, 4294967295u, 0u), vec3<u32>(16740u, 83103u, 18865u), !arg_0.a.c.www)) % vec3<u32>(32u));
    var var_3 = global1[_wgslsmith_index_u32(u_input.a.x, 18u)];
    var var_4 = -4012i;
    return firstTrailingBit(max(0i, i32(-1i) * -77699i));
}

fn func_1() -> f32 {
    let var_0 = abs(firstTrailingBit(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 24646i, 1i), vec3<i32>(-1i, -1i, -1i)), abs(firstLeadingBit(-8572i)), -_wgslsmith_sub_i32(-186i, 72757i))));
    var var_1 = var_0.x;
    var_1 = var_0.x;
    global0 = array<Struct_2, 2>();
    let var_2 = vec3<i32>(func_4(func_2(), Struct_2(Struct_1(func_2().a.a, true, select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), -var_0.x), vec2<bool>(var_0.x == 1i, func_2().b.x))), ~_wgslsmith_add_i32(func_4(func_2(), func_2()), 52387i), abs(var_0.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-336f * -206f), -584f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(272f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1778f * _wgslsmith_f_op_f32(-216f + 1828f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))));
    global1 = array<Struct_3, 18>();
    let var_1 = 2147483647i;
    var var_2 = !func_3().x || ((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-476f, -1027f))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(797f, 880f)))) != true);
    var_0 = 1167f;
    var var_3 = global0[_wgslsmith_index_u32(u_input.a.x << (u_input.b.x % 32u), 2u)];
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1316f * -229f))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(607f, 1162f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1052f) - -1453f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(553f))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(915f, _wgslsmith_f_op_f32(round(-407f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-604f, _wgslsmith_f_op_f32(round(441f)))), -1268f)), u_input.b.x);
}

