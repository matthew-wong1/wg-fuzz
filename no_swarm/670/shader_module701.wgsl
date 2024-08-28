struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<vec4<i32>, 12>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 15>();
    global0 = ~countOneBits(_wgslsmith_add_vec3_u32(abs(vec3<u32>(4294967295u, 4294967295u, global0.x)), vec3<u32>(global0.x, global0.x, u_input.d) << (vec3<u32>(u_input.c, global0.x, 4294967295u) % vec3<u32>(32u))) & _wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 1u, 4754u), ~vec3<u32>(global0.x, global0.x, 0u)));
    global2 = array<vec4<i32>, 12>();
    global2 = array<vec4<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(202f)), -193f) + -346f)), max(vec3<i32>(-1i) * -(vec3<i32>(u_input.a.x, u_input.a.x, u_input.b) & vec3<i32>(-1i, u_input.b, 13464i)), vec3<i32>(u_input.a.x << (_wgslsmith_mod_u32(73351u, u_input.c) % 32u), -u_input.a.x, -u_input.a.x)));
}

