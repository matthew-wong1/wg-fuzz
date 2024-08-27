struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1106f * 317f), _wgslsmith_f_op_f32(abs(-677f)), true)))))));
    global0 = -1204f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_div_u32(u_input.e, u_input.a.x), 1u, u_input.a.x), -(~_wgslsmith_dot_vec2_i32(u_input.d.yz, vec2<i32>(-2147483647i, -50756i)) >> (1u % 32u)), u_input.c, vec3<u32>(~1u, ~(~4294967295u), u_input.e) | vec3<u32>(56838u, u_input.e << (reverseBits(4294967295u) % 32u), 30943u), _wgslsmith_dot_vec2_u32(vec2<u32>(~76831u, 0u), select(max(u_input.a, vec2<u32>(u_input.a.x, 0u)), ~vec2<u32>(19199u, 1u), vec2<bool>(true, false)) | u_input.a));
}

