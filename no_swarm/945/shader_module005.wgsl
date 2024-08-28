struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    return all(vec2<bool>(true, true));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(max(108f, -665f));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    let var_1 = Struct_1(~(~1u), arg_0, _wgslsmith_dot_vec4_u32(min(countOneBits(reverseBits(vec4<u32>(4294967295u, u_input.b.x, 25088u, u_input.b.x))), vec4<u32>(30538u >> (0u % 32u), u_input.b.x, u_input.b.x >> (1u % 32u), u_input.b.x)), ~vec4<u32>(4294967295u, _wgslsmith_mult_u32(57322u, 1u), u_input.b.x, 50312u)), all(!vec4<bool>(true, false, select(false, true, true), func_2(vec3<u32>(u_input.b.x, u_input.b.x, 30103u)))), var_0 != -1470f);
    return !(!(!vec4<bool>(!var_1.e, true, var_1.e && true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(true, false, true, true)), false, u_input.b.x < reverseBits(4294967295u)), all(func_1(reverseBits(u_input.a.x))));
    var var_1 = (i32(-1i) * -u_input.a.x) | u_input.a.x;
    var var_2 = 303f;
    let var_3 = ~(~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u));
    var var_4 = 1088f;
    var var_5 = Struct_1(u_input.b.x ^ 79204u, 19388i, 0u, false, true);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

