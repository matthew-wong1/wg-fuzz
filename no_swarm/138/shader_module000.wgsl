struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 18>;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(false, -346f), Struct_1(true, 490f));

var<private> global4: array<vec4<i32>, 31>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_2 {
    global2 = array<Struct_2, 18>();
    global1 = -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -35273i, global0[_wgslsmith_index_u32(u_input.b, 15u)], -2147483647i), global4[_wgslsmith_index_u32(0u, 31u)])), -(~vec4<i32>(arg_0.x, u_input.a, global0[_wgslsmith_index_u32(1u, 15u)], -1i))), 9137i);
    global2 = array<Struct_2, 18>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, 1000f), vec2<f32>(-401f, 106f), true)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, arg_1)))))));
    var var_1 = 1u;
    return Struct_2(Struct_1(false, var_0.x));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.b), arg_0.a.b, arg_0.a.b))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0.x)), 620f)), var_0.x, _wgslsmith_div_f32(-336f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -689f))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-186f, var_0.x) + arg_0.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 31>();
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(811f, -1000f))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1434f)))))));
    var var_2 = func_1(-_wgslsmith_add_vec3_i32(abs(vec3<i32>(global0[_wgslsmith_index_u32(0u, 15u)], 14431i, u_input.d.x)), min(-vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 13607i, global0[_wgslsmith_index_u32(u_input.b, 15u)]), ~vec3<i32>(u_input.d.x, -2147483647i, -14259i))), -450f);
    let var_3 = 14366i;
    let var_4 = -7477i;
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b - var_2.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -672f), 1181f, 219f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-113f, var_2.a.b)), 412f, 840f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.b * -2370f) + _wgslsmith_f_op_f32(abs(-248f)))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -907f), _wgslsmith_f_op_f32(var_2.a.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(var_2.a.a, 1000f)), u_input.c.x, vec4<bool>(false, false, false, true))))), 1000f, 736f));
    var var_6 = func_1(~(~firstTrailingBit(vec3<i32>(u_input.a, var_3, -2147483647i) >> (u_input.c % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-var_5.x)).a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_mod_vec2_i32(u_input.d, -(~abs(vec2<i32>(u_input.d.x, var_3)))));
}

