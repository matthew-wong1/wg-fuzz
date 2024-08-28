struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(529f, 696f, -1243f, -1000f, 771f, -967f, -435f, -1546f);

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: array<vec4<u32>, 4>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> vec4<bool> {
    global1 = select(vec4<bool>(any(select(select(vec4<bool>(false, true, global1.x, false), vec4<bool>(false, true, global1.x, true), true), select(vec4<bool>(true, global1.x, false, false), vec4<bool>(global1.x, global1.x, false, global1.x), false), vec4<bool>(true, global1.x, global1.x, global1.x))), global1.x, all(!global1.zx), any(vec4<bool>(global1.x, true, true, true))), select(vec4<bool>(true, any(global1.xw), _wgslsmith_clamp_u32(4294967295u, u_input.d, arg_1.x) > ~0u, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, global1.x, true), vec4<bool>(false, global1.x, false, false), vec4<bool>(true, false, global1.x, global1.x)), vec4<bool>(false, global1.x, false, false)), vec4<bool>((75120u << (0u % 32u)) <= ~arg_1.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 8u)] - -1612f) < 1f, global1.x != (u_input.e.x > 0i), global1.x)), _wgslsmith_div_f32(arg_0.x, -263f) > arg_0.x);
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(abs(u_input.e), -(~u_input.e << (~vec2<u32>(arg_1.x, u_input.d) % vec2<u32>(32u)))), vec2<f32>(324f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1092f + arg_0.x)))), select(select(!global1.zxz, select(vec3<bool>(global1.x, global1.x, true), !global1.wzw, any(vec4<bool>(true, false, false, true))), select(global1.yxx, select(vec3<bool>(global1.x, global1.x, global1.x), global1.zxx, global1.x), vec3<bool>(true, global1.x, global1.x))), vec3<bool>(any(select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(global1.x, global1.x, global1.x, true), false)), select(global1.x, false, u_input.d != 20258u), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, false, true, global1.x)))), global1.yxy), ~(~u_input.d));
    let var_1 = -1000f;
    var var_2 = select(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 37738u, 8233u) << (vec3<u32>(arg_1.x, u_input.d, var_0.d) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 1u, 27195u)), vec3<u32>(~var_0.d, u_input.d, 70769u)), ~(vec3<u32>(var_0.d, 0u, 71380u) ^ vec3<u32>(arg_1.x, 15230u, arg_1.x)) ^ vec3<u32>(_wgslsmith_mult_u32(var_0.d, 91921u), ~58018u, 1u), true) ^ vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1.x, 50893u), firstTrailingBit(var_0.d)), u_input.d, var_0.d);
    var var_3 = !select(global1.xyx, vec3<bool>(true, true, true), select(global1.zxy, vec3<bool>(any(global1.yyy), false, false), false));
    return select(!(!(!(!vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x)))), !select(vec4<bool>(var_0.c.x, u_input.c > 65422i, -60309i == u_input.e.x, false), select(!vec4<bool>(global1.x, true, true, false), !vec4<bool>(false, var_0.c.x, false, true), select(vec4<bool>(global1.x, false, true, false), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, var_3.x, false, global1.x))), true), !vec4<bool>(!global1.x & global1.x, all(!vec4<bool>(false, true, var_0.c.x, false)), true, !all(vec4<bool>(global1.x, var_0.c.x, global1.x, true))));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.b.x), vec2<i32>(0i, u_input.a.x | -1i)), vec2<f32>(global0[_wgslsmith_index_u32(~1u | ~(~arg_0), 8u)], global0[_wgslsmith_index_u32(~(~(~54959u)), 8u)]), !(!global1.wxy), 46709u);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(countOneBits(~arg_0), 8u)], global0[_wgslsmith_index_u32(~1u, 8u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(471f, _wgslsmith_f_op_f32(ceil(-923f))))));
    var var_2 = -13172i;
    let var_3 = Struct_1(vec2<i32>(var_0.a.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(19039i, var_0.a.x)), 0i >> ((u_input.d & 0u) % 32u))), var_1, vec3<bool>(any(!func_3(vec4<f32>(var_1.x, var_1.x, 507f, var_0.b.x), vec2<u32>(60481u, var_0.d))), global1.x, !any(!vec4<bool>(var_0.c.x, false, global1.x, global1.x))), select(u_input.d, arg_0, any(global1.yw)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.d, 8u)]), _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x) + 1003f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.b.x, var_1.x)))))));
    return _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, reverseBits(max(var_0.d, 1u))), 8u)], var_0.b.x), _wgslsmith_f_op_vec2_f32(-var_3.b));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(1482f, 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~arg_3.d), 8u)] * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1228f, -2555f))))));
    var var_1 = Struct_1(vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(735f, global0[_wgslsmith_index_u32(arg_3.d, 8u)])) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, global0[_wgslsmith_index_u32(19747u, 8u)]), var_0)))))), arg_3.c, ~0u);
    var_1 = arg_3;
    let var_2 = countOneBits(~(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_3.d, u_input.d, u_input.d), vec3<u32>(arg_3.d, u_input.d, var_1.d))) | select(firstTrailingBit(vec3<u32>(var_1.d, 0u, 49476u)), select(vec3<u32>(u_input.d, 28447u, 1u), vec3<u32>(1u, 5387u, 4294967295u), false), arg_3.c)));
    var var_3 = Struct_1(u_input.a.wz, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-642f, arg_2.x)) + -1000f)) + _wgslsmith_f_op_vec2_f32(func_2(var_1.d, false))), vec3<bool>(global1.x, all(select(select(vec4<bool>(true, false, false, arg_3.c.x), vec4<bool>(arg_3.c.x, arg_3.c.x, true, true), vec4<bool>(global1.x, arg_3.c.x, false, var_1.c.x)), func_3(vec4<f32>(var_0.x, 559f, var_1.b.x, arg_0), var_2.yz), vec4<bool>(global1.x, false, arg_3.c.x, arg_3.c.x))), !(!var_1.c.x || !global1.x)), ~(u_input.d << ((var_2.x | 70235u) % 32u)));
    return ~u_input.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<i32>, arg_3: bool) -> bool {
    var var_0 = func_4(global0[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_clamp_u32(~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(110377u, 13741u, u_input.d, u_input.d), global2[_wgslsmith_index_u32(1761u, 4u)]), 4294967295u))), 8u)], _wgslsmith_clamp_i32(10493i, -1i, arg_2.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2(select(92810u, arg_1, arg_3), !arg_3)))))), Struct_1(vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(0i, arg_0.x) >> (_wgslsmith_mult_u32(58348u, 32854u) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 633f) - vec2<f32>(205f, 973f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(374f, 786f)))), !select(!vec3<bool>(global1.x, arg_3, false), !global1.wxz, arg_3), 4294967295u));
    global2 = array<vec4<u32>, 4>();
    var var_1 = select(!(!(!vec4<bool>(false, arg_3, true, arg_3))), select(vec4<bool>(any(!vec4<bool>(true, arg_3, arg_3, global1.x)), max(1u, u_input.d) < arg_1, all(vec3<bool>(arg_3, global1.x, true)) || true, true), !vec4<bool>(true & arg_3, true, any(vec2<bool>(global1.x, true)), !arg_3), true), vec4<bool>((_wgslsmith_div_i32(-2147483647i, arg_2.x) > arg_0.x) & all(select(vec3<bool>(true, false, arg_3), vec3<bool>(false, true, false), global1.zyw)), -851f <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.d, 8u)], -1278f)), !any(vec4<bool>(global1.x, arg_3, global1.x, global1.x)), true | !(arg_3 && global1.x)));
    let var_2 = select(select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, var_1.x, var_1.x, global1.x), vec4<bool>(false, true, false, global1.x)), !vec4<bool>(false, false, global1.x, global1.x), !var_1.x), !(!vec4<bool>(global1.x, arg_3, true, var_1.x)), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1412f, 365f, global0[_wgslsmith_index_u32(4294967295u, 8u)], -725f), vec4<f32>(global0[_wgslsmith_index_u32(9935u, 8u)], global0[_wgslsmith_index_u32(2121u, 8u)], global0[_wgslsmith_index_u32(u_input.d, 8u)], -1084f), vec4<bool>(true, var_1.x, var_1.x, global1.x))), min(vec2<u32>(81695u, u_input.d), vec2<u32>(arg_1, 1u))).x), !vec4<bool>(true, select(true, false, arg_3), !var_1.x, true), true), !select(vec4<bool>(true, select(global1.x, global1.x, var_1.x), arg_3, all(vec4<bool>(var_1.x, var_1.x, true, false))), select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(true, true, true, true), !vec4<bool>(var_1.x, global1.x, global1.x, false)), !(var_1.x && var_1.x)), func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2094f, global0[_wgslsmith_index_u32(u_input.d, 8u)], 727f, global0[_wgslsmith_index_u32(u_input.d, 8u)]), vec4<f32>(102f, global0[_wgslsmith_index_u32(46388u, 8u)], -1000f, -128f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(345f, -1000f, -1482f, -769f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(arg_1, 8u)], global0[_wgslsmith_index_u32(38570u, 8u)], global0[_wgslsmith_index_u32(u_input.d, 8u)])) - vec4<f32>(global0[_wgslsmith_index_u32(arg_1, 8u)], -1014f, -814f, -219f)), vec4<bool>(false, var_1.x, func_3(vec4<f32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], 471f, global0[_wgslsmith_index_u32(41628u, 8u)]), vec2<u32>(82683u, 57118u)).x, !arg_3))), vec2<u32>(11642u, ~28704u)));
    global0 = array<f32, 8>();
    return !(!any(select(!global1.wyz, vec3<bool>(false, false, false), u_input.d != arg_1)));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~(~(~60515u));
    let var_1 = !arg_1.x;
    global2 = array<vec4<u32>, 4>();
    var_0 = ~1u;
    let var_2 = false;
    return Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.b * arg_3.b) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-110f, global0[_wgslsmith_index_u32(29617u, 8u)]))))))), vec3<bool>(var_1, true, true), _wgslsmith_mod_u32(~_wgslsmith_div_u32(1u, _wgslsmith_add_u32(u_input.d, 56909u)), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!select(!vec3<bool>(false, true, global1.x), vec3<bool>(true, any(vec4<bool>(false, true, true, true)), func_1(u_input.a, u_input.d, u_input.b, global1.x)), !(!vec3<bool>(global1.x, false, false))), !(!vec4<bool>(false, true, 1i != u_input.a.x, all(vec3<bool>(global1.x, true, false)))), ~select(u_input.d, ~u_input.d << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, 4294967295u, u_input.d), global2[_wgslsmith_index_u32(54159u, 4u)]) % 32u), global1.x), Struct_1(func_4(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.d), 8u)] + global0[_wgslsmith_index_u32(~u_input.d, 8u)]), u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, global0[_wgslsmith_index_u32(30698u, 8u)]))), Struct_1(u_input.b ^ u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-534f, -635f)), global1.yyy, firstLeadingBit(u_input.d))).xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(393f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 8u)] - global0[_wgslsmith_index_u32(44992u, 8u)])) * vec2<f32>(514f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(19920u, 8u)])))), vec3<bool>(select(true, global1.x, !global1.x), global1.x, all(global1.zzw)), 11475u));
    global1 = vec4<bool>(any(!select(!vec4<bool>(var_0.c.x, global1.x, true, var_0.c.x), vec4<bool>(false, true, var_0.c.x, true), select(vec4<bool>(true, false, true, var_0.c.x), vec4<bool>(global1.x, var_0.c.x, false, false), var_0.c.x))), true, !(!(!select(var_0.c.x, var_0.c.x, true))), select(false, -1267f > global0[_wgslsmith_index_u32(0u, 8u)], !func_5(vec3<bool>(global1.x, var_0.c.x, var_0.c.x), vec4<bool>(false, var_0.c.x, global1.x, global1.x), u_input.d, func_5(vec3<bool>(false, false, false), vec4<bool>(false, var_0.c.x, global1.x, var_0.c.x), u_input.d, Struct_1(vec2<i32>(-2147483647i, var_0.a.x), var_0.b, vec3<bool>(true, false, false), 19946u))).c.x));
    var var_1 = _wgslsmith_clamp_vec4_i32(abs(-(u_input.a & u_input.a)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(func_4(global0[_wgslsmith_index_u32(u_input.d, 8u)], 31174i, var_0.b, Struct_1(vec2<i32>(35745i, 1i), vec2<f32>(var_0.b.x, -137f), var_0.c, var_0.d)).x, ~u_input.a.x, -var_0.a.x, u_input.b.x), u_input.a), _wgslsmith_div_vec4_i32((firstTrailingBit(vec4<i32>(u_input.e.x, 15767i, -2147483647i, -29675i)) & max(vec4<i32>(0i, 25574i, u_input.e.x, 2025i), vec4<i32>(u_input.b.x, -2147483647i, u_input.e.x, var_0.a.x))) << (~vec4<u32>(12504u, 16602u, var_0.d, 25461u) % vec4<u32>(32u)), countOneBits(u_input.a)), ~(-u_input.a));
    var var_2 = ~vec3<i32>(var_1.x, var_0.a.x << (4294967295u % 32u), 881i);
    var var_3 = vec3<f32>(-291f, _wgslsmith_f_op_f32(min(402f, _wgslsmith_f_op_vec2_f32(func_2(52352u, false)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) + var_0.b.x)));
    var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-var_2.x, var_2.x), var_1.zx, var_2.zy), var_3.zy, select(!(!vec3<bool>(global1.x, false, global1.x)), func_5(var_0.c, !(!vec4<bool>(true, global1.x, false, var_0.c.x)), ~var_0.d & 1u, Struct_1(var_2.zx, _wgslsmith_f_op_vec2_f32(var_0.b * var_3.yx), func_5(vec3<bool>(false, true, true), vec4<bool>(false, var_0.c.x, global1.x, global1.x), 28036u, Struct_1(vec2<i32>(var_2.x, -30936i), var_0.b, var_0.c, 15804u)).c, ~0u)).c, vec3<bool>(any(vec2<bool>(true, true)), global1.x, var_2.x != (var_0.a.x | var_1.x))), ~94932u >> ((_wgslsmith_dot_vec3_u32(~vec3<u32>(32333u, 0u, 0u), countOneBits(vec3<u32>(1u, var_0.d, 0u))) >> (1u % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xxx, _wgslsmith_add_u32(~abs(_wgslsmith_div_u32(u_input.d, u_input.d)), u_input.d ^ _wgslsmith_mod_u32(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, u_input.d, var_0.d, 1u), vec4<u32>(var_0.d, 82217u, 1u, 8340u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.b.x, global0[_wgslsmith_index_u32(1u, 8u)], var_3.x) * vec4<f32>(168f, global0[_wgslsmith_index_u32(u_input.d, 8u)], global0[_wgslsmith_index_u32(7749u, 8u)], var_0.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 175f, var_3.x, global0[_wgslsmith_index_u32(u_input.d, 8u)]))))));
}

