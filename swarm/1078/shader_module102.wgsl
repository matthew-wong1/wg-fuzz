struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 13> = array<u32, 13>(19489u, 0u, 14252u, 34218u, 0u, 18897u, 4294967295u, 52435u, 1u, 70382u, 4294967295u, 45404u, 46016u);

var<private> global2: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(vec3<u32>(firstTrailingBit(4294967295u), global1[_wgslsmith_index_u32(54957u, 13u)] >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 64389u), vec2<u32>(42755u, 4294967295u)) % 32u), 19342u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(global0.a)));
    let var_2 = 2147483647i;
    global2 = 45003u;
    let x = u_input.a;
    s_output = StorageBuffer(673f, var_0.zz, vec2<i32>(reverseBits(var_2 | u_input.a), var_2));
}

