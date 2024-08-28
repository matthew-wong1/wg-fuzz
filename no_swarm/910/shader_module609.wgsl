struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17>;

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(vec4<bool>(false, false, true, false), -354f, true);

var<private> global3: Struct_2 = Struct_2(vec4<bool>(true, false, true, false), -819f, false);

var<private> global4: Struct_2 = Struct_2(vec4<bool>(true, false, true, false), 454f, false);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let var_1 = global3.c || true;
    global0 = array<vec4<u32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], _wgslsmith_add_vec4_u32(~max(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 47270u), vec4<u32>(0u, u_input.b.x, u_input.b.x, 45207u)), _wgslsmith_mod_vec4_u32(max(vec4<u32>(4294967295u, 17606u, 83253u, 1u), vec4<u32>(1u, u_input.b.x, u_input.b.x, 30444u)), global0[_wgslsmith_index_u32(~4294967295u, 17u)]))), global0[_wgslsmith_index_u32(u_input.b.x, 17u)], vec3<i32>(~(_wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.xy) << (u_input.b.x % 32u)), select(~(var_0 << (4294967295u % 32u)), 1i, global3.c), -(~global1.a)));
}

