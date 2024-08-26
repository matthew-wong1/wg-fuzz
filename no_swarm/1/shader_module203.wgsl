struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27>;

var<private> global1: Struct_2 = Struct_2(false, true, vec4<bool>(true, true, true, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_1(true);
    let var_1 = Struct_1(false);
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(~2147483647i, 2147483647i, _wgslsmith_sub_i32(u_input.e, (u_input.d << (40191u % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(36447u, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.c, u_input.a.x)) % 32u))), max(~((u_input.b ^ vec3<i32>(u_input.b.x, u_input.e, 2147483647i)) ^ -u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d & u_input.e, _wgslsmith_sub_i32(0i, -18143i), ~u_input.d), abs(vec3<i32>(0i, -2147483647i, u_input.b.x) ^ u_input.b), u_input.b)));
    var var_3 = vec3<u32>(~u_input.a.x, u_input.a.x, 4294967295u);
    let var_4 = var_1.a;
    return _wgslsmith_f_op_f32(max(122f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1522f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1421f - 951f))) + 1550f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> f32 {
    global1 = Struct_2(true, !(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(arg_0.x - 299f)) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_2(global1.a, global1.b, global1.c), Struct_2(global1.a, false, vec4<bool>(global1.c.x, global1.c.x, false, global1.c.x))))))), !global1.c);
    var var_0 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(f32(-1f) * -727f))))));
    global0 = array<vec3<u32>, 27>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x));
    let var_1 = u_input.a.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(global1.b, true, global1.c), Struct_2(true, global1.b, global1.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1131f, arg_0.x, false)) - -987f) + 858f) + _wgslsmith_f_op_f32(arg_0.x * arg_0.x)));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-149f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(164f, 218f, -2656f, -1000f) + vec4<f32>(-1618f, 1215f, -897f, -940f))), abs(~0u)))));
    return StorageBuffer(~u_input.a.yy, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

