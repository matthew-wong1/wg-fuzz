struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-710f, 318f, 1086f);

var<private> global1: i32 = 2147483647i;

var<private> global2: u32 = 6939u;

var<private> global3: array<bool, 15>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    let var_1 = ~(~(~firstLeadingBit(vec4<u32>(var_0, 4294967295u, u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_div_u32(47829u, ~u_input.a), u_input.a), vec3<u32>(4294967295u, 8615u, var_0 << (var_1.x % 32u)), u_input.a);
}

