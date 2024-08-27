struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<f32>,
    d: vec4<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<i32, 6> = array<i32, 6>(-54935i, i32(-2147483648), 2147483647i, 10909i, -1i, -1i);

var<private> global2: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-498f, -666f, 1800f), vec3<f32>(-1799f, 174f, 530f), vec3<f32>(2126f, -1667f, 1000f), vec3<f32>(-786f, 176f, 641f), vec3<f32>(-837f, -1000f, 966f), vec3<f32>(-137f, 1971f, 603f), vec3<f32>(353f, -263f, -288f), vec3<f32>(378f, 454f, 1580f), vec3<f32>(-174f, 1402f, -261f), vec3<f32>(1063f, 502f, -302f), vec3<f32>(1325f, -1028f, -582f), vec3<f32>(135f, -640f, 1057f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> bool {
    let var_0 = 49837i;
    var var_1 = abs(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(26008i, -2147483647i, -1i, 2147483647i), u_input.e, vec4<i32>(var_0, 1i, u_input.e.x, u_input.e.x) & vec4<i32>(arg_0.x, 2147483647i, 2147483647i, 2147483647i)), u_input.e));
    return true | !(true != (arg_3.x <= _wgslsmith_f_op_f32(floor(464f))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> Struct_5 {
    global0 = array<f32, 12>();
    var var_0 = select(select(select(select(vec3<bool>(arg_0.x, arg_0.x, true), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), false), false), vec3<bool>(global0[_wgslsmith_index_u32(37858u, 12u)] == global0[_wgslsmith_index_u32(u_input.a, 12u)], arg_0.x, select(false, arg_0.x, false)), !vec3<bool>(true, arg_0.x, arg_0.x)), vec3<bool>(arg_0.x, func_3(vec3<i32>(arg_1, 34684i, global1[_wgslsmith_index_u32(u_input.b, 6u)]), u_input.c, vec2<u32>(u_input.b, 30303u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], 298f, 1704f)))), all(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, true), false))), false), !select(vec3<bool>(!arg_0.x, false, func_3(u_input.e.zww, u_input.c, vec2<u32>(0u, u_input.b), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.c.x, 12u)], global0[_wgslsmith_index_u32(89379u, 12u)]))), vec3<bool>(true != arg_0.x, !arg_0.x, arg_0.x && arg_0.x), select(select(vec3<bool>(true, true, false), vec3<bool>(arg_0.x, false, arg_0.x), true), !vec3<bool>(arg_0.x, true, arg_0.x), !vec3<bool>(true, arg_0.x, arg_0.x))), false);
    var_0 = !(!vec3<bool>(all(select(vec4<bool>(var_0.x, var_0.x, true, arg_0.x), vec4<bool>(false, false, var_0.x, arg_0.x), vec4<bool>(var_0.x, var_0.x, false, true))), false, all(select(vec2<bool>(false, arg_0.x), vec2<bool>(true, false), arg_0.x))));
    let var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1797f, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(15463u, 73356u, 16769u)), var_1.xyz), 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(45628u, 12u)] - global0[_wgslsmith_index_u32(87479u, 12u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 12u)])) * _wgslsmith_f_op_f32(-364f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(21190u, 12u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(45938u, 12u)], 203f, -790f, -652f), vec4<f32>(1402f, global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(var_1.x, 12u)], 441f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(35282u, 12u)], global0[_wgslsmith_index_u32(var_1.x, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 12u)], 744f, -361f, 417f))))) - vec4<f32>(_wgslsmith_f_op_f32(-619f * global0[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-470f * -386f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 12u)] * global0[_wgslsmith_index_u32(1116u, 12u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, u_input.a), 12u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-128f)) * _wgslsmith_f_op_f32(abs(-1246f)))))));
    return Struct_5(global0[_wgslsmith_index_u32(~var_1.x, 12u)] <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f * var_2.x)) + -1000f), Struct_3(vec2<u32>(countOneBits(1u & var_1.x), ~(4294967295u | u_input.c.x)), Struct_1(~_wgslsmith_sub_vec3_i32(u_input.e.wzw, u_input.e.zyz), select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.x, false, false), select(vec3<bool>(var_0.x, arg_0.x, var_0.x), vec3<bool>(false, false, arg_0.x), true)), arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.wz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)))), select(vec4<bool>(arg_0.x, var_0.x, false || arg_0.x, !var_0.x), vec4<bool>(arg_0.x, true, var_0.x, arg_0.x), !any(vec2<bool>(arg_0.x, false)))));
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = ~(select(global1[_wgslsmith_index_u32(~4294967295u, 6u)], 0i, 1u != _wgslsmith_mult_u32(27614u, u_input.c.x)) & (u_input.d >> (u_input.b % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, global0[_wgslsmith_index_u32(0u, 12u)])) * -1855f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 12u)]))), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~(~u_input.b), 12u)], _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -623f)), _wgslsmith_f_op_f32(abs(arg_0)) > global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 12u)])), _wgslsmith_f_op_f32(f32(-1f) * -2195f), global0[_wgslsmith_index_u32(44015u, 12u)]) - vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0)), arg_0, _wgslsmith_div_f32(arg_0, global0[_wgslsmith_index_u32(0u, 12u)]), -430f));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1238f, 774f, _wgslsmith_f_op_f32(-arg_0), var_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-261f, 304f, 182f, 472f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, 195f, -440f, var_1.x), vec4<f32>(-341f, var_1.x, global0[_wgslsmith_index_u32(u_input.b, 12u)], 313f)))))));
    let var_2 = func_2(vec2<bool>(true, false), _wgslsmith_clamp_i32(12622i, ~1i, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 6u)] | 2147483647i));
    let var_3 = all(var_2.b.b.b.xz);
    return u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(u_input.b, 12u)]))))));
    var var_1 = Struct_2(func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.wy, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.zy, u_input.c.zw), u_input.c.yy)), 12u)]), abs(abs(u_input.e.x & -1i)));
    global2 = array<vec3<f32>, 12>();
    let var_2 = reverseBits(-vec2<i32>(-var_1.a, _wgslsmith_mult_i32(1i, -39744i)) & vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.b, u_input.e.x), vec2<i32>(var_1.b, -73205i)), -2147483647i));
    global1 = array<i32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(u_input.c.x ^ u_input.c.x))), vec2<i32>(11855i, _wgslsmith_add_i32(17242i, -1i)), var_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b, 12u)])), _wgslsmith_f_op_f32(f32(-1f) * -1427f))), 1000f);
}

