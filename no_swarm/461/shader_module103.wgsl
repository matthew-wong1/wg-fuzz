struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 23347i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    var var_0 = vec2<i32>(-u_input.b | _wgslsmith_add_i32(u_input.b, ~u_input.b), u_input.b);
    let var_1 = !select(!vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(true, -u_input.b >= 26856i), false);
    let var_2 = var_0.x;
    var var_3 = Struct_1(vec2<u32>(u_input.a, ~4294967295u), false | any(select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), true), false)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)));
    return ~firstLeadingBit(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(4294967295u, 4294967295u, 53237u)), vec3<u32>(u_input.a, u_input.a, 69662u))) | ~vec3<u32>(~1u, _wgslsmith_div_u32(select(58361u, u_input.a, true), u_input.a), var_3.a.x);
}

fn func_2(arg_0: i32) -> StorageBuffer {
    global0 = ~(~arg_0 ^ -u_input.b);
    global0 = -_wgslsmith_div_i32(1i, _wgslsmith_sub_i32(firstTrailingBit(-43543i >> (u_input.a % 32u)), min(-arg_0, -2147483647i)));
    return StorageBuffer(2192f, _wgslsmith_add_vec3_u32(~(~select(vec3<u32>(u_input.a, 18466u, u_input.a), vec3<u32>(u_input.a, 31497u, 1u), vec3<bool>(false, false, true))), _wgslsmith_mod_vec3_u32(min(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 1653u, u_input.a)), vec3<u32>(1u, 52307u, u_input.a)) | func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(579f, -1345f, -1000f) - vec3<f32>(1374f, -1686f, 497f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(1f, 1f))))));
}

fn func_1() -> StorageBuffer {
    let var_0 = -reverseBits(firstLeadingBit(_wgslsmith_div_i32(u_input.b, 7691i)) & -u_input.b);
    global0 = -32225i;
    global0 = _wgslsmith_mod_i32(min(var_0, 0i), ~23907i);
    var var_1 = -var_0;
    var var_2 = ~_wgslsmith_div_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(38958u, u_input.a) | vec2<u32>(1u, 15409u), vec2<bool>(true, true)) ^ ~_wgslsmith_mod_vec2_u32(vec2<u32>(6704u, u_input.a), vec2<u32>(33252u, u_input.a)), ~(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)) & ~vec2<u32>(26748u, u_input.a)));
    return func_2(abs(firstLeadingBit(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(~firstTrailingBit(countOneBits(vec2<u32>(u_input.a, u_input.a))), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(16357u, 4294967295u, u_input.a)), ~0u), vec2<bool>(true, true))), true);
    let x = u_input.a;
    s_output = func_1();
}

