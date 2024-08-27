struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: array<Struct_2, 10>;

var<private> global2: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.yyy, vec3<u32>(select(~global0[_wgslsmith_index_u32(~17438u, 9u)], min(u_input.b.x, 4294967295u), !all(vec3<bool>(false, false, false))), abs(_wgslsmith_sub_u32(max(global2.b.x, 35856u), _wgslsmith_sub_u32(u_input.b.x, 64748u))), 2091u));
}

