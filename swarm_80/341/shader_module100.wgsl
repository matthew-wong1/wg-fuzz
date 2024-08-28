struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17>;

var<private> global1: f32 = -589f;

var<private> global2: array<Struct_1, 30>;

var<private> global3: array<f32, 27>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>) -> i32 {
    let var_0 = abs(-(~arg_1));
    var var_1 = Struct_4(!select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true)), false, select(vec3<bool>(abs(u_input.c.x) == select(11503u, u_input.c.x, false), true, true), vec3<bool>(true, true, true), vec3<bool>(true, (35111u >> (u_input.c.x % 32u)) < ~0u, true)));
    global0 = array<vec4<i32>, 17>();
    let var_2 = _wgslsmith_clamp_i32(select(~arg_1.x, -1i, all(!(!var_1.c.zy))), -1i, -1i);
    var var_3 = var_0;
    return var_0.x;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = !(!vec3<bool>(arg_1.b.a, arg_2.b.a, arg_2.b.a && true));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(785f, arg_1.a, -1171f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 27u)] * -1392f)))))));
    let var_3 = 0u <= max(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.a, 18743u, arg_2.b.c), vec3<u32>(1u, arg_1.b.c, u_input.c.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_2.a, arg_1.b.c, 0u), firstLeadingBit(vec3<u32>(u_input.c.x, u_input.c.x, arg_0)))), arg_2.a);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b)))));
    return !select(vec2<bool>(!select(var_0.x, var_0.x, false), var_0.x), select(var_0.zx, select(vec2<bool>(true, true), var_0.xx, vec2<bool>(true, arg_2.b.a)), _wgslsmith_f_op_f32(-1796f * -184f) == _wgslsmith_f_op_f32(var_2.x + -561f)), any(!vec3<bool>(var_0.x, true, true)));
}

fn func_2(arg_0: f32) -> vec2<f32> {
    global0 = array<vec4<i32>, 17>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(u_input.c.x), 27u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 813f) - _wgslsmith_f_op_f32(abs(-1089f))), global3[_wgslsmith_index_u32(~firstLeadingBit(u_input.c.x), 27u)])) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_div_f32(1000f, global3[_wgslsmith_index_u32(u_input.c.x, 27u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 27u)] + global3[_wgslsmith_index_u32(u_input.c.x, 27u)])) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(105628u, 27u)], arg_0, arg_0)), _wgslsmith_div_vec3_f32(vec3<f32>(-202f, global3[_wgslsmith_index_u32(1u, 27u)], 227f), vec3<f32>(global3[_wgslsmith_index_u32(1u, 27u)], arg_0, -919f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(352f, global3[_wgslsmith_index_u32(u_input.c.x, 27u)], global3[_wgslsmith_index_u32(u_input.c.x, 27u)])))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -696f), 1f, arg_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(step(-1683f, global3[_wgslsmith_index_u32(u_input.c.x, 27u)])), -403f))) * vec3<f32>(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 27u)]), all(vec3<bool>(true, true, true)))), 1792f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(ceil(-624f)))))));
    let var_1 = func_4(76344u, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -2533f), Struct_1(!any(vec3<bool>(false, true, true)), arg_0, 2096u, vec3<i32>(-u_input.a, -u_input.d, func_3(vec3<f32>(-857f, -1591f, -1820f), vec3<i32>(u_input.b, 0i, -4884i))), vec2<u32>(1u, u_input.c.x))), Struct_2(1u, Struct_1(true, -727f, 38752u, reverseBits(~vec3<i32>(29748i, -66499i, 2147483647i)), u_input.c)));
    let var_2 = var_0.x;
    return vec2<f32>(_wgslsmith_f_op_f32(select(1595f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * -2442f))))), select(var_1.x, func_4(u_input.c.x, Struct_3(1655f, global2[_wgslsmith_index_u32(u_input.c.x, 30u)]), Struct_2(53960u, global2[_wgslsmith_index_u32(u_input.c.x, 30u)])).x, !(!var_1.x)))), -164f);
}

fn func_1() -> i32 {
    global2 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(global3[_wgslsmith_index_u32(4294967295u, 27u)])))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(2813f, -1819f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 27u)], 137f)))))));
    let var_1 = ~select(~(vec3<i32>(-1i) * -vec3<i32>(-1i, u_input.b, 37520i)), min(-(vec3<i32>(1i, 2147483647i, 21105i) ^ vec3<i32>(10184i, u_input.d, u_input.e)), firstLeadingBit(vec3<i32>(2147483647i, 2214i, u_input.b) << (vec3<u32>(0u, u_input.c.x, u_input.c.x) % vec3<u32>(32u)))), true);
    global2 = array<Struct_1, 30>();
    var var_2 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 27u)] - var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + global3[_wgslsmith_index_u32(1u, 27u)]) + _wgslsmith_f_op_f32(exp2(var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 27u)] + 912f) * -1294f)), 199f), u_input.c.x, global2[_wgslsmith_index_u32(u_input.c.x, 30u)]);
    return ~(i32(-1i) * -(u_input.d << (u_input.c.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -func_1();
    var var_1 = vec3<i32>(~u_input.b, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(-1i, var_0)) & -34813i), ~(-1i));
    var var_2 = Struct_4(!func_4(0u, Struct_3(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 27u)] - global3[_wgslsmith_index_u32(u_input.c.x, 27u)]), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(16559u, u_input.c.x), 30u)]), Struct_2(1u ^ u_input.c.x, Struct_1(true, global3[_wgslsmith_index_u32(4294967295u, 27u)], u_input.c.x, vec3<i32>(var_1.x, u_input.e, u_input.b), u_input.c))), any(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(select(false, false, true), true, true), vec3<bool>(true, true, true))), !vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), false, true));
    var var_3 = !(!select(vec3<bool>(any(vec2<bool>(var_2.b, var_2.c.x)), false, !var_2.a.x), select(var_2.c, var_2.c, var_2.a.x), select(select(var_2.c, var_2.c, vec3<bool>(var_2.c.x, var_2.a.x, var_2.a.x)), !var_2.c, false)));
    var var_4 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1142f, global3[_wgslsmith_index_u32(0u, 27u)])), -1077f, global3[_wgslsmith_index_u32(109220u, 27u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1000f, 732f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 27u)] - global3[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 27u)] + global3[_wgslsmith_index_u32(14931u, 27u)])))), ~u_input.c.x, Struct_1(!(!all(vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-406f)) * -857f) - 305f), 0u, reverseBits(vec3<i32>(var_0, _wgslsmith_mult_i32(var_1.x, u_input.d), u_input.d)), vec2<u32>(4294967295u, _wgslsmith_add_u32(u_input.c.x, 1u))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-2501f, var_4.a.x, var_2.b)))));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(758f)), -1313f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1850f), _wgslsmith_f_op_f32(-var_4.c.b)))));
    let var_6 = select(!vec3<bool>(var_4.c.a, any(var_2.a), true), var_2.c, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(_wgslsmith_mult_vec4_u32(max(vec4<u32>(var_4.b, 51857u, var_4.c.c, var_4.c.e.x), vec4<u32>(u_input.c.x, u_input.c.x, 17760u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 0u, 1283u), vec4<u32>(1u, var_4.b, 0u, var_4.b))))));
}

