struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: f32 = -639f;

var<private> global2: array<u32, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 23>();
    global2 = array<u32, 23>();
    var var_0 = -1519f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2063f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1087f), _wgslsmith_f_op_f32(-162f + _wgslsmith_f_op_f32(f32(-1f) * -221f)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false)))))) * 1086f);
    var var_1 = 0i;
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~select(vec2<u32>(1u, global2[_wgslsmith_index_u32(1u, 23u)]), vec2<u32>(1u, 7608u), vec2<bool>(false, true))));
}

