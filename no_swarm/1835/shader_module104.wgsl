struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1.c, global1.a.d.x, global1.c);
    var var_1 = countOneBits(1i);
    let var_2 = var_0.c.a;
    let var_3 = -471f;
    let var_4 = _wgslsmith_mod_u32(u_input.a, ~(~(~u_input.a)) >> (u_input.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-2147483647i));
}

