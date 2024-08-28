struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> f32 {
    var var_0 = true;
    return -510f;
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1506f * 398f)))) * -1046f), 1939f);
    var var_1 = var_0.wzz;
    let var_2 = any(vec3<bool>(true, false, false));
    let var_3 = Struct_3(vec4<bool>(u_input.d >= (-u_input.d | firstTrailingBit(u_input.d)), -1926f < _wgslsmith_f_op_f32(-315f + global0.x), var_2, any(!select(vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(var_2, false, var_2, true), vec4<bool>(var_2, false, var_2, false)))), -vec2<i32>(~u_input.d, ~(-66228i)), 2147483647i, _wgslsmith_add_i32(~(-(~14800i)), -11182i), var_0.yx);
    var var_4 = Struct_2(Struct_1(-var_3.b), 50885u, select(var_3.a, !vec4<bool>(false, !var_3.a.x, var_2 == false, true), var_2));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * var_3.e.x), -1781f)) - -1514f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> f32 {
    let var_0 = ~(abs(vec2<i32>(countOneBits(u_input.d), u_input.d)) | _wgslsmith_sub_vec2_i32(min(-vec2<i32>(1i, -2147483647i), vec2<i32>(1i, u_input.d) | vec2<i32>(u_input.d, -53577i)), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.d, 19335i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-3083i, u_input.d), vec2<i32>(u_input.d, -2147483647i)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(global0.x - 849f)) * 444f));
    global0 = vec3<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(460f, var_1))))))), -184f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))));
    let var_2 = Struct_1(_wgslsmith_sub_vec2_i32(var_0, -var_0));
    global0 = arg_1.xxy;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-613f, 1141f, global0.x, global0.x))))))), ~(vec4<i32>(u_input.d, max(8704i, u_input.d), u_input.d >> (u_input.b % 32u), -2147483647i) ^ vec4<i32>(-9054i >> (0u % 32u), _wgslsmith_sub_i32(1i, u_input.d), -5901i ^ u_input.d, u_input.d & u_input.d)), ~u_input.b);
}

