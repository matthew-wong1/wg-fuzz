struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-522f, 1268f, -1725f, -481f, -353f, 1000f, -1593f, -317f, -366f, -592f, 1228f, 108f, 1178f, -471f, -299f, 1000f, 1215f, -456f, 795f, 261f, -1252f, 487f, -741f, 777f, -264f, 779f, 208f, -811f, 2675f, 1000f, -601f);

var<private> global1: array<vec2<bool>, 7>;

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<vec2<bool>, 7>();
    global1 = array<vec2<bool>, 7>();
    var var_1 = u_input.b.x;
    var_1 = u_input.b.x;
    global0 = array<f32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b.x) & 85700u, 1u, min(u_input.b.x, 1u), u_input.a, u_input.b.x);
}

