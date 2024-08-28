struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
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

var<private> global0: array<Struct_3, 7>;

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = array<Struct_3, 7>();
    let var_0 = ~(~(~0u | u_input.b));
    let var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(2510f, 1482f, 1832f) - vec3<f32>(650f, 334f, 1171f)))))), vec2<bool>(any(vec4<bool>(true, true, true, true)) & false, true), select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true))), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, arg_0.a >= var_1.a, false, false), true), false));
    var var_3 = vec4<bool>(!var_2.b.x, any(var_2.c.yxy), false, var_2.c.x);
    return -499f;
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_3, 7>();
    var var_0 = vec3<f32>(-1932f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(425f * 1f))), _wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.x))));
    global1 = -2147483647i;
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1535f, var_0.x, -1118f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-741f, var_0.x, 146f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(446f, var_0.x, 1661f) - vec3<f32>(var_0.x, var_0.x, var_0.x)), vec3<f32>(var_0.x, var_0.x, var_0.x)))))));
    global1 = max(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(1i, 1i, 1i)) ^ u_input.a.x, -u_input.a.x), -23622i);
    return Struct_2(abs(-1i));
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_3, 7>();
    var var_0 = func_2();
    global0 = array<Struct_3, 7>();
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-244f, -507f, -1088f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(531f, -440f, 861f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-261f, -1668f, -2854f))))))), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec4<bool>(false, false, false, true))), vec2<bool>(true, false), vec2<bool>(all(vec4<bool>(false, true, true, true)), true)), select(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), true), false));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-reverseBits(13076i));
    let var_1 = func_1();
    var var_2 = ~_wgslsmith_div_i32(abs(u_input.a.x), var_0.a);
    var var_3 = -846f;
    var_2 = ~firstTrailingBit(abs(-2147483647i));
    var var_4 = ~(~(~(u_input.b ^ select(u_input.b, u_input.b, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

