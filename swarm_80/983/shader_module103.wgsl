struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_0 = firstTrailingBit(4294967295u);
    var_0 = 1u;
    global0 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~max(u_input.a.ywy, u_input.a.zxy), ~4294967295u, -2147483647i, 1208f);
}

