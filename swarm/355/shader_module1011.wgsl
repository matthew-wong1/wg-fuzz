struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(-1i, 55345i, -1i, -1i), vec4<i32>(-11923i, 0i, 2147483647i, 0i));

var<private> global2: array<vec2<f32>, 13>;

var<private> global3: array<vec3<i32>, 13>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    global2 = array<vec2<f32>, 13>();
    global3 = array<vec3<i32>, 13>();
    global1 = array<vec4<i32>, 2>();
    let var_0 = ~_wgslsmith_dot_vec2_u32(countOneBits(arg_1), ~vec2<u32>(100070u, 58391u)) ^ u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -679f)), -193f, arg_0))));
    return -205f;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> f32 {
    global2 = array<vec2<f32>, 13>();
    global0 = arg_0.d;
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(809f, _wgslsmith_div_f32(441f, 481f)) + -1660f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(987f - -722f) + _wgslsmith_f_op_f32(min(-197f, 1781f))) * 559f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-399f + _wgslsmith_f_op_f32(round(1f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(-1211f, -540f), vec2<u32>(arg_0.d, 5284u) | vec2<u32>(3451u, u_input.b)))));
    global2 = array<vec2<f32>, 13>();
    let var_1 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -408f);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<f32>) -> bool {
    return true;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = global1[_wgslsmith_index_u32(5998u, 2u)];
    var var_1 = all(vec2<bool>(arg_2, arg_3.a));
    global1 = array<vec4<i32>, 2>();
    global1 = array<vec4<i32>, 2>();
    let var_2 = Struct_2(arg_3, abs(var_0.x), false, countOneBits(1u));
    return ~vec2<i32>(firstTrailingBit(-(-38756i >> (1u % 32u))), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 2>();
    let var_0 = Struct_2(Struct_1(!any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))), -_wgslsmith_div_i32(-9949i, 1i), !all(vec3<bool>(true, true, true)), ~1u);
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_0, vec3<i32>(-5520i, -55725i, var_0.b))) * _wgslsmith_f_op_f32(func_1(var_0, global3[_wgslsmith_index_u32(var_0.d, 13u)]))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-871f, -687f))))));
    var var_3 = vec3<f32>(1327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1418f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(242f - _wgslsmith_f_op_f32(sign(-1820f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(2147483647i, var_1.b), 0i), ~(vec2<i32>(1i, 1i) >> (u_input.a.wx % vec2<u32>(32u)))), func_4(var_3.x, _wgslsmith_dot_vec3_u32(u_input.a.zzx, vec3<u32>(1u, u_input.a.x, u_input.a.x)), select(any(vec2<bool>(var_0.a.a, false)), func_3(vec3<f32>(610f, 1094f, -739f), 44227u, vec3<i32>(-2147483647i, 1i, 15781i), vec3<f32>(var_3.x, var_3.x, var_3.x)), all(vec3<bool>(false, true, false))), Struct_1(var_1.c))));
}

