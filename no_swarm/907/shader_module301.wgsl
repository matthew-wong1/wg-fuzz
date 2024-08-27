struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1296f;

var<private> global1: u32;

var<private> global2: array<Struct_2, 23>;

var<private> global3: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>) -> vec2<f32> {
    let var_0 = ~vec3<i32>(min(select(select(u_input.a.x, u_input.a.x, true), _wgslsmith_dot_vec3_i32(vec3<i32>(35982i, -58322i, -1i), u_input.a), any(vec2<bool>(false, false))), -2147483647i), u_input.a.x, -22069i);
    global1 = _wgslsmith_div_u32(4294967295u, ~1u);
    let var_1 = 865f;
    var var_2 = var_0.x;
    global2 = array<Struct_2, 23>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(886f, var_1), vec2<f32>(-1000f, var_1), true))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(var_1, -590f), 1898f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -567f), var_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 1506f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(717f, var_1))))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4) -> vec3<u32> {
    var var_0 = Struct_5(arg_1);
    var var_1 = ~vec2<u32>(1279u, select(var_0.a.a, 93384u, any(!vec3<bool>(arg_0.x, true, true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-var_0.a.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a, var_1.x), vec2<u32>(arg_1.a, arg_1.a))))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.b)) + -283f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3041f - 274f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(arg_1.a, arg_1.a))).x))));
    let var_3 = 912f;
    let var_4 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(534f - -583f)), var_0.a.b, _wgslsmith_f_op_f32(808f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + var_3))), _wgslsmith_f_op_f32(1108f + -1415f))));
    return vec3<u32>(var_0.a.a, 4294967295u >> (~_wgslsmith_mult_u32(1u, var_1.x) % 32u), firstLeadingBit(reverseBits(~var_0.a.a))) ^ vec3<u32>(_wgslsmith_sub_u32(select(7971u, ~var_0.a.a, true), 0u), ~1u, var_1.x);
}

fn func_1() -> vec3<u32> {
    global2 = array<Struct_2, 23>();
    let var_0 = vec2<i32>(-(~(-62939i)), u_input.a.x);
    var var_1 = vec3<u32>(0u, max(4294967295u, 6877u), reverseBits(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(248u, 70321u), ~vec2<u32>(2910u, 19847u), ~vec2<u32>(4294967295u, 1u)))));
    var var_2 = _wgslsmith_mod_vec2_i32(-_wgslsmith_add_vec2_i32(u_input.a.zy, ~var_0), max(var_0, vec2<i32>(-(2147483647i << (var_1.x % 32u)), -25776i << (abs(1u) % 32u))));
    let var_3 = false;
    return _wgslsmith_mod_vec3_u32(vec3<u32>(~0u, var_1.x, var_1.x) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.x, 20805u), vec3<u32>(25474u, 28262u, var_1.x)) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(var_1.x, 30398u, 40242u) << (func_2(vec4<bool>(var_3, var_3, false, true), Struct_4(26280u, -209f)) % vec3<u32>(32u)))) & min(_wgslsmith_mod_vec3_u32(~vec3<u32>(58551u, 100884u, 4294967295u), vec3<u32>(var_1.x, min(var_1.x, var_1.x), var_1.x)), _wgslsmith_sub_vec3_u32(max(vec3<u32>(var_1.x, 24665u, var_1.x), vec3<u32>(62794u, 1u, 43838u)) & firstTrailingBit(vec3<u32>(var_1.x, 1u, var_1.x)), func_2(vec4<bool>(true, true, true, true), Struct_4(0u, -1483f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(_wgslsmith_add_u32(1u, 0u), _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 23106u), vec3<u32>(91738u, 54882u, 64627u)), ~vec3<u32>(0u, 1u, 3456u))), firstTrailingBit(23586u) << (1u % 32u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-248f + 191f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-663f - -1345f), _wgslsmith_f_op_f32(-1282f * 714f), all(vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -658f, true))))) - 1330f);
    var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(67445u, var_0.x, min(var_0.x, reverseBits(_wgslsmith_div_u32(4294967295u, var_0.x)))), ~(func_1() << (func_2(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), Struct_4(16890u, -116f)) % vec3<u32>(32u))));
    var var_2 = Struct_4(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1176f)))));
    global3 = 12200u;
    let x = u_input.a;
    s_output = StorageBuffer(~max(~4163u, ~(~4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b, var_2.b, _wgslsmith_f_op_f32(floor(var_2.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-242f, -1121f, var_2.b), vec3<f32>(1936f, var_2.b, var_2.b)))))), select(~reverseBits(~0i), -2147483647i, true), ~_wgslsmith_div_i32(~reverseBits(u_input.a.x), u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(var_2.b * _wgslsmith_div_f32(-1449f, _wgslsmith_f_op_f32(exp2(var_2.b)))), var_2.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - -1146f)))));
}

