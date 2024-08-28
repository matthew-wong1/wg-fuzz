struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 27> = array<u32, 27>(73951u, 39681u, 39382u, 1u, 4294967295u, 1u, 0u, 18772u, 0u, 2603u, 0u, 4294967295u, 1u, 65996u, 4294967295u, 1u, 0u, 73720u, 20744u, 9149u, 4294967295u, 1u, 0u, 4294967295u, 11255u, 82427u, 4294967295u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.c;
    let var_1 = !(global1[_wgslsmith_index_u32(u_input.a.x, 27u)] == global1[_wgslsmith_index_u32(u_input.a.x, 27u)]);
    global0 = false;
    global1 = array<u32, 27>();
    let var_2 = any(!select(select(!vec4<bool>(false, var_1, true, false), select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(false, true, var_1, var_1), vec4<bool>(true, var_1, var_1, true)), false), vec4<bool>(!var_1, true, !var_1, var_1), !(!var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(0u, 20134u) & u_input.a.x, vec3<u32>(62082u, 29764u, u_input.a.x), vec3<i32>(u_input.d.x | (-2147483647i | var_0), _wgslsmith_add_i32(u_input.c, u_input.c), -(~_wgslsmith_dot_vec2_i32(u_input.d.wz, vec2<i32>(-65184i, u_input.b.x)))), ~48320u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_f_op_f32(-1000f - 168f))))));
}

