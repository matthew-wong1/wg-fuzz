struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: bool,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
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

var<private> global0: bool = false;

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<vec4<f32>, 9>;

var<private> global3: f32 = -312f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> StorageBuffer {
    global2 = array<vec4<f32>, 9>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-871f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-744f + 101f)))) - _wgslsmith_f_op_f32(566f - 208f)) * -737f);
    global1 = array<Struct_2, 30>();
    var var_0 = true;
    let var_1 = global1[_wgslsmith_index_u32(~u_input.a, 30u)];
    return StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f)), _wgslsmith_f_op_f32(-585f - _wgslsmith_f_op_f32(round(161f))), !(any(vec4<bool>(true, false, true, true)) | true))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(-1f);
    let x = u_input.a;
    s_output = func_1();
}

