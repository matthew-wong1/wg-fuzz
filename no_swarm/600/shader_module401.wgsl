struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
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

var<private> global0: array<i32, 4> = array<i32, 4>(19724i, 1i, 1i, i32(-2147483648));

var<private> global1: array<vec4<f32>, 24>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(56090u >= u_input.b.x);
    let var_1 = u_input.b.x;
    global1 = array<vec4<f32>, 24>();
    var var_2 = Struct_2(false);
    global0 = array<i32, 4>();
    return _wgslsmith_mult_u32(min(~9609u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b.x, 1u)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.b.yx, u_input.b.yz, vec2<u32>(var_1, 1u))))), 1u);
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    var var_0 = vec4<u32>(func_3(), 4294967295u, 49557u, u_input.b.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f), -394f))) - _wgslsmith_f_op_f32(step(-364f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -460f) * -750f)))));
    var var_2 = _wgslsmith_mod_u32(max(~1u, ~var_0.x), 1u) < reverseBits(1u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + 1f) * 414f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(min(var_1, 1090f)))), 677f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(var_1 * var_1))))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_2(true);
    global1 = array<vec4<f32>, 24>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, 6093u, u_input.b.x, 32980u)) | (u_input.b ^ vec4<u32>(1322u, 104496u, 1u, u_input.b.x)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1215f), -573f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(~(-1i), abs(-31585i)), abs(0i), _wgslsmith_mult_i32(40546i, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]) & (i32(-1i) * -1i)), reverseBits(u_input.a.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(~(~u_input.a.zww), -(u_input.a.yxx & u_input.a.xzz)), u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_1(-1i, Struct_2(false))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 548f))), 364f), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 24480u), 24u)] + vec4<f32>(1f, _wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(abs(1225f)), _wgslsmith_f_op_f32(abs(var_0)))), (global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 4u)] <= -1i) && all(vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0)), var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2(vec4<u32>(~8499u, u_input.b.x, 4294967295u, _wgslsmith_mod_u32(57637u, 35201u)) & ~vec4<u32>(21828u, 1u, u_input.b.x, u_input.b.x))));
}

