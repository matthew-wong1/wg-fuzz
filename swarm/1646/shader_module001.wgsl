struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
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

var<private> global0: array<bool, 12> = array<bool, 12>(false, true, false, false, true, false, false, false, false, true, false, true);

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 12>();
    var var_0 = Struct_1(-506f, !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true)));
    var_0 = Struct_1(var_0.a, var_0.b);
    global0 = array<bool, 12>();
    global1 = array<Struct_1, 28>();
    global1 = array<Struct_1, 28>();
    global0 = array<bool, 12>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(585f);
}

