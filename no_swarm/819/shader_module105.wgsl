struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 34263u;

var<private> global1: array<vec2<f32>, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_2 {
    global1 = array<vec2<f32>, 9>();
    global0 = ~arg_1.x >> (0u % 32u);
    return Struct_2(Struct_1(90609u), false);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_3(firstLeadingBit(max(vec4<i32>(u_input.b.x, _wgslsmith_div_i32(-6411i, u_input.b.x), ~1i, -14459i), u_input.b)), abs(u_input.b.x));
    let var_1 = -_wgslsmith_mod_vec4_i32(vec4<i32>(~22521i, select(-33796i, u_input.b.x, false) ^ 1i, -1i, u_input.b.x), var_0.a);
    var var_2 = u_input.c.x;
    let var_3 = ~var_1.xxw;
    var_2 = _wgslsmith_mult_u32(1u, 19867u);
    return arg_0.a;
}

fn func_1() -> vec4<f32> {
    global0 = _wgslsmith_div_u32(firstLeadingBit(u_input.d), ~_wgslsmith_div_u32(u_input.d, abs(21361u)));
    global1 = array<vec2<f32>, 9>();
    let var_0 = Struct_2(func_3(func_2(_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, -2147483647i), _wgslsmith_div_i32(2147483647i, u_input.b.x)), abs(_wgslsmith_mod_vec3_u32(u_input.a.www, vec3<u32>(u_input.d, 0u, 4294967295u)))), u_input.d), false);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(657f, _wgslsmith_f_op_f32(f32(-1f) * -318f), -1897f))) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(137f, 428f), _wgslsmith_f_op_f32(ceil(436f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-380f, -1352f, true)) - 345f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1650f) * _wgslsmith_f_op_f32(sign(143f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_f_op_f32(max(1020f, 1109f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, 683f, -391f, -287f), vec4<f32>(-929f, -276f, var_2.x, 1869f))) - vec4<f32>(-2112f, var_2.x, -1000f, var_2.x)) - vec4<f32>(930f, _wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(var_2.x - var_2.x), 978f)) * vec4<f32>(-489f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -1627f)), _wgslsmith_f_op_f32(2722f - _wgslsmith_f_op_f32(abs(-276f))), -1671f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.wwx;
    var var_1 = -reverseBits(select(firstLeadingBit(u_input.b.zw), vec2<i32>(var_0.x, ~(-1i)), true));
    var var_2 = Struct_4(Struct_1(62679u), var_0.x);
    let var_3 = -(~(-17039i));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(105f, -330f, 861f, 1254f))), _wgslsmith_f_op_vec4_f32(func_1()))));
    var var_5 = -vec4<i32>(1i, var_0.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(21451i, var_0.x, -1i) & u_input.b.yxw, _wgslsmith_mod_vec3_i32(u_input.b.wzy, vec3<i32>(2147483647i, u_input.b.x, var_1.x))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, ~var_2.a.a);
}

