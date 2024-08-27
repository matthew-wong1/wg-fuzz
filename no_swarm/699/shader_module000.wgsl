struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> f32 {
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    let var_0 = all(arg_1.yxx);
    global0 = array<vec2<i32>, 10>();
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = vec2<bool>(arg_2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_1.b.x)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)));
    global0 = array<vec2<i32>, 10>();
    let var_1 = -52072i;
    var_0 = !vec2<bool>(!any(vec3<bool>(false, arg_2.d, arg_1.a)), any(!select(vec3<bool>(true, arg_1.a, arg_1.d), vec3<bool>(true, true, arg_1.c), arg_2.c)));
    return -(~(~1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(664f, -209f) + _wgslsmith_f_op_f32(func_1(-374f, vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-707f - 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(395f, vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(select(-967f, -825f, false))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1046f, 369f, -539f), vec3<f32>(2153f, 1914f, -307f))))));
    var var_1 = ~vec4<i32>(u_input.a.x, -2147483647i, _wgslsmith_add_i32(u_input.d & u_input.c, 30807i) << (40376u % 32u), func_3(_wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(0u, 10u)] & u_input.a.xz, reverseBits(vec2<i32>(2147483647i, -2147483647i))), func_2(Struct_1(true, vec4<f32>(var_0.x, var_0.x, -670f, var_0.x), false, true, 2147483647i), false), func_2(func_2(Struct_1(true, vec4<f32>(var_0.x, var_0.x, -795f, var_0.x), true, true, u_input.d), false), select(false, true, false))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_vec3_f32(-var_0));
    var var_3 = vec4<bool>(true, -(-1i ^ var_1.x) == _wgslsmith_dot_vec2_i32(min(~vec2<i32>(-1i, -2147483647i), var_1.wz ^ vec2<i32>(var_1.x, -1i)), var_1.zz), true, false);
    var_1 = u_input.a;
    var_3 = vec4<bool>(all(vec2<bool>(func_2(func_2(Struct_1(var_3.x, vec4<f32>(var_2.x, 1280f, 416f, 391f), true, true, 1i), false), var_3.x).c, false)), var_3.x, !(!(!var_3.x)), all(select(select(select(var_3.ww, var_3.zx, false), select(var_3.zw, vec2<bool>(true, var_3.x), true), vec2<bool>(var_3.x, true)), vec2<bool>(any(vec2<bool>(false, var_3.x)), any(var_3.zy)), !var_3.zz)));
    let x = u_input.a;
    s_output = StorageBuffer(13290u ^ min(_wgslsmith_sub_u32(u_input.e, u_input.e), u_input.b.x), _wgslsmith_mult_vec3_u32(~u_input.b, select(u_input.b, select(vec3<u32>(u_input.b.x, u_input.e, u_input.e), vec3<u32>(u_input.b.x, 51162u, u_input.b.x), var_3.wxx), select(var_3.yyy, var_3.zzy, var_3.x)) << (max(~vec3<u32>(0u, 4294967295u, 24219u), u_input.b << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_0.x))))));
}

