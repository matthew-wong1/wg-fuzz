struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    global0 = false;
    var var_0 = vec2<u32>(u_input.c ^ ~min(1u, abs(103408u)), 0u);
    global0 = all(!(!vec2<bool>(true, 42114i > u_input.b.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(555f, -1000f, 1027f, 1000f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1868f, 115f, 1000f, -1883f), vec4<f32>(-495f, 528f, 1896f, -1450f))))))), vec3<bool>(!any(!global1[_wgslsmith_index_u32(0u, 20u)]), all(vec2<bool>(true, true)), !any(vec3<bool>(false, true, true))), !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), false)), var_0.x, -957f);
    global0 = var_1.c.x;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 900f, -1117f, -1383f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1036f, var_1.e, 570f, -319f))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(var_1.e, var_1.e, -1000f, 508f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(374f, var_1.e, 466f, 1135f))) - _wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(1931f, var_1.e, -176f, var_1.a.x)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * vec4<f32>(688f, -426f, 1613f, -1000f)))), select(select(global1[_wgslsmith_index_u32(~12300u << ((u_input.c >> (0u % 32u)) % 32u), 20u)], vec3<bool>(true, true, true), true), !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~34111u, countOneBits(u_input.c)), 20u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_0.x, 4294967295u), min(vec3<u32>(arg_0.x, 1u, 16554u), vec3<u32>(89097u, 29258u, arg_0.x)) ^ abs(vec3<u32>(arg_0.x, 1u, 3263u))), 20u)]), select(vec4<bool>(u_input.a > u_input.a, false, true, false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), any(global1[_wgslsmith_index_u32(u_input.c, 20u)])), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), true), vec4<bool>(!select(false, true, false), u_input.c != 0u, true, !any(vec3<bool>(true, true, true)))), arg_0.x, 629f);
    global0 = !(~_wgslsmith_clamp_u32(19186u, min(80651u, var_0.d), ~u_input.c) == _wgslsmith_div_u32(~(~arg_0.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.x, 4294967295u), vec3<u32>(arg_0.x, u_input.c, 0u))));
    var var_1 = ~_wgslsmith_sub_vec2_i32(arg_1 >> (vec2<u32>(5898u, arg_0.x) % vec2<u32>(32u)), ~arg_1 << (arg_0.xw % vec2<u32>(32u))) << (vec2<u32>(arg_0.x, ~(firstTrailingBit(var_0.d) << (0u % 32u))) % vec2<u32>(32u));
    let var_2 = abs(_wgslsmith_clamp_i32(var_1.x, u_input.b.x, -1i));
    let var_3 = ~_wgslsmith_sub_u32(~(~(~arg_0.x)), u_input.c);
    return countOneBits(u_input.c);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(countOneBits(select(~(vec4<u32>(39479u, u_input.c, u_input.c, u_input.c) << (vec4<u32>(20026u, 17913u, 41551u, 0u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), vec4<u32>(2585u, 19042u, u_input.c, 1u)), max(vec4<u32>(71924u, 2510u, u_input.c, 4294967295u), vec4<u32>(u_input.c, u_input.c, 0u, 1u))), any(select(global1[_wgslsmith_index_u32(u_input.c, 20u)], vec3<bool>(true, true, true), true)))), -vec2<i32>(_wgslsmith_mod_i32(-1i, u_input.a << (u_input.c % 32u)), u_input.a));
    global0 = any(vec4<bool>(all(vec3<bool>(true, true, true)), true, any(vec3<bool>(true, all(vec2<bool>(false, true)), true)), true));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-331f * _wgslsmith_f_op_f32(689f + 280f))), _wgslsmith_f_op_f32(-1f), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-841f))));
    global0 = all(vec4<bool>(!any(select(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(1u, 20u)], vec3<bool>(true, false, false))), false, all(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(true, true, true))), all(vec4<bool>(false, false, false, true)) && true));
    global1 = array<vec3<bool>, 20>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1191f, -725f, var_1.x, var_1.x))) - _wgslsmith_f_op_vec4_f32(func_3())), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-445f, -2003f, 777f, var_1.x)), vec4<bool>(true, true, true, true))))), select(!select(global1[_wgslsmith_index_u32(~u_input.c, 20u)], select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), true), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, select(11884u == u_input.c, all(vec3<bool>(false, false, true)), true)), vec3<bool>(!(u_input.c <= u_input.c), 16368u < _wgslsmith_add_u32(1u, u_input.c), any(!global1[_wgslsmith_index_u32(u_input.c, 20u)]))), !select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(global1[_wgslsmith_index_u32(u_input.c, 20u)])), vec4<bool>(var_1.x >= 1157f, true, true, u_input.c < u_input.c)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(9165u, u_input.c)), vec2<u32>(~0u, select(12007u, u_input.c, true))), countOneBits(countOneBits(u_input.c))), _wgslsmith_f_op_f32(var_1.x * 1f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(~4294967295u), 20u)];
    global1 = array<vec3<bool>, 20>();
    var_0 = select(vec3<bool>(~_wgslsmith_sub_u32(u_input.c, 1u) == ~u_input.c, all(select(!vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, var_0.x, true, true), !vec4<bool>(var_0.x, true, var_0.x, true))), select(any(!vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x, all(select(vec2<bool>(false, var_0.x), vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x))))), global1[_wgslsmith_index_u32(u_input.c, 20u)], false & var_0.x);
    var var_1 = func_1();
    global0 = all(!var_1.c.xx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(22049i, u_input.b.x, u_input.b.x, u_input.a), vec4<i32>(16936i, u_input.b.x, 1i, -8975i)), vec4<i32>(-1i) * -vec4<i32>(-55036i, 2147483647i, -1i, 1i)) >> ((vec4<u32>(_wgslsmith_mod_u32(75461u, 1u), u_input.c, _wgslsmith_mod_u32(u_input.c, 53503u), select(var_1.d, u_input.c, var_1.b.x)) ^ select(vec4<u32>(4294967295u, u_input.c, var_1.d, 25399u), ~vec4<u32>(var_1.d, 1u, 26816u, 55884u), var_1.b.x)) % vec4<u32>(32u)), 14904i, 15845i, ~(~(-u_input.a)), _wgslsmith_f_op_vec4_f32(var_1.a + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(-var_1.a))))));
}

