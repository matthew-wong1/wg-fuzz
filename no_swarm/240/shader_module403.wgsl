struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2108f;

var<private> global1: array<vec2<i32>, 13>;

var<private> global2: Struct_2;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = global3.c;
    global1 = array<vec2<i32>, 13>();
    global1 = array<vec2<i32>, 13>();
    return !vec2<bool>(global2.a.x, true);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<bool>) -> f32 {
    global2 = Struct_2(!vec4<bool>(any(func_3(vec2<u32>(u_input.c, u_input.c))), arg_0, true, true), u_input.e, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, min(global3.b, global2.b) | global3.c.x), select(vec2<i32>(u_input.a, global3.c.x << (u_input.b % 32u)), vec2<i32>(select(9513i, u_input.a, true), u_input.d.x), all(vec3<bool>(arg_0, false, true)))));
    let var_0 = Struct_1(~max(~(~vec2<u32>(u_input.b, 7780u)), (vec2<u32>(u_input.b, 70704u) ^ vec2<u32>(u_input.b, 0u)) & vec2<u32>(u_input.c, 1u)));
    var var_1 = Struct_2(select(vec4<bool>(0i > u_input.d.x, reverseBits(48320u) > var_0.a.x, !global3.a.x, all(vec4<bool>(true, global2.a.x, false, arg_0))), vec4<bool>(false, false || (global3.a.x || false), !func_3(vec2<u32>(u_input.c, 4294967295u)).x, global2.a.x), true), 2147483647i, -vec2<i32>(-2147483647i, firstTrailingBit(min(2147483647i, -5170i))));
    var var_2 = 8972i;
    let var_3 = vec4<i32>(-(_wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, global3.c.x), -10848i) >> (firstTrailingBit(var_0.a.x) % 32u)), global2.b, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d), var_1.c.x);
    return 1000f;
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -182f)));
    return _wgslsmith_f_op_f32(func_2(global2.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(274f, 303f, 616f), vec3<f32>(-420f, -617f, -598f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(796f, -938f, -628f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 471f, 588f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-700f, 1205f, -511f), vec3<f32>(1244f, -831f, 2414f), global2.a.x))))), global2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -878f) + -1222f)), _wgslsmith_f_op_f32(func_1(abs(min(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 9188u, 21010u)))))));
    var var_1 = -1i;
    var var_2 = ~4294967295u;
    var var_3 = Struct_3(Struct_1(abs(min(vec2<u32>(98359u, u_input.b) & vec2<u32>(u_input.c, 1u), vec2<u32>(105885u, 0u)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(step(592f, var_0.x)), 1827f, _wgslsmith_f_op_f32(f32(-1f) * -1617f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 215f) * vec4<f32>(var_0.x, -643f, var_0.x, 743f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-634f, -666f, 1102f, var_0.x)))), true)), Struct_1(vec2<u32>(4294967295u, 1663u | _wgslsmith_mult_u32(u_input.b, u_input.c))), Struct_2(global2.a, global3.b, abs(abs(u_input.d.yz))));
    global0 = var_0.x;
    let var_4 = !(!(!func_3(var_3.c.a)));
    global1 = array<vec2<i32>, 13>();
    var_3 = Struct_3(Struct_1(~vec2<u32>(_wgslsmith_add_u32(u_input.b, var_3.a.a.x), _wgslsmith_dot_vec2_u32(var_3.c.a, var_3.a.a))), var_3.b, var_3.c, Struct_2(vec4<bool>(select(global3.a.x && true, !var_4.x, true), !var_4.x, global2.a.x, false), ~(-1i), var_3.d.c << (_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(22310u, 1u), vec2<u32>(4294967295u, u_input.b)), ~var_3.a.a) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(global3.c.x ^ 304i, 64927i, 73161i) >> (u_input.b % 32u), ~(30959u << (firstLeadingBit(u_input.b) % 32u)) << (_wgslsmith_mult_u32(_wgslsmith_add_u32(~var_3.c.a.x, 9378u), abs(~var_3.a.a.x)) % 32u));
}

