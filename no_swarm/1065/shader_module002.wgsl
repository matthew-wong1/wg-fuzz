struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec3<bool>, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: vec3<bool>) -> vec2<f32> {
    global0 = array<vec3<bool>, 28>();
    var var_0 = 1i;
    var var_1 = -689f;
    global0 = array<vec3<bool>, 28>();
    var_0 = -31118i;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> vec2<bool> {
    global0 = array<vec3<bool>, 28>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(!vec4<bool>(reverseBits(0i) >= arg_2.x, all(!vec4<bool>(false, arg_1.x, arg_1.x, true)), true, arg_1.x), 764f, select(!(!select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), arg_1.x)), vec4<bool>(true, arg_1.x, true, true), vec4<bool>(false && select(arg_1.x, true, true), arg_1.x, true, arg_1.x)), !select(vec3<bool>(true, any(global0[_wgslsmith_index_u32(1u, 28u)]), any(arg_1.xy)), !arg_1, true)));
    var var_1 = Struct_1(u_input.a & arg_0.x, select(vec2<bool>(any(vec3<bool>(true, true, true)), true), arg_1.yy, arg_1.x));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(false, true, any(vec4<bool>(var_1.b.x, true, var_1.b.x, arg_1.x)), select(false, false, false)), 178f, !select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(true, arg_1.x, false, true), vec4<bool>(true, false, true, true)), select(select(vec3<bool>(arg_1.x, var_1.b.x, arg_1.x), arg_1, false), select(arg_1, arg_1, arg_1.x), !global0[_wgslsmith_index_u32(13302u, 28u)]))).x)));
    global0 = array<vec3<bool>, 28>();
    return vec2<bool>(any(!select(!vec3<bool>(true, true, arg_1.x), vec3<bool>(false, true, true), all(vec4<bool>(var_1.b.x, arg_1.x, false, var_1.b.x)))), true);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = false;
    let var_1 = func_2(~vec4<i32>(arg_1, -2147483647i, select(-33130i, ~u_input.a, !arg_0), -(~17440i)), global0[_wgslsmith_index_u32(~9738u, 28u)], firstLeadingBit(-(~vec2<i32>(u_input.a, -2147483647i))) | firstLeadingBit(vec2<i32>(firstLeadingBit(arg_1), u_input.a)));
    let var_2 = max(select(~min(vec2<u32>(27137u, 0u), vec2<u32>(63388u, 1u)), vec2<u32>(_wgslsmith_mod_u32(1u, 4294967295u), 1u), vec2<bool>(any(vec4<bool>(true, true, var_1.x, var_1.x)), true)), vec2<u32>(abs(_wgslsmith_sub_u32(4294967295u, 49347u)), 1u)) << (vec2<u32>(1u | (_wgslsmith_dot_vec2_u32(vec2<u32>(5278u, 4294967295u), vec2<u32>(4294967295u, 33864u)) << (~82172u % 32u)), ~1u) % vec2<u32>(32u));
    global0 = array<vec3<bool>, 28>();
    global0 = array<vec3<bool>, 28>();
    return 31841u;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: f32) -> vec2<bool> {
    global0 = array<vec3<bool>, 28>();
    let var_0 = vec2<i32>(~43978i, _wgslsmith_mod_i32(-(~(-41611i)), _wgslsmith_dot_vec2_i32(arg_0.zx, vec2<i32>(-1i) * -vec2<i32>(arg_0.x, -16890i))));
    var var_1 = arg_3;
    var var_2 = Struct_4(Struct_2(!all(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), !(!arg_1.x), Struct_1(-42880i, select(!arg_1.zz, arg_1.wx, vec2<bool>(arg_1.x, false)))));
    var_2 = Struct_4(var_2.a);
    return var_2.a.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), vec2<bool>(true, true), true);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1658f + _wgslsmith_div_f32(432f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2324f + -1167f) * _wgslsmith_f_op_f32(ceil(1789f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(606f))), !(!var_0.x | true) | true));
    var var_2 = Struct_1(u_input.a, func_4(~_wgslsmith_div_vec3_i32(~vec3<i32>(17306i, u_input.a, u_input.a), -vec3<i32>(-2147483647i, 54782i, u_input.a)), vec4<bool>(all(global0[_wgslsmith_index_u32(func_1(var_0.x, -2147483647i, var_1), 28u)]), var_0.x, true, true), vec3<u32>(1u, 74565u, _wgslsmith_div_u32(countOneBits(10800u), _wgslsmith_mult_u32(1u, 4294967295u))), var_1));
    let var_3 = Struct_5(~max(-vec3<i32>(2147483647i, 2147483647i, 1i) ^ max(vec3<i32>(1i, u_input.a, var_2.a), vec3<i32>(-15885i, var_2.a, 2147483647i)), vec3<i32>(_wgslsmith_add_i32(u_input.a, 62403i), _wgslsmith_div_i32(-10888i, u_input.a), 26966i)));
    var var_4 = Struct_1(-28923i, func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.x, 16497i, var_2.a, var_3.a.x), vec4<i32>(var_3.a.x, u_input.a, -2147483647i, -30764i)), 546i), var_3.a, select(reverseBits(vec3<i32>(var_3.a.x, 13159i, var_3.a.x)), _wgslsmith_clamp_vec3_i32(var_3.a, var_3.a, vec3<i32>(var_3.a.x, var_3.a.x, u_input.a)), !vec3<bool>(true, var_2.b.x, var_2.b.x))), vec4<bool>(true, !all(global0[_wgslsmith_index_u32(51034u, 28u)]), true, false), ~vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_1, -1961f, var_2.b.x)), var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(var_0.x, false, true != all(global0[_wgslsmith_index_u32(1u, 28u)]), all(vec3<bool>(var_0.x, var_2.b.x, false))), _wgslsmith_f_op_f32(-163f + -736f), !(!select(vec4<bool>(var_4.b.x, true, var_4.b.x, true), vec4<bool>(true, false, true, var_0.x), var_2.b.x)), select(global0[_wgslsmith_index_u32(~1u, 28u)], global0[_wgslsmith_index_u32(~27668u, 28u)], select(vec3<bool>(var_2.b.x, var_4.b.x, var_4.b.x), global0[_wgslsmith_index_u32(~1u, 28u)], var_2.b.x)))).x);
}

