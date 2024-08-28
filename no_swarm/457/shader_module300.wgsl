struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(0i, -11284i), vec2<i32>(2147483647i, -370i), vec2<i32>(0i, 4339i), vec2<i32>(2147483647i, 7969i), vec2<i32>(-1i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(45128i, -4411i), vec2<i32>(-1i, 8967i), vec2<i32>(-1i, 21167i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32) -> f32 {
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    return _wgslsmith_f_op_f32(f32(-1f) * -703f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.a.x)), 1f), select(28034u, 26786u, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(272f * -683f))))));
}

