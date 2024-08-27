struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> vec2<f32> {
    global0 = array<f32, 2>();
    let var_0 = vec3<i32>(~(-u_input.d), u_input.d | -(~max(u_input.c.x, -27729i)), 0i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(50204u ^ _wgslsmith_mod_u32(39877u, u_input.b.x), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1924f)))), global0[_wgslsmith_index_u32(firstLeadingBit(0u ^ u_input.a) << (_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(18954u, 29987u, 68940u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, 48890u, u_input.a))) % 32u), 2u)]));
    var var_2 = ~vec3<u32>(_wgslsmith_mod_u32(~(u_input.b.x & 1u), ~(~u_input.a)), ~_wgslsmith_clamp_u32(4294967295u, u_input.a, ~10928u), 17896u);
    var_2 = countOneBits(vec3<u32>(1u, ~0u >> ((_wgslsmith_div_u32(1u, var_2.x) >> (4294967295u % 32u)) % 32u), 1u));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-146f, 670f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(710f, -733f))))))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x, ~(~(~min(0u, u_input.b.x)))), 2u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, ~51787u), 2u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0[_wgslsmith_index_u32(8837u, 2u)]))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1546f, -1767f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(18958u, 2u)], 1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)])))), vec2<f32>(-160f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(35333u, 2u)]))))));
    var var_2 = Struct_1(all(select(select(select(vec4<bool>(false, true, false, arg_2.a), vec4<bool>(true, true, arg_3.a, true), vec4<bool>(false, false, false, arg_3.a)), select(vec4<bool>(false, arg_0, arg_1.x, arg_2.a), vec4<bool>(true, arg_3.a, true, arg_3.a), arg_3.a), select(vec4<bool>(false, arg_2.a, arg_1.x, false), vec4<bool>(arg_0, arg_1.x, false, arg_1.x), vec4<bool>(false, true, true, true))), !select(vec4<bool>(arg_2.a, arg_3.a, arg_1.x, true), vec4<bool>(true, arg_3.a, arg_1.x, true), vec4<bool>(arg_2.a, true, arg_0, true)), _wgslsmith_f_op_f32(var_1.x * -126f) < _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 2u)] * global0[_wgslsmith_index_u32(0u, 2u)]))));
    global0 = array<f32, 2>();
    var_0 = _wgslsmith_f_op_f32(sign(var_1.x));
    return select(!any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(var_2.a, arg_2.a), true), arg_1.yy)), arg_3.a, all(select(select(select(vec4<bool>(arg_2.a, false, var_2.a, true), vec4<bool>(true, true, var_2.a, arg_2.a), vec4<bool>(false, false, false, arg_3.a)), select(vec4<bool>(true, true, false, arg_2.a), vec4<bool>(arg_1.x, var_2.a, true, arg_1.x), vec4<bool>(false, false, false, false)), true), vec4<bool>(select(false, arg_0, arg_2.a), true | arg_1.x, !arg_0, !var_2.a), !(!vec4<bool>(arg_0, var_2.a, arg_0, false)))));
}

fn func_2() -> Struct_1 {
    var var_0 = -2147483647i;
    var_0 = u_input.e;
    var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.e), 1i), vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-30343i, -2147483647i, -1i), -vec3<i32>(1i, u_input.e, u_input.e)), 0i)), 1i);
    var_0 = u_input.c.x;
    let var_1 = Struct_1(func_3(true, vec3<bool>(true, true, true), Struct_1(select(true, false, any(vec4<bool>(true, true, true, true)))), Struct_1(any(vec3<bool>(false, false, false)))));
    return var_1;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    global0 = array<f32, 2>();
    var var_0 = Struct_1(!any(select(select(vec4<bool>(true, arg_1.a, true, arg_1.a), vec4<bool>(arg_1.a, false, true, arg_1.a), true), select(vec4<bool>(arg_1.a, true, arg_1.a, true), vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), true), !vec4<bool>(true, arg_1.a, arg_1.a, false))));
    global0 = array<f32, 2>();
    let var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) + 1237f));
    let var_2 = true;
    return -45050i >> (0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-15738i, u_input.d, 0i);
    global0 = array<f32, 2>();
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1()))), _wgslsmith_f_op_vec2_f32(func_1())));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 0u), 2u)];
    let var_3 = vec4<i32>(var_0.x, _wgslsmith_mult_i32(var_0.x, -(var_0.x << (u_input.b.x % 32u))), u_input.d, ~abs(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -231f, -1000f, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec4<f32>(var_1.x, -750f, 1035f, -330f)), func_2(), ~vec4<i32>(u_input.d, var_0.x, u_input.c.x, 25551i))));
    var var_4 = vec2<bool>(true, select(true, ~_wgslsmith_mod_u32(1u, 59385u) != (~u_input.a | ~u_input.b.x), _wgslsmith_f_op_f32(-1434f - _wgslsmith_f_op_f32(var_1.x - global0[_wgslsmith_index_u32(0u, 2u)])) >= _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)], 1111f))));
    let var_5 = Struct_1(min(max(u_input.a, 1u), ~6434u) >= ~u_input.a);
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(10992u, ~1u & _wgslsmith_mod_u32(u_input.a & u_input.b.x, _wgslsmith_mod_u32(1u, 42063u)), 19478u), vec2<i32>(1i, -_wgslsmith_dot_vec4_i32(var_3, vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x)) << (~(~4106u) % 32u)), ~(u_input.a & _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), firstLeadingBit(4294967295u), ~u_input.b.x)), _wgslsmith_add_u32(u_input.a | ((u_input.b.x ^ u_input.a) >> ((u_input.a >> (1u % 32u)) % 32u)), firstTrailingBit(min(u_input.b.x, u_input.b.x)) << (abs(u_input.a) % 32u)));
}

