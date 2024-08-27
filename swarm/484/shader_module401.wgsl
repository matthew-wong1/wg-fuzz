struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(18126u, 64342u), vec2<u32>(6476u, 7949u), vec2<u32>(4294967295u, 70941u), vec2<u32>(40507u, 4294967295u), vec2<u32>(40155u, 54635u), vec2<u32>(10009u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(27768u, 0u), vec2<u32>(37625u, 1u), vec2<u32>(0u, 48413u), vec2<u32>(92289u, 53036u), vec2<u32>(0u, 45197u), vec2<u32>(4294967295u, 14405u), vec2<u32>(4294967295u, 0u), vec2<u32>(26987u, 0u), vec2<u32>(9651u, 28991u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 38484u), vec2<u32>(1u, 40801u), vec2<u32>(0u, 15907u));

var<private> global2: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> vec3<u32> {
    global1 = array<vec2<u32>, 20>();
    let var_0 = countOneBits(~(vec2<u32>(15188u, countOneBits(arg_2.a.x)) & vec2<u32>(~arg_2.a.x, _wgslsmith_div_u32(arg_1.e, 59633u))));
    global2 = array<vec4<bool>, 29>();
    let var_1 = -1i;
    let var_2 = -1686f;
    return ~arg_2.a;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(func_3(2926f, global0[_wgslsmith_index_u32(u_input.d.x, 26u)], Struct_3(~(~vec3<u32>(u_input.a, u_input.b, 35950u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2128i), u_input.c), vec3<f32>(_wgslsmith_f_op_f32(-1046f - 220f), _wgslsmith_f_op_f32(abs(2722f)), _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1582f, -440f, -1153f, -1675f) * vec4<f32>(355f, -1360f, -1058f, 827f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(899f, -928f, -678f, 1058f)))), Struct_1(~u_input.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(827f, -1963f, -741f, -899f))))), -u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-135f - 2613f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1363f, 656f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(679f, 192f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-233f, -918f)))) + _wgslsmith_f_op_f32(-631f + -940f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-664f, 166f, 1756f, 939f)))))), vec4<f32>(1f, 1f, 1f, 1f))), Struct_1(-(~1i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1664f, -163f, -1000f, -1000f))))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.x)));
    global1 = array<vec2<u32>, 20>();
    global2 = array<vec4<bool>, 29>();
    let var_2 = var_0.d;
    return Struct_3(select(~vec3<u32>(65925u, abs(u_input.b), ~u_input.d.x), select(countOneBits(select(var_0.a, vec3<u32>(var_0.a.x, u_input.d.x, 29200u), false)), vec3<u32>(21404u, ~var_0.a.x, u_input.b), true), vec3<bool>(var_0.a.x >= ~0u, all(vec2<bool>(true, true)), any(!global2[_wgslsmith_index_u32(38599u, 29u)]))), -(_wgslsmith_dot_vec3_i32(-vec3<i32>(-13213i, 1i, 2147483647i), vec3<i32>(var_0.e.a, u_input.c.x, -1i)) << (~4294967295u % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.e.b.x), _wgslsmith_f_op_f32(sign(195f))), _wgslsmith_f_op_vec3_f32(-var_2.wzw), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.xxz) * vec3<f32>(var_0.c.x, -360f, var_2.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-531f, -224f, 182f), var_2.wyz)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e.b * _wgslsmith_f_op_vec4_f32(-var_0.d)) + var_0.d), var_0.e);
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3, arg_3: vec3<i32>) -> bool {
    return !any(vec2<bool>(all(vec3<bool>(false, true, true)), !any(vec3<bool>(true, arg_1, arg_1))));
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<bool>, 29>();
    global2 = array<vec4<bool>, 29>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-729f, -1000f)) - _wgslsmith_f_op_f32(-948f - _wgslsmith_f_op_f32(min(470f, 225f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-122f, _wgslsmith_div_f32(759f, 543f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(337f)))), !func_4(vec2<u32>(u_input.b, 4787u), true, func_2(), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, 3764i, 32962i), vec3<i32>(u_input.c.x, 1i, u_input.e), vec3<i32>(u_input.c.x, -48253i, -11209i))))), -387f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -228f))) * -592f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f)));
    global0 = array<Struct_2, 26>();
    let var_1 = ~u_input.e;
    return Struct_1(u_input.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(497f, 1444f, -1317f, var_0.x) + vec4<f32>(-673f, var_0.x, -170f, -1873f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -535f, 630f, -622f)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    global1 = array<vec2<u32>, 20>();
    let var_0 = select(~firstLeadingBit(u_input.a), 0u, true) & ~u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-274f * -1016f);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, 115f, -206f, arg_0.b.x)))) + arg_0.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(547f, _wgslsmith_f_op_f32(ceil(-1550f)), 1061f, -1065f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b - arg_0.b))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_clamp_i32(2147483647i, -countOneBits(u_input.e), u_input.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1000f, -326f, -134f))) - func_2().e.b)), -2147483647i, arg_0, -897f, 1u);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1986f)));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(~53999i, var_0.b | 0i, -var_0.e.a, var_0.b), ~countOneBits(vec4<i32>(50796i, -25122i, var_0.e.a, 11945i))) >> (~81700u % 32u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(round(var_0.d.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x - var_0.c.x), _wgslsmith_f_op_f32(abs(-106f)))))));
    var var_3 = var_0.a;
    let var_4 = true;
    var var_5 = ~(~(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_3.x, var_0.a.x), func_2().a.x) << (u_input.a % 32u)));
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(29639u, 7853u, 1u, var_0.a.x), vec4<u32>(u_input.d.x, var_0.a.x, 4294967295u, 4294967295u)) | (u_input.d | u_input.d), vec4<u32>(_wgslsmith_add_u32(var_6.a.x, var_3.x), 43565u, var_0.a.x, 0u)), ~_wgslsmith_sub_u32(~1u, 26665u)), -1893f, max(abs(0i), -2147483647i));
}

