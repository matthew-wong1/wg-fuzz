struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> vec2<i32> {
    return reverseBits(arg_1.a) & vec2<i32>(countOneBits(min(~16284i, 1i)), arg_1.a.x ^ (i32(-1i) * -arg_1.a.x));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_2) -> u32 {
    global0 = array<vec4<u32>, 20>();
    global0 = array<vec4<u32>, 20>();
    let var_0 = ~vec4<u32>(65937u, u_input.a.x, min(countOneBits(_wgslsmith_add_u32(u_input.a.x, 4294967295u)), u_input.a.x), countOneBits(_wgslsmith_sub_u32(27840u << (u_input.a.x % 32u), u_input.a.x << (u_input.a.x % 32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, arg_0, -117f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-479f, 380f, -709f) - vec3<f32>(arg_0, 464f, -105f)))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(-243f)), 1f, _wgslsmith_f_op_f32(arg_1.x * arg_0))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 369f, _wgslsmith_f_op_f32(abs(216f)))))));
    var var_2 = !vec2<bool>(any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), ((i32(-1i) * -23511i) <= arg_3.a.x) & true);
    return u_input.a.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    var var_0 = Struct_2(func_2(~u_input.a.x, Struct_2(vec2<i32>(~22081i, ~1i))));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(~arg_0.x, 20u)], 131990u, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1580f, arg_1)))), func_3(-1000f, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 800f) * vec2<f32>(-552f, arg_1)), _wgslsmith_f_op_f32(-arg_1), Struct_2(var_0.a)) > 0u)));
    global0 = array<vec4<u32>, 20>();
    global0 = array<vec4<u32>, 20>();
    let var_2 = ~var_0.a;
    return _wgslsmith_mod_u32(max(57367u, _wgslsmith_mult_u32(var_1.b, var_1.b)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = ~u_input.a.x & (_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 46913u), vec2<u32>(53723u, u_input.a.x)) & ~(~71861u));
    let var_2 = ~abs(u_input.a & u_input.a);
    var_0 = u_input.a.x;
    var_0 = ~(~85868u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(959f, 154f, -725f, -1439f)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(106f, -861f)), _wgslsmith_f_op_f32(f32(-1f) * -1338f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f)), -1531f))), abs(firstTrailingBit(func_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.x, u_input.a.x), 20u)], 612f))), ~u_input.a);
}

