struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    let var_1 = Struct_2(u_input.a.x, ~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(u_input.a.x, -34313i), u_input.c.zwy, firstLeadingBit(countOneBits(~(~u_input.b))));
}

