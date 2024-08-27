struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f + -2012f), _wgslsmith_div_f32(-469f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -358f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~(_wgslsmith_sub_vec3_u32(~u_input.a.ywx, ~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) & (u_input.a.xzx | ~vec3<u32>(u_input.a.x, 0u, u_input.a.x))), select(~_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(0u, 54368u, 7162u)), ~vec3<u32>(u_input.a.x, 26935u, 81433u)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.a.x, 58493u, 4294967295u) | vec3<u32>(u_input.a.x, u_input.a.x, 32008u)), firstLeadingBit(u_input.a.yzw)), false));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.x)), 1000f)) * _wgslsmith_f_op_f32(-var_1.x)), var_1.x);
    var var_3 = ~1u;
    var_3 = 1u;
    let var_4 = ~var_0.xz;
    let var_5 = abs(firstLeadingBit(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 11533u, 109616u, 14669u), u_input.a, u_input.a), ~_wgslsmith_add_vec4_u32(u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b, vec4<f32>(_wgslsmith_f_op_f32(min(var_1.x, -1092f)), _wgslsmith_f_op_f32(func_1()), -978f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1113f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -186f) - 1241f), var_1.x), !(!all(vec2<bool>(false, false))))), ~(~(~(~1u))));
}

