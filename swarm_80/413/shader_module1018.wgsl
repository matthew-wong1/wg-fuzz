struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 26>;

var<private> global2: array<Struct_1, 30>;

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(72288u, 0u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-591f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(global0.x))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1361f, 3183f)) * global0.x), global0.x)));
}

