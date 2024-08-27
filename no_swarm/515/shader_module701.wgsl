struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(20952i);

var<private> global1: array<bool, 7>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1173f;
    let var_1 = Struct_1(-1i);
    var var_2 = ~vec2<u32>(u_input.d << (~_wgslsmith_mult_u32(u_input.c.x, u_input.b.x) % 32u), ~firstTrailingBit(u_input.d ^ u_input.c.x));
    var_2 = vec2<u32>(8521u, var_2.x);
    global1 = array<bool, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(912f);
}

