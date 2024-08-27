struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(0u);
    global0 = array<Struct_1, 20>();
    let var_1 = var_0;
    let var_2 = global0[_wgslsmith_index_u32(abs(var_0.a), 20u)];
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_0.a));
}

