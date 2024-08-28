struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, false);

var<private> global1: array<vec2<u32>, 4>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = false;
    let var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) > arg_0.x);
    global1 = array<vec2<u32>, 4>();
    let var_2 = abs(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2, 0i), _wgslsmith_add_vec2_i32(-(~vec2<i32>(arg_2, 0i)), -abs(vec2<i32>(-1i, arg_1.a)))));
    let var_3 = 11431u;
    return true & any(select(select(!vec2<bool>(true, var_1), vec2<bool>(false, var_0), var_0), vec2<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)])), global0[_wgslsmith_index_u32(4294967295u, 2u)]), !(!vec2<bool>(var_0, global2.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec4<bool>) -> f32 {
    global2 = vec2<bool>(arg_2.x, global2.x);
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-254f, _wgslsmith_f_op_f32(min(920f, arg_0.x)))) - 1020f)), -175f);
    let var_1 = vec3<u32>(1u, ~(u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, 5324u, u_input.a.x))), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x) ^ _wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x), u_input.a.x));
    var var_2 = ~_wgslsmith_div_u32(33662u, _wgslsmith_div_u32(firstLeadingBit(~4294967295u), max(~var_1.x, 71451u)));
    var var_3 = Struct_4(-2147483647i | arg_1.x);
    return var_0;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: f32) -> Struct_2 {
    var var_0 = false;
    var var_1 = Struct_3(~vec2<i32>(-2147483647i, -1i | arg_1.a), Struct_2(u_input.a.x), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, arg_2, arg_0.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, arg_2, arg_0.x)))))), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(52586i, 2147483647i, arg_1.a)), vec3<i32>(arg_1.a, arg_1.a, _wgslsmith_clamp_i32(arg_1.a, -1i, arg_1.a))), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], true, false), vec4<bool>(false, global2.x, global2.x, global2.x), global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), !vec4<bool>(true, global2.x, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), select(false, false, false)), !(!vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(25369u, 2u)])), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, arg_2, arg_0.x, arg_2), vec4<f32>(arg_0.x, arg_2, -725f, 1283f), vec4<bool>(global0[_wgslsmith_index_u32(29487u, 2u)], false, false, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]))), Struct_4(arg_1.a), arg_1.a, Struct_2(24742u))))));
    var var_2 = ~(~(~var_1.b.a));
    let var_3 = var_1.b.a & _wgslsmith_div_u32(u_input.a.x, (abs(48442u) & abs(var_1.b.a)) | _wgslsmith_div_u32(var_1.b.a ^ 27402u, 31938u));
    var var_4 = Struct_4(~(~var_1.a.x));
    return Struct_2(var_1.b.a);
}

fn func_1(arg_0: bool, arg_1: f32) -> i32 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -252f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1091f, arg_1)))))), Struct_4(-11089i), arg_1);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), 1409f));
    var var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, 4366u, 4294967295u), vec4<u32>(u_input.a.x, 9942u, 18892u, 25993u)), u_input.a) | 44832u;
    global1 = array<vec2<u32>, 4>();
    var_2 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(934f, arg_1)))), Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-29248i, 3509i, abs(-2147483647i), 1i), ~vec4<i32>(15754i, 1i, -10298i, 14251i) | select(vec4<i32>(-19023i, -10286i, 12743i, 18622i), vec4<i32>(-33421i, 12081i, 2147483647i, 40512i), vec4<bool>(true, false, global2.x, arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -380f)).a;
    return -(2147483647i ^ (~1i << (u_input.a.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(global2.x, 819f) << (15158u % 32u);
    let var_1 = vec2<f32>(197f, -323f);
    global0 = array<bool, 2>();
    let var_2 = Struct_4(_wgslsmith_dot_vec2_i32(~(~max(vec2<i32>(11310i, -52903i), vec2<i32>(13752i, 203i))), vec2<i32>(1i, -12258i)));
    var var_3 = var_1;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-36563i);
}

