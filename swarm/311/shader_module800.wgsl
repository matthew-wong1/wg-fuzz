struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
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

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<vec2<bool>, 27>;

var<private> global3: vec4<u32>;

var<private> global4: array<i32, 22> = array<i32, 22>(-38867i, -53711i, -19549i, 2147483647i, 2953i, -80657i, -1i, 2147483647i, -38201i, 10841i, 0i, -28568i, -1i, 1i, -6580i, -29927i, -1i, 1i, 0i, 2147483647i, i32(-2147483648), 1i);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~countOneBits(108442u)));
}

