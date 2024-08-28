struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(ceil(-1000f))));
    global0 = array<vec3<u32>, 19>();
    var var_1 = Struct_2(-(-10910i << (_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(arg_0.c, arg_0.c)) % 32u)));
    var_1 = Struct_2(-_wgslsmith_dot_vec3_i32(u_input.d, _wgslsmith_div_vec3_i32(abs(u_input.d), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, 13152i, -17823i), vec3<i32>(u_input.d.x, var_1.a, var_1.a)))));
    var var_2 = Struct_2(_wgslsmith_sub_i32(var_1.a, 19259i << (_wgslsmith_mult_u32(arg_0.b, 1u) % 32u)));
    return !arg_0.d;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(~(~firstTrailingBit(u_input.a.yz)), _wgslsmith_add_u32(~_wgslsmith_mod_u32(4294967295u, u_input.b), 4294967295u), ~(~vec4<u32>(77243u, 1917u, u_input.b, 51844u)) ^ vec4<u32>(~(~58487u), 1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(31008u, u_input.c, u_input.c, 4294967295u), vec4<u32>(0u, u_input.a.x, 18245u, u_input.c)) % 32u), ~_wgslsmith_div_u32(0u, u_input.b), ~12154u), func_3(Struct_1(vec2<u32>(abs(63780u), ~u_input.c), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(25957u, 16052u, 38244u)), min(vec4<u32>(u_input.b, 8401u, 20337u, 24147u), vec4<u32>(201412u, 1u, u_input.c, u_input.a.x) & vec4<u32>(4294967295u, u_input.c, u_input.a.x, 1u)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true))));
    global0 = array<vec3<u32>, 19>();
    var var_1 = -_wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(-48486i, 46459i, -35084i, u_input.d.x)), vec4<i32>(~u_input.d.x, min(-20680i, u_input.d.x), -1i, -u_input.d.x)) | _wgslsmith_mod_i32(_wgslsmith_add_i32(firstTrailingBit(u_input.d.x), ~2147483647i), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d.x, reverseBits(u_input.d.x)), reverseBits(u_input.d.x)));
    let var_2 = var_0.d.x;
    let var_3 = 24003u;
    return Struct_2(~(-13605i));
}

fn func_1() -> vec3<i32> {
    let var_0 = func_2();
    let var_1 = var_0;
    let var_2 = func_2();
    var var_3 = var_0.a;
    var var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(var_2.a, -2828i) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b >> (u_input.a.x % 32u)), ~(u_input.a.xy ^ u_input.a.xz)) % vec2<u32>(32u)), u_input.d.zy);
    return u_input.d;
}

fn func_4(arg_0: i32) -> Struct_2 {
    let var_0 = -428f;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(905f + 401f), -538f, 1f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1542f, var_0, 306f) - vec3<f32>(1742f, var_0, 1666f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1014f, var_0, var_0) * vec3<f32>(-842f, -1509f, var_0))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, 188f, var_0), vec3<f32>(var_0, -226f, var_0)))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1298f)), 506f, -587f))));
    let var_2 = Struct_2(reverseBits(_wgslsmith_mod_i32(arg_0, ~max(u_input.d.x, 2147483647i))));
    let var_3 = min(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_sub_i32(48552i, var_2.a), -_wgslsmith_mod_i32(var_2.a, u_input.d.x))), func_1().x);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1595f) + var_1.x) * 1642f)), _wgslsmith_f_op_f32(-var_1.x), var_0);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = vec4<i32>(_wgslsmith_add_i32(-28095i, -1122i >> (_wgslsmith_mod_u32(select(70279u, u_input.b, false), min(6183u, var_0)) % 32u)), u_input.d.x, u_input.d.x, _wgslsmith_mult_i32(min(_wgslsmith_sub_i32(u_input.d.x, firstLeadingBit(-1i)), 18904i), u_input.d.x));
    let var_2 = func_4(_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.wzy, u_input.d), ~var_1.yyy), func_1()));
    let var_3 = all(select(vec2<bool>(true, false), vec2<bool>(select(true, any(vec2<bool>(true, true)), true), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))), all(vec3<bool>(var_1.x <= 777i, all(vec4<bool>(false, true, true, false)), false))));
    var_1 = ~(-(_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_2.a, var_2.a, 343i, 0i), vec4<i32>(-2147483647i, u_input.d.x, var_2.a, 1i), vec4<i32>(var_2.a, var_2.a, -53764i, 30475i) | vec4<i32>(var_2.a, 1i, 1i, 9198i)) >> (~vec4<u32>(58408u, u_input.b, var_0, u_input.c) % vec4<u32>(32u))));
    var_1 = vec4<i32>(firstTrailingBit(var_2.a >> (_wgslsmith_add_u32(1u, ~4294967295u) % 32u)), ~0i, u_input.d.x, select(1i, 0i, any(vec4<bool>(true, any(vec2<bool>(var_3, var_3)), any(vec3<bool>(var_3, var_3, var_3)), !var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(~5655u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(645f)), _wgslsmith_f_op_f32(-1030f - 1124f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(133f)) + 1559f)), 167f, 1218f), func_4(5813i).a);
}

