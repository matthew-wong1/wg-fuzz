struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
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

var<private> global0: array<bool, 24>;

var<private> global1: array<Struct_3, 7>;

var<private> global2: array<u32, 29>;

var<private> global3: Struct_3 = Struct_3(Struct_1(vec3<u32>(37659u, 1007u, 15074u), false, 154560u), true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(reverseBits(1u), 29u)];
    global0 = array<bool, 24>();
    var var_1 = -165f;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

