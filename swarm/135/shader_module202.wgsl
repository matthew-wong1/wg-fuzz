struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    global0 = array<vec3<i32>, 13>();
    let var_0 = Struct_1(vec3<bool>(any(vec2<bool>(any(vec2<bool>(true, true)), true)), true, true));
    var var_1 = _wgslsmith_add_i32(0i, _wgslsmith_div_i32(firstTrailingBit(29125i), -1i));
    let var_2 = Struct_1(var_0.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f)), _wgslsmith_f_op_f32(ceil(-1000f)))));
    return Struct_3(Struct_1(!(!select(var_0.a, vec3<bool>(false, var_2.a.x, false), var_0.a))), var_0.a.x, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -4126i, 0i), -(~vec2<i32>(0i, -42296i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(523f, var_3.x, 2279f))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, var_3.x, var_3.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, 772f))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    return func_2(countOneBits(u_input.a));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = arg_2.a.a.xz;
    let var_1 = 1u;
    global0 = array<vec3<i32>, 13>();
    var var_2 = select(vec4<bool>(true, !all(!arg_0.a.a.yy), !(!arg_2.b || (22289u <= u_input.a.x)), false), vec4<bool>(arg_2.b, true || arg_2.b, true, arg_0.b), true);
    global0 = array<vec3<i32>, 13>();
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(func_1(Struct_1(vec3<bool>(false, false, false)), false), u_input.a << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), Struct_3(Struct_1(vec3<bool>(true, false, false)), false, -21294i, vec3<f32>(423f, -654f, -1000f))))))));
    global0 = array<vec3<i32>, 13>();
    var var_1 = Struct_1(vec3<bool>(false, u_input.d.x < (_wgslsmith_div_i32(u_input.b, 34299i) >> (u_input.a.x % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u)) < (reverseBits(1u) & u_input.a.x)));
    let var_2 = u_input.a.x;
    let var_3 = func_1(func_1(func_1(func_1(func_2(u_input.a).a, var_1.a.x).a, !any(vec2<bool>(true, var_1.a.x))).a, any(vec4<bool>(var_1.a.x, func_2(u_input.a).b, !var_1.a.x, false))).a, !(!(-289f >= _wgslsmith_f_op_f32(-1801f - var_0.x)))).a;
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -670f), -170f);
    var var_4 = any(!vec4<bool>(false, false, true, !(!var_3.a.x)));
    global0 = array<vec3<i32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(func_2(min(vec2<u32>(var_2, 30809u), vec2<u32>(56571u, 17320u))).d.x * var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, !var_3.a.x))))));
}

