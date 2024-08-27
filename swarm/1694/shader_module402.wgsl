struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 1>();
    var var_0 = global0.a;
    let var_1 = _wgslsmith_f_op_f32(global0.a + global0.a);
    var_0 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a.x << (~u_input.a.x % 32u), u_input.a.x, 4294967295u, ~_wgslsmith_mult_u32(firstTrailingBit(u_input.a.x), reverseBits(u_input.a.x))));
}

