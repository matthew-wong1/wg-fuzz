struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(true, vec2<u32>(4294967295u, 104619u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_sub_u32(30095u | select(global1.b.x, 30036u, true), arg_0);
    var var_1 = ~u_input.e;
    let var_2 = false;
    let var_3 = 1u;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1190f, -347f)) - _wgslsmith_f_op_f32(f32(-1f) * -748f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + -1161f))), false))) - _wgslsmith_f_op_f32(max(607f, _wgslsmith_f_op_f32(f32(-1f) * -863f))));
    return var_2;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = select(vec2<bool>(!func_3(global1.b.x), global1.a && false), select(vec2<bool>(all(vec3<bool>(true, true, true)), global1.a), !(!(!vec2<bool>(global1.a, global1.a))), !(-2147483647i > arg_1)), any(vec3<bool>(func_3(_wgslsmith_sub_u32(arg_0, 40950u)), u_input.a != _wgslsmith_sub_i32(-1i, 32567i), any(vec3<bool>(true, global1.a, true)))));
    var var_1 = arg_1;
    return Struct_1(global1.a, global1.b >> (vec2<u32>(_wgslsmith_div_u32(~arg_0, firstLeadingBit(1u)), _wgslsmith_mult_u32(global1.b.x, 0u)) % vec2<u32>(32u)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_2(0u, u_input.b.x);
    var var_1 = func_2(1u, _wgslsmith_sub_i32(u_input.b.x, u_input.a));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1671f)), _wgslsmith_f_op_f32(trunc(-1000f)), var_0.a & global1.a)) + 802f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-350f))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2)) * vec2<f32>(var_2.x, 769f))))));
    global1 = var_0;
    return func_2(4294967295u, i32(-1i) * -u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(~select(firstTrailingBit(_wgslsmith_add_u32(41752u, 0u)), _wgslsmith_clamp_u32(u_input.d, 41317u, u_input.d), false));
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(3314f + _wgslsmith_f_op_f32(f32(-1f) * -815f)), _wgslsmith_f_op_f32(f32(-1f) * -294f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 899f))))), vec2<bool>(true, func_3(1u ^ u_input.e))));
    let var_1 = ~(~vec2<u32>(~35068u, ~0u));
    global0 = global1.a;
    global1 = func_1(35715u);
    var var_2 = var_0;
    let var_3 = vec2<f32>(2399f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-148f, var_0.x)))));
    let var_4 = _wgslsmith_sub_vec2_i32(u_input.b.zx, -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), u_input.b.zw)) & u_input.b.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, var_3.x, -705f))))) * vec3<f32>(-462f, _wgslsmith_f_op_f32(1309f - var_2.x), -1278f)))), var_4.x, _wgslsmith_div_u32(~global1.b.x, var_1.x), var_4.x, vec3<i32>(i32(-1i) * -2147483647i, u_input.a, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~u_input.b.zyz, _wgslsmith_sub_vec3_i32(vec3<i32>(64883i, 1i, 1i), vec3<i32>(2147483647i, 21624i, var_4.x))), _wgslsmith_mult_i32(1i, var_4.x) << (~u_input.e % 32u))));
}

