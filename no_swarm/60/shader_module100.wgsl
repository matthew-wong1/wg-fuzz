struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(select(!vec4<bool>(true, global0.b, false, false), global0.a, !global0.a), select(!vec4<bool>(true, global0.b, global0.a.x, true), global0.a, global0.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2896f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2197f - 1339f))), !global0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(trunc(-330f)))), 1002f), _wgslsmith_mult_i32(-2147483647i | u_input.a.x, ~(-1i)));
}

