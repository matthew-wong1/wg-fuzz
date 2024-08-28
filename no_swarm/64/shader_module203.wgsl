struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: bool = true;

var<private> global2: array<bool, 10> = array<bool, 10>(false, false, true, false, false, true, true, false, true, false);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-26006i, -1110f);
}

