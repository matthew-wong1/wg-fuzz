struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(0u), Struct_1(19319u), Struct_1(4294967295u), Struct_1(1u), Struct_1(5707u), Struct_1(14051u), Struct_1(23442u), Struct_1(13473u), Struct_1(0u), Struct_1(4947u), Struct_1(4294967295u), Struct_1(1u));

var<private> global3: vec4<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, 31348u & global1.a), 26112u), ~global1.a), 619f, 791f);
}

