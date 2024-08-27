struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: array<Struct_1, 11>;

var<private> global2: array<vec3<i32>, 12>;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-1425f, -1233f, -1350f, 1461f), 1832f, vec4<i32>(i32(-2147483648), 27916i, 3601i, -13985i), -696f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-global3.a.xxz);
    let var_1 = global1[_wgslsmith_index_u32(select(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, ~u_input.a.x << (firstLeadingBit(0u) % 32u)) >> (0u % 32u), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.x, 1993f)), _wgslsmith_f_op_f32(arg_1.x - 1404f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(-1522f + 762f)))), 11u)];
    var var_2 = vec4<bool>(abs(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)) == u_input.a.x, true, !((~1u | min(u_input.a.x, 0u)) <= _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 25034u, 0u), vec3<u32>(6819u, 4294967295u, u_input.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 80628u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 47941u)))), false);
    var_2 = !(!select(select(vec4<bool>(true, var_2.x, var_2.x, true), !vec4<bool>(false, var_2.x, true, var_2.x), !vec4<bool>(true, true, var_2.x, false)), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x)), !vec4<bool>(var_2.x, true, var_2.x, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(false, true, var_2.x, true)), select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(false, var_2.x, var_2.x, var_2.x), false), select(vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(false, var_2.x, var_2.x, true)))));
    let var_3 = global1[_wgslsmith_index_u32(38146u >> (~4294967295u % 32u), 11u)];
    return arg_0.yz;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec3<bool>) -> vec4<i32> {
    global2 = array<vec3<i32>, 12>();
    var var_0 = u_input.a.x;
    global3 = global1[_wgslsmith_index_u32(7282u, 11u)];
    global0 = array<f32, 11>();
    global2 = array<vec3<i32>, 12>();
    return _wgslsmith_add_vec4_i32(reverseBits(firstLeadingBit(abs(vec4<i32>(4188i, 44438i, -2147483647i, -2147483647i))) & firstTrailingBit(select(vec4<i32>(0i, 1i, 0i, arg_2.x), vec4<i32>(arg_1.x, 1i, arg_1.x, global3.c.x), vec4<bool>(arg_3.x, arg_3.x, true, true)))), global3.c);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: f32) -> f32 {
    let var_0 = all(!vec4<bool>(any(vec3<bool>(false, arg_1.x, arg_1.x)), true, false, all(!vec4<bool>(arg_1.x, arg_1.x, false, false))));
    global0 = array<f32, 11>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.zw + global3.a.zw)))));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1203f * global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global3.d)), var_1.x)) + _wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-arg_2.x), var_1.x), _wgslsmith_f_op_f32(-arg_3), ~min(func_4(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(45690u, 11u)], global3.b, arg_2.x))), func_3(global3.c, vec2<f32>(-1925f, global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), ~global3.c, vec3<bool>(true, true, true)), firstLeadingBit(vec4<i32>(global3.c.x, arg_0.x, arg_0.x, -17005i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(ceil(var_1.x))))));
    let var_3 = !(!(!(true | (arg_0.x == 0i))));
    return var_1.x;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<bool>) -> vec4<f32> {
    var var_0 = vec4<bool>(all(vec4<bool>((true & arg_2.x) || arg_2.x, arg_2.x, !(4294967295u <= u_input.a.x), true)), !(any(!arg_2) || true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(13544u, 12u)] & vec3<i32>(-2147483647i, 2884i, -52164i), select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(arg_2.x, false, false), arg_2.yzz), vec4<f32>(516f, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -1896f, global3.d), _wgslsmith_f_op_f32(1039f - 641f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1953f) + _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 11u)]))))) == _wgslsmith_div_f32(global3.b, -1599f), false);
    var_0 = !arg_2;
    var_0 = !(!select(!select(arg_2, arg_2, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, arg_2.x && true, false, arg_2.x), !vec4<bool>(false, true, arg_2.x, true)));
    global2 = array<vec3<i32>, 12>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 11u)];
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.a, _wgslsmith_f_op_vec4_f32(-global3.a)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-731f, _wgslsmith_f_op_f32(global3.b - var_1.d), -2275f, _wgslsmith_f_op_f32(round(1537f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_1(7308i, select(select(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], -vec3<i32>(global3.c.x, 2147483647i, -1i) & vec3<i32>(global3.c.x, 1i, global3.c.x), vec3<bool>(true, u_input.a.x >= 4294967295u, var_0.x)), ~select(_wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], vec3<i32>(global3.c.x, -1i, global3.c.x)), global3.c.wxz | vec3<i32>(global3.c.x, global3.c.x, global3.c.x), global3.c.x <= -25790i), vec3<bool>(true && !var_0.x, !var_0.x, true)), !(!(!(!vec4<bool>(var_0.x, false, var_0.x, false))))));
    let var_2 = u_input.a.x;
    global1 = array<Struct_1, 11>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.d, 613f));
    let var_4 = global1[_wgslsmith_index_u32(firstTrailingBit(var_2), 11u)];
    var var_5 = var_2;
    let var_6 = _wgslsmith_div_vec2_i32(var_4.c.xz, _wgslsmith_div_vec2_i32(~(~global3.c.yx), countOneBits(vec2<i32>(-global3.c.x, 63961i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(var_4.a)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_4.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1234f, var_1.x, var_3, global0[_wgslsmith_index_u32(20314u, 11u)]))) - global3.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~global2[_wgslsmith_index_u32(71816u, 12u)], !var_0, _wgslsmith_f_op_vec4_f32(round(global3.a)), _wgslsmith_f_op_f32(round(-1112f))))), global0[_wgslsmith_index_u32(u_input.a.x, 11u)], var_6.x < -2147483647i)));
}

