struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    let var_0 = vec3<u32>(4294967295u, max(~(~select(6604u, 0u, false)), _wgslsmith_clamp_u32(1u, 1u, 1u)), 103553u);
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f), 1253f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(max(751f, -391f))))))));
}

fn func_2() -> vec4<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1211f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(-2147483647i, true == select(false, true, false))), _wgslsmith_f_op_f32(func_3(1i, false)))), 1580f, -400f);
    var var_1 = true;
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -594f) - _wgslsmith_f_op_f32(f32(-1f) * -1063f)), -507f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))));
    var var_2 = firstTrailingBit(u_input.b);
    global0 = array<vec2<bool>, 26>();
    return !vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, -1764f), _wgslsmith_div_f32(-662f, var_0.x))) <= var_0.x, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), all(vec4<bool>(all(vec3<bool>(true, false, true)), all(vec2<bool>(false, false)), true, true)), true);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: f32) -> i32 {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(reverseBits(u_input.c), ~(-21173i), firstLeadingBit(var_0), var_0), vec4<i32>(17200i, _wgslsmith_mod_i32(33572i, u_input.a) & ~(-1i), firstLeadingBit(-1i), 0i)) & ~u_input.b.x;
    let var_2 = all(!func_2());
    var_1 = -(2147483647i << (abs(_wgslsmith_clamp_u32(arg_2.x, arg_2.x, 13285u) ^ select(arg_2.x, arg_2.x, var_2)) % 32u));
    let var_3 = firstTrailingBit(vec4<u32>(~arg_2.x, arg_2.x, _wgslsmith_clamp_u32(arg_2.x, select(~arg_2.x, _wgslsmith_add_u32(arg_2.x, 41387u), !var_2), arg_2.x), 57876u));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    var var_0 = 24501u;
    var var_1 = vec4<i32>(-(_wgslsmith_dot_vec4_i32(u_input.b, ~vec4<i32>(u_input.b.x, u_input.b.x, 42281i, -1i)) | _wgslsmith_mod_i32(3180i, -2147483647i)), _wgslsmith_mult_i32(func_1(_wgslsmith_f_op_f32(sign(-1609f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(249f, 814f), vec2<f32>(-1000f, 746f), false)), vec2<u32>(0u, 6910u), -664f), u_input.d) >> (1u % 32u), 0i, u_input.b.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-495f, 1497f)))))), vec2<f32>(-632f, 1153f), u_input.d, var_1.yx);
    var_0 = ~abs(~abs(33540u));
    var var_3 = var_2;
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_vec3_u32(~countOneBits(vec3<u32>(4294967295u, 60404u, 0u)), select(vec3<u32>(22141u, 42097u, 4294967295u), vec3<u32>(6587u, 6012u, 1u), false) ^ ~vec3<u32>(0u, 24533u, 20300u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~(~48728u), _wgslsmith_sub_u32(min(38473u, 4294967295u), 1u))), _wgslsmith_div_u32(firstTrailingBit(min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 97130u), vec4<u32>(0u, 1u, 57900u, 8139u)), _wgslsmith_clamp_u32(0u, 52981u, 0u))), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29129u, 1u, 4294967295u), vec3<u32>(35286u, 4185u, 4294967295u)), 65u), 1u)));
}

