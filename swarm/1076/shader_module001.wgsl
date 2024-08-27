struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(1u, 1u), vec2<u32>(33447u, 0u), vec2<u32>(1u, 38359u), vec2<u32>(0u, 87042u), vec2<u32>(12205u, 4294967295u), vec2<u32>(22106u, 13941u), vec2<u32>(47u, 40567u), vec2<u32>(1u, 42555u), vec2<u32>(24885u, 1u), vec2<u32>(4294967295u, 84475u), vec2<u32>(45376u, 1u));

var<private> global1: array<Struct_1, 21>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> bool {
    let var_0 = i32(-1i) * -_wgslsmith_sub_i32(arg_0.x, 1i | _wgslsmith_mod_i32(arg_0.x, u_input.c));
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(33034u, _wgslsmith_add_u32(u_input.a, u_input.a) | ~48791u), _wgslsmith_add_u32(u_input.a >> (~u_input.a % 32u), ~u_input.a), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 0u), _wgslsmith_add_u32(13586u, u_input.a), 1u)), ~0u);
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 21u)];
    return true;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global1 = array<Struct_1, 21>();
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.a ^ u_input.a, ~u_input.a), ~_wgslsmith_mod_u32(1u, u_input.a)), 21u)];
    var var_1 = 3448u;
    global1 = array<Struct_1, 21>();
    global1 = array<Struct_1, 21>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))))) - _wgslsmith_f_op_f32(abs(1000f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> vec4<i32> {
    var var_0 = arg_0.c.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(764f, arg_2, 2200f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.wyx), vec3<f32>(428f, arg_2, 214f)), vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x + -239f), _wgslsmith_f_op_f32(arg_0.c.x * -2398f), arg_2), arg_3.x | arg_1))))));
    var_0 = -635f;
    let var_2 = arg_2;
    global1 = array<Struct_1, 21>();
    return vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(arg_0.b.yxx, arg_0.b.xzy), ~abs(_wgslsmith_mod_i32(arg_0.a >> (u_input.a % 32u), -2147483647i | u_input.b)), _wgslsmith_add_i32(min(_wgslsmith_add_i32(~u_input.c, -u_input.c), -18527i), 1664i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1i, vec4<i32>(-208i, u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -22224i) << (global0[_wgslsmith_index_u32(0u, 11u)] % vec2<u32>(32u)), -vec2<i32>(-32962i, u_input.c)), -17148i) | func_3(global1[_wgslsmith_index_u32(~(1u | u_input.a), 21u)], func_1(vec4<i32>(0i, 1i, u_input.b, -2147483647i), 744f) && true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(u_input.a, 21u)]))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(218f - -1100f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1236f)), 1455f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(0i, vec4<i32>(u_input.b, u_input.b, u_input.c, u_input.b), vec4<f32>(-274f, -207f, -1313f, 1629f)))) + _wgslsmith_f_op_f32(round(434f)))))));
    var var_1 = !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.x), -1000f)))) < var_0.c.x);
    global1 = array<Struct_1, 21>();
    var_1 = true;
    var var_2 = Struct_2(-(u_input.c ^ 6629i) >> (u_input.a % 32u), global1[_wgslsmith_index_u32(u_input.a, 21u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(~var_0.b.x, _wgslsmith_mult_i32(var_2.a, -33819i)), ~vec2<i32>(var_2.a, u_input.c)), ~var_2.b.b.yy), select(-select(vec2<i32>(var_2.b.a, u_input.b), -vec2<i32>(var_0.b.x, -2147483647i), true), vec2<i32>(var_2.a, var_2.a), ~_wgslsmith_div_i32(-33703i, var_2.a) >= max(~2147483647i, -2147483647i)), _wgslsmith_mod_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 11u)])) | ~(~0u), max(35196u, u_input.a)));
}

