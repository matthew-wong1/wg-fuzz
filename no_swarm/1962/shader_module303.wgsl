struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 26> = array<f32, 26>(-221f, -135f, 1109f, -741f, 740f, -1359f, -298f, 1000f, 224f, -244f, -334f, 437f, -1822f, 1040f, 822f, -1166f, 449f, 1428f, -1269f, -860f, -272f, 1767f, 1936f, -373f, 1038f, 1060f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    global2 = array<f32, 26>();
    let var_0 = ~max(firstLeadingBit(vec2<i32>(-11704i, _wgslsmith_mult_i32(u_input.c, -41277i))), select(countOneBits(vec2<i32>(1i, 24378i)), _wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], global0[_wgslsmith_index_u32(103693u, 1u)]), -vec2<i32>(1i, u_input.c)), arg_2.a.x));
    var var_1 = arg_2.a.xy;
    global1 = Struct_1(vec3<bool>(false, false, var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1642f) + _wgslsmith_div_f32(arg_2.c.x, global2[_wgslsmith_index_u32(arg_1.x, 26u)])) + global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -376f) + _wgslsmith_f_op_f32(sign(1294f)))), 17952u, global1.e);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1090f, arg_2.c.x, global1.c.x), vec3<f32>(global1.c.x, arg_0, -912f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(516f, 638f, arg_2.b.x)))) - vec3<f32>(arg_2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x - arg_0), _wgslsmith_f_op_f32(arg_2.c.x + global2[_wgslsmith_index_u32(global1.d, 26u)])), -878f)));
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.d, arg_1.x, 1u), vec3<u32>(36089u, arg_2.d, 4294967295u)) & ~vec3<u32>(u_input.b, 40376u, 0u), vec3<u32>(4294967295u, 14449u, ~23034u)), select(_wgslsmith_sub_u32(firstTrailingBit(arg_2.d), 4294967295u), 74076u, !((var_0.x < var_0.x) || false))), 1u)];
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global2 = array<f32, 26>();
    var var_0 = arg_2.d;
    var var_1 = arg_2;
    var var_2 = _wgslsmith_clamp_i32(func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -156f), arg_2.c.x)), ~reverseBits(vec2<u32>(u_input.b, 37970u)), arg_2) << ((96775u | (~arg_2.d << (max(u_input.b, 40338u) % 32u))) % 32u), u_input.a, -14889i);
    global1 = Struct_1(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1639f, arg_1)), 1f) + arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + 388f) + _wgslsmith_f_op_f32(1406f - _wgslsmith_f_op_f32(sign(-1125f))))), global1.b, var_1.d, false);
    return arg_2;
}

