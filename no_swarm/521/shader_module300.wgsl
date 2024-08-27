struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(max(global0.a, -_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.a, 15836i, global0.c), vec3<i32>(global0.c, global0.a, -1i))), !global0.b, -(-global0.c >> (max(firstTrailingBit(u_input.a.x), ~43867u) % 32u)), select(vec4<bool>(true, false, !(global0.c != global0.c), true), select(select(global0.d, !global0.d, global0.d), global0.d, !select(vec4<bool>(true, global0.b.x, global0.d.x, true), vec4<bool>(false, global0.d.x, global0.e.x, global0.b.x), global0.e.x)), !any(vec3<bool>(true, true, false))), !vec3<bool>(false, all(vec2<bool>(global0.e.x, false)) & true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-299f, -1767f)), -1845f))), vec3<u32>(85542u, u_input.b.x, 5609u), global0.a);
}

