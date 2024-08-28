struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(false, vec3<i32>(21076i, i32(-2147483648), 2147483647i), 4294967295u, vec3<u32>(31632u, 0u, 53295u));

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(1i, i32(-1i) * -74541i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2227f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.x - 1079f))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1212f)))))), 31143u);
}

