struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(4588i, Struct_1(false)), Struct_2(2147483647i, Struct_1(false)), Struct_2(2147483647i, Struct_1(true)), Struct_2(-1i, Struct_1(false)), Struct_2(0i, Struct_1(true)), Struct_2(44501i, Struct_1(true)), Struct_2(i32(-2147483648), Struct_1(false)), Struct_2(0i, Struct_1(true)), Struct_2(1i, Struct_1(true)), Struct_2(i32(-2147483648), Struct_1(false)), Struct_2(-40542i, Struct_1(false)), Struct_2(-17349i, Struct_1(true)), Struct_2(4266i, Struct_1(false)));

var<private> global1: array<i32, 14>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1046f, 447f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-643f, 151f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -927f), 1f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-120f, -467f) * vec2<f32>(-135f, 409f)), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-979f, -130f)))), vec2<bool>(true, true)))));
    global1 = array<i32, 14>();
    global2 = array<Struct_1, 11>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(857f, 654f, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-283f, var_0.x), var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-956f, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -539f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(var_0.x + -806f))), _wgslsmith_f_op_f32(f32(-1f) * -291f)) * -234f));
    global1 = array<i32, 14>();
    let var_2 = u_input.b;
    global1 = array<i32, 14>();
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 634f);
}

