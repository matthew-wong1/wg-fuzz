struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(firstLeadingBit(arg_0.a), _wgslsmith_add_u32(arg_0.b, reverseBits(u_input.c.x) ^ arg_0.b));
}

fn func_3() -> bool {
    global0 = array<vec2<f32>, 24>();
    let var_0 = func_1(func_1(Struct_1(vec3<u32>(reverseBits(2611u), firstLeadingBit(1565u), func_1(Struct_1(vec3<u32>(u_input.c.x, 21046u, u_input.c.x), u_input.c.x)).a.x), ~u_input.c.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1269f, -208f) - 945f))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1516f))), _wgslsmith_div_f32(-1607f, -2589f)) * -438f);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>) -> bool {
    let var_0 = func_1(Struct_1(vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 37483u, 0u)), _wgslsmith_div_u32(12446u, 10518u)), 1u, u_input.c.x), ~u_input.c.x));
    var var_1 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(30220i, -35082i), -u_input.a, 1i), vec3<i32>(u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), u_input.d.xy), u_input.b.x)), -1i, -(u_input.a >> (60726u % 32u)) | u_input.d.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), -18280i));
    return arg_0;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32) -> vec2<u32> {
    var var_0 = u_input.b.x;
    var var_1 = -(i32(-1i) * -32398i);
    var var_2 = func_4(!func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2011f, arg_0) - vec2<f32>(arg_0, 711f)))))));
    let var_3 = select(vec2<bool>(false, true), vec2<bool>(true, (true && select(true, true, true)) | true), true);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-707f, arg_0, 676f), vec3<f32>(-289f, 1505f, arg_0))))))) - vec3<f32>(_wgslsmith_f_op_f32(abs(100f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-794f)))), 1777f));
    return abs(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 24>();
    global0 = array<vec2<f32>, 24>();
    global0 = array<vec2<f32>, 24>();
    let var_0 = func_1(Struct_1(vec3<u32>(1u, 1u, ~(~0u)), 1u));
    var var_1 = ~(~firstTrailingBit(_wgslsmith_mod_vec2_u32(func_2(-233f, var_0.a.x, 113239u), u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(0i, 9998i), ~(~(~vec4<u32>(39141u, var_0.b, 4294967295u, var_0.b))));
}

