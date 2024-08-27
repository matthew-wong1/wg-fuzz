struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 49756u;

var<private> global1: array<Struct_1, 18>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> i32 {
    global1 = array<Struct_1, 18>();
    global0 = u_input.a;
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-320f)) + _wgslsmith_f_op_f32(min(-774f, 142f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1274f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f) * _wgslsmith_f_op_f32(f32(-1f) * -1496f))), vec3<f32>(_wgslsmith_f_op_f32(floor(-405f)), _wgslsmith_f_op_f32(ceil(-1001f)), _wgslsmith_f_op_f32(f32(-1f) * -1185f)))), 36238u, _wgslsmith_div_f32(-801f, -1004f), _wgslsmith_f_op_vec4_f32(vec4<f32>(832f, 1f, -134f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-220f, -1316f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(562f, -1018f, -1453f, 904f) - vec4<f32>(-1291f, 102f, 205f, 1017f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(194f, 316f)), -1055f, _wgslsmith_f_op_f32(abs(422f))))), false);
    global1 = array<Struct_1, 18>();
    var var_1 = countOneBits(_wgslsmith_mod_vec4_i32(-max(vec4<i32>(u_input.c.x, arg_0, -7288i, 7892i), vec4<i32>(-7443i, 1i, u_input.c.x, u_input.b.x) >> (vec4<u32>(59703u, 1u, u_input.a, var_0.b) % vec4<u32>(32u))), vec4<i32>(arg_0, 36170i, reverseBits(~3329i), arg_0)));
    return _wgslsmith_mult_i32(abs(u_input.c.x), 19091i);
}

fn func_2() -> i32 {
    global1 = array<Struct_1, 18>();
    global0 = abs(1u) ^ (40744u | _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(u_input.e.x, u_input.e.x)));
    let var_0 = true;
    var var_1 = vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(59578i), -10289i, 1i, ~27200i) >> (vec4<u32>(u_input.a & u_input.a, countOneBits(42423u), _wgslsmith_clamp_u32(66724u, u_input.e.x, 4294967295u), 1u >> (u_input.e.x % 32u)) % vec4<u32>(32u)), vec4<i32>(2147483647i, u_input.c.x, -2147483647i, _wgslsmith_mod_i32(u_input.c.x, -7920i) << (1u % 32u))), ~func_3(1i) & firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, -49154i), vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i))), 30981i << (firstTrailingBit(u_input.a) % 32u));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1412f * -233f)), -1012f)), abs(_wgslsmith_div_u32(~abs(0u), ~(~u_input.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1516f, -658f)), -1466f, -1000f, _wgslsmith_f_op_f32(158f - -584f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(943f, 1253f, 1050f, -1493f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1160f, -1101f, 911f, -1312f)))))), var_0);
    return var_1.x;
}

fn func_1(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = -vec4<i32>(~1i, -18304i, -1i, -u_input.d.x);
    global0 = u_input.e.x;
    let var_1 = -vec3<i32>(u_input.c.x, func_2(), 39683i);
    return select(vec4<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), any(vec2<bool>(false, false)))), false, true), select(vec4<bool>(all(vec4<bool>(true, false, false, true)), true, false, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false), !(_wgslsmith_f_op_f32(abs(-229f)) < arg_0.x)), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), 489f < arg_0.x), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, any(vec2<bool>(true, false)), true, u_input.a < u_input.a)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1095f)) + _wgslsmith_f_op_f32(644f * _wgslsmith_f_op_f32(f32(-1f) * -1203f))))));
    var_0 = 802f;
    var var_1 = _wgslsmith_dot_vec4_u32(abs(select(firstLeadingBit(vec4<u32>(0u, 15537u, u_input.a, 1u)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, 14047u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 80492u), vec4<u32>(arg_0, 4294967295u, arg_0, u_input.e.x)), vec4<u32>(5993u, 23261u, u_input.a, arg_0)), vec4<bool>(func_1(vec4<f32>(-1255f, -1916f, 521f, -250f)).x, true, !arg_1.x, arg_1.x))), _wgslsmith_add_vec4_u32((reverseBits(vec4<u32>(u_input.a, u_input.a, 1u, 0u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.e.x), vec4<u32>(13626u, 0u, 1u, 36242u))) >> (~vec4<u32>(arg_0, 4294967295u, arg_0, 51664u) % vec4<u32>(32u)), select(select(vec4<u32>(arg_0, 1u, 4294967295u, 1u), vec4<u32>(arg_0, arg_0, 65159u, u_input.a), false) >> (~vec4<u32>(u_input.e.x, arg_0, 51476u, u_input.a) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(10731u, arg_0, u_input.a, arg_0)), arg_1.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1846f, -747f, -1134f, 1632f), vec4<f32>(-1463f, -538f, 1844f, 391f), arg_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1240f, -666f, -930f, -804f) * vec4<f32>(-667f, 195f, -988f, 810f))))));
    global0 = 0u;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(4294967295u, !func_1(vec4<f32>(-1712f, 1000f, -793f, -936f)))), _wgslsmith_f_op_f32(abs(1269f)), (-854f < _wgslsmith_f_op_f32(select(-209f, 571f, true))) & func_1(_wgslsmith_div_vec4_f32(vec4<f32>(354f, 1077f, -1132f, 1154f), vec4<f32>(-536f, 1701f, 1325f, -337f))).x)) * -889f);
    let var_1 = _wgslsmith_mod_vec4_i32(~(~_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, -3i, 0i), vec4<i32>(u_input.d.x, -1i, 2147483647i, u_input.c.x)), vec4<i32>(4488i, 43084i, u_input.d.x, 28079i))), vec4<i32>(~(-3127i), _wgslsmith_mult_i32(~u_input.c.x & ~u_input.d.x, abs(-16585i)), -1i, 1i));
    let var_2 = u_input.d.x;
    let var_3 = -2322f;
    let var_4 = select(_wgslsmith_mult_vec2_u32(vec2<u32>(abs(u_input.a), ~4404u), vec2<u32>(~75141u, 1u)) >> (u_input.e % vec2<u32>(32u)), select(min(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.e.x), vec3<u32>(0u, u_input.a, 4294967295u)), 15790u), vec2<u32>(38866u, ~u_input.e.x)), u_input.e, vec2<bool>(true, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -487f, var_0, 809f))).x)), vec2<bool>(-796f >= _wgslsmith_f_op_f32(step(var_0, var_0)), true | func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3, 780f, 471f, var_3)))).x));
    let var_5 = vec4<u32>(u_input.e.x, u_input.a, u_input.a, var_4.x);
    let var_6 = -1156f;
    var var_7 = vec3<u32>((firstTrailingBit(~11388u) >> (~(~1u) % 32u)) >> (98880u % 32u), reverseBits(~1u), ~var_5.x << (_wgslsmith_div_u32(27313u, _wgslsmith_add_u32(~var_4.x, u_input.a)) % 32u));
    var var_8 = min(min(~var_5, ~vec4<u32>(50610u, 23988u, _wgslsmith_div_u32(61313u, var_5.x), ~var_5.x)), ~(vec4<u32>(var_7.x, reverseBits(var_5.x), 1u, 1u) & ~vec4<u32>(u_input.e.x, u_input.e.x, 4294967295u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_4.x, vec4<bool>(true, true, false, false)))) * -283f) * var_0));
}

