struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_4, 19>;

var<private> global2: i32;

var<private> global3: i32;

var<private> global4: Struct_4;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-659f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-398f + -472f) * _wgslsmith_f_op_f32(trunc(-552f))) + 599f)));
    var var_1 = Struct_4(u_input.a);
    return -(15746i & var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(_wgslsmith_sub_i32(-1i, global4.a), 1i, i32(-1i) * -2147483647i, func_1());
    var var_1 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(global0.x, 8943i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(900f, -235f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(464f, -897f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(463f, -767f))), 45240i);
}

