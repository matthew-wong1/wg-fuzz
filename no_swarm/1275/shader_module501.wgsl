struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b.wy;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(step(-575f, 2228f)), _wgslsmith_div_f32(1344f, 812f), -461f, 144f)))));
    let var_2 = !all(vec4<bool>(true, true, true, true));
    let var_3 = true && all(vec4<bool>(any(select(vec3<bool>(false, false, var_2), vec3<bool>(false, false, true), false)), !var_2, var_2, var_2 || (var_2 & var_2)));
    var var_4 = var_1.a.x;
    return Struct_1(var_1.a);
}

fn func_3() -> Struct_1 {
    global0 = -5686i;
    var var_0 = u_input.a.x;
    var_0 = ~(~24691u);
    global0 = _wgslsmith_clamp_i32(reverseBits(i32(-1i) * -u_input.b.x), i32(-1i) * -countOneBits(~u_input.b.x), u_input.b.x);
    global0 = u_input.b.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-212f, -850f, -437f, -1260f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-316f, 943f, -1882f, -378f) - vec4<f32>(725f, -1000f, -821f, -1443f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-531f, -410f, 1614f, 779f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1903f, -181f, _wgslsmith_f_op_f32(step(-902f, 584f)), _wgslsmith_f_op_f32(876f - 1000f)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = func_2();
    global0 = (49233i >> (~arg_0.x % 32u)) | u_input.b.x;
    let var_1 = u_input.b;
    global0 = u_input.b.x;
    var var_2 = var_0;
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = func_1(u_input.a, !(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_mult_i32(~(~u_input.b.x), max(u_input.b.x, 1i)), u_input.a.x, _wgslsmith_f_op_f32(min(-415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))))));
}

