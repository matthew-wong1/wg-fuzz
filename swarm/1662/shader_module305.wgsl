struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
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

var<private> global0: array<f32, 24>;

var<private> global1: vec3<i32> = vec3<i32>(29095i, -7667i, -58086i);

var<private> global2: array<vec2<i32>, 10>;

var<private> global3: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 10>();
    global3 = array<vec3<bool>, 3>();
    var var_0 = true;
    global3 = array<vec3<bool>, 3>();
    var var_1 = true;
    let var_2 = select(global1.x, -6217i, true);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, _wgslsmith_dot_vec3_u32(~select(vec3<u32>(u_input.c, 4294967295u, u_input.d), vec3<u32>(4294967295u, u_input.b, 4294967295u), false), ~vec3<u32>(4294967295u, 27125u, 28436u))), 24u)]);
}

