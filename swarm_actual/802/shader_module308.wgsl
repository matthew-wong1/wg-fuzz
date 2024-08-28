struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: i32 = -7935i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    global1 = 1i;
    let var_0 = !(!all(vec4<bool>(true, false, any(vec4<bool>(true, true, true, true)), true)));
    global1 = 15526i;
    global1 = u_input.d.x;
    global0 = array<vec2<bool>, 11>();
    return Struct_1(_wgslsmith_f_op_f32(trunc(-1713f)), u_input.a, ~vec2<i32>(21643i, -_wgslsmith_sub_i32(u_input.d.x, -1i)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_2(func_1(), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(907f, -239f, _wgslsmith_f_op_f32(-609f + 980f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1398f, 1467f)) * -206f), _wgslsmith_f_op_f32(f32(-1f) * -754f))), vec4<bool>(true == all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true)), true, true, true));
    var var_1 = Struct_3(Struct_2(var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 671f, -470f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, -370f, var_0.a.a))), _wgslsmith_f_op_f32(1004f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-696f - -875f) + -2461f)), var_0.d));
    let var_2 = var_1.a.d.zxx;
    var var_3 = Struct_3(Struct_2(func_1(), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.b))), var_1.a.a.a, select(!var_1.a.d, vec4<bool>(false, var_1.a.d.x, var_1.a.d.x, var_1.a.a.a != var_1.a.b.x), !(var_0.c > 512f))));
    var var_4 = var_3.a.a;
    return _wgslsmith_f_op_f32(var_1.a.c * _wgslsmith_f_op_f32(-var_1.a.b.x));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a, arg_1.a, arg_1.a))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(func_3(40154u)), 839f) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(138f, -183f, -1963f) - vec3<f32>(arg_1.a, arg_1.a, -1036f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -1000f, -681f) + vec3<f32>(arg_1.a, arg_1.a, arg_1.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, 563f, arg_1.a) * vec3<f32>(1268f, arg_1.a, arg_1.a))) + vec3<f32>(_wgslsmith_f_op_f32(min(1087f, arg_1.a)), arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -793f)))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(u_input.b.x, ~3732i), ~vec3<i32>(-2147483647i, 1i, firstTrailingBit(-1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(637f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)))), vec3<u32>(~func_2(true, func_1()), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~u_input.e, u_input.e, ~6490u), vec4<u32>(u_input.a.x, u_input.a.x, abs(u_input.e), u_input.e))));
}