fn func_1() -> f32 {
    let var_0 = select(global0[_wgslsmith_index_u32(~(~u_input.b >> (~u_input.b % 32u)), 1u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(min(global1.d, 16993u), 1u)], -2147483647i) & 0i, true) ^ _wgslsmith_mult_i32(u_input.a, 58212i);
    var var_1 = global1.a;
    global2 = array<f32, 26>();
    global1 = func_2(vec2<i32>(var_0, 472i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), Struct_1(vec3<bool>(global1.a.x, true, any(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, false, false), vec4<bool>(false, true, var_1.x, var_1.x)))), vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 26u)] + global2[_wgslsmith_index_u32(u_input.b, 26u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c * global1.b), vec2<f32>(global2[_wgslsmith_index_u32(85749u, 26u)], 1485f)) - _wgslsmith_f_op_vec2_f32(-global1.c)), ~(~25838u), select(global1.a.x, true || any(vec2<bool>(true, var_1.x)), false)));
    var var_2 = select(select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(global1.a.x, false, true, var_1.x), vec4<bool>(global1.a.x, true, false, var_1.x)), !select(vec4<bool>(true, global1.e, false, var_1.x), vec4<bool>(var_1.x, global1.a.x, var_1.x, var_1.x), var_1.x), var_1.x), !vec4<bool>(all(global1.a), true, true, true), select(select(!vec4<bool>(global1.a.x, global1.a.x, false, var_1.x), !vec4<bool>(var_1.x, false, var_1.x, var_1.x), false), !vec4<bool>(true, global1.e, global1.a.x, global1.e), vec4<bool>(true, true, !global1.a.x, true))), vec4<bool>(6516i < global0[_wgslsmith_index_u32(~1u, 1u)], !(func_2(vec2<i32>(2147483647i, var_0), global2[_wgslsmith_index_u32(global1.d, 26u)], Struct_1(global1.a, global1.c, vec2<f32>(1000f, global1.b.x), u_input.b, var_1.x)).c.x < -259f), _wgslsmith_f_op_f32(floor(1015f)) == 104f, true), var_0 <= ~(-_wgslsmith_div_i32(2147483647i, var_0)));
    return global2[_wgslsmith_index_u32(105793u, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.d;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(max(countOneBits(~1u), u_input.b), 26u)], _wgslsmith_f_op_f32(func_1()), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1159f)) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 26u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1520f + global2[_wgslsmith_index_u32(max(u_input.b | 4294967295u, reverseBits(global1.d)), 26u)])));
    let var_2 = select(!vec3<bool>(global1.a.x, _wgslsmith_f_op_f32(trunc(var_1.x)) < _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 26u)]), (1i ^ global0[_wgslsmith_index_u32(45139u, 1u)]) < global0[_wgslsmith_index_u32(27589u, 1u)]), func_2(vec2<i32>(2147483647i, -17655i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.x))) - global2[_wgslsmith_index_u32(global1.d, 26u)]), Struct_1(select(vec3<bool>(global1.a.x, false, global1.a.x), select(vec3<bool>(false, false, global1.a.x), vec3<bool>(true, true, global1.e), vec3<bool>(global1.a.x, true, true)), !global1.e), vec2<f32>(global1.c.x, _wgslsmith_div_f32(-564f, global2[_wgslsmith_index_u32(u_input.b, 26u)])), _wgslsmith_div_vec2_f32(global1.c, vec2<f32>(1928f, global2[_wgslsmith_index_u32(56867u, 26u)])), _wgslsmith_sub_u32(61750u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d, 4294967295u, 30526u, u_input.b), vec4<u32>(u_input.b, 102529u, 0u, 30931u))), -1407f == global1.c.x)).a, global1.e);
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], 708f, -241f, global1.c.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(50970u, 26u)], 1537f, global1.b.x, -743f), vec4<f32>(var_1.x, -469f, global1.c.x, -895f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global2[_wgslsmith_index_u32(u_input.b, 26u)], var_1.x, global1.b.x)))))));
    let var_4 = ~61755u;
    var var_5 = _wgslsmith_sub_i32(-6297i, -31162i);
    global1 = Struct_1(select(!select(vec3<bool>(global1.e, true, global1.e), vec3<bool>(false, global1.e, global1.e), true), !global1.a, !select(!global1.a, vec3<bool>(true, true, global1.a.x), select(var_2, vec3<bool>(true, var_2.x, true), vec3<bool>(global1.e, true, var_2.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.xy + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 780f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1479f, var_3.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1431f, 975f)) * global1.b))), var_1.yy, _wgslsmith_mod_u32(_wgslsmith_div_u32(reverseBits(4294967295u), abs(var_4)), ~(~_wgslsmith_clamp_u32(u_input.b, 1u, var_4))), !(!var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~func_3(_wgslsmith_f_op_f32(-1039f * -1976f), _wgslsmith_mult_vec2_u32(~vec2<u32>(var_4, 22204u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_4, u_input.b), vec2<u32>(u_input.b, global1.d))), Struct_1(vec3<bool>(false, true, var_2.x), global1.b, _wgslsmith_f_op_vec2_f32(global1.c - vec2<f32>(var_1.x, global2[_wgslsmith_index_u32(var_4, 26u)])), ~79962u, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(320f + -1354f))))), _wgslsmith_dot_vec3_i32(~(~reverseBits(vec3<i32>(-3364i, -1i, -33030i))), vec3<i32>(u_input.a, -countOneBits(global0[_wgslsmith_index_u32(u_input.b, 1u)]), global0[_wgslsmith_index_u32(global1.d, 1u)])), countOneBits(0i));
}

