struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, true, false, true, false, true, false, true, false, false, true, false, true);

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<f32, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: u32) -> StorageBuffer {
    let var_0 = 20139u;
    let var_1 = 20678i;
    var var_2 = global1[_wgslsmith_index_u32(arg_1, 16u)];
    var_2 = global1[_wgslsmith_index_u32(var_0, 16u)];
    global2 = array<f32, 12>();
    return StorageBuffer(1041f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2[_wgslsmith_index_u32(var_0, 12u)], global2[_wgslsmith_index_u32(u_input.b, 12u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 13>();
    let var_0 = global1[_wgslsmith_index_u32(~(u_input.b >> (u_input.b % 32u)), 16u)];
    let var_1 = Struct_1(true);
    var var_2 = false;
    let x = u_input.a;
    s_output = func_1(-30198i, 1u);
}

