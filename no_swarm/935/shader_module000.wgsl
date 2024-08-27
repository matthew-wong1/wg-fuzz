struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<Struct_3, 24>;

var<private> global3: vec3<f32> = vec3<f32>(-117f, -662f, 552f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(0i, -32389i), u_input.a.x, vec4<i32>(-2147483647i, i32(-1i) * -53164i, -2147483647i, countOneBits(30286i)));
}

