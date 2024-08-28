struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: Struct_4,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, false, true, true, false, true, true, false, false, true, false, true, false, false, true);

var<private> global1: array<Struct_4, 30>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.e))), arg_1.c.a.a, all(vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 15u)], arg_1.c.b.x, global0[_wgslsmith_index_u32(1u, 15u)])) & true, 52508u < (14255u ^ u_input.e.x), true)));
    let var_1 = _wgslsmith_f_op_f32(-arg_1.e);
    let var_2 = Struct_3(1000f, _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_0.a, -23210i, min(u_input.a.x, -32499i) ^ firstLeadingBit(u_input.c.x)), ~_wgslsmith_mod_i32(-2147483647i, -38184i)), false);
    var var_3 = global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.e.x ^ 0u, u_input.e.x), 4294967295u, ~u_input.e.x)), 15u)];
    let var_4 = Struct_5(_wgslsmith_f_op_f32(sign(-1056f)), arg_1.c.a, Struct_4(Struct_1(_wgslsmith_sub_i32(32809i, 0i), vec4<i32>(u_input.a.x, arg_1.b.a, u_input.d, 1i) & _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, u_input.b, 1637i, -30732i), vec4<i32>(-10475i, -1i, -1i, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a))), !arg_0.d), vec4<bool>(!(!arg_0.d.x), true, select(var_0.c, false, !arg_1.c.b.x), -135f == _wgslsmith_f_op_f32(-var_0.a))), !global0[_wgslsmith_index_u32(~u_input.e.x, 15u)], _wgslsmith_f_op_f32(floor(arg_2)));
    return var_4.b.d.x;
}

fn func_2(arg_0: f32) -> vec3<f32> {
    var var_0 = select(vec3<bool>(false, all(vec2<bool>(true, true)), false), select(select(vec3<bool>(false && global0[_wgslsmith_index_u32(9796u, 15u)], u_input.c.x > u_input.a.x, false), vec3<bool>(arg_0 < arg_0, global0[_wgslsmith_index_u32(19850u, 15u)] && global0[_wgslsmith_index_u32(4294967295u, 15u)], true), vec3<bool>(all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(19748u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])), !global0[_wgslsmith_index_u32(u_input.e.x, 15u)], !global0[_wgslsmith_index_u32(341u, 15u)])), vec3<bool>(~0u == ~u_input.e.x, !global0[_wgslsmith_index_u32(~42536u, 15u)], global0[_wgslsmith_index_u32(~70230u, 15u)]), !vec3<bool>(true, func_3(Struct_1(-6208i, vec4<i32>(34724i, 5253i, u_input.b, 1i), -1240f, vec4<bool>(true, global0[_wgslsmith_index_u32(1352u, 15u)], global0[_wgslsmith_index_u32(25010u, 15u)], global0[_wgslsmith_index_u32(79798u, 15u)])), Struct_5(-333f, Struct_1(u_input.c.x, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), arg_0, vec4<bool>(global0[_wgslsmith_index_u32(11747u, 15u)], true, global0[_wgslsmith_index_u32(u_input.e.x, 15u)], global0[_wgslsmith_index_u32(23671u, 15u)])), global1[_wgslsmith_index_u32(u_input.e.x, 30u)], false, -534f), arg_0), global0[_wgslsmith_index_u32(36447u, 15u)] & global0[_wgslsmith_index_u32(u_input.e.x, 15u)])), !vec3<bool>(any(vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.e.x, 15u)])), !all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 15u)], false, true)), select(global0[_wgslsmith_index_u32(1u, 15u)] && global0[_wgslsmith_index_u32(26232u, 15u)], true, any(vec3<bool>(global0[_wgslsmith_index_u32(25790u, 15u)], global0[_wgslsmith_index_u32(20564u, 15u)], false)))));
    var var_1 = _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)), -142f));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 375f, -784f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 118f, arg_0) - vec3<f32>(-1000f, 614f, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(920f, arg_0, 603f)))))))));
}

fn func_1(arg_0: bool, arg_1: f32) -> u32 {
    let var_0 = ~u_input.b;
    var var_1 = _wgslsmith_f_op_f32(-arg_1);
    let var_2 = global0[_wgslsmith_index_u32(51500u, 15u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_f32(arg_1, 491f)))), vec3<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-arg_1)), arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 * 1089f)))), !(global0[_wgslsmith_index_u32(0u, 15u)] | true))));
    var var_4 = 1u;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(10947u, u_input.e.x, 0u, 0u), max(vec4<u32>(1u, u_input.e.x, 82007u, u_input.e.x), vec4<u32>(u_input.e.x, u_input.e.x, 19052u, 45872u))), ~(~vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.e.x)))), u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(222f, 3126f) - vec2<f32>(-1946f, -698f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(232f, 1161f) + vec2<f32>(-319f, -976f)), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.e.x, 15u)]))))));
    let var_1 = !select(!vec4<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(18377u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)])), global0[_wgslsmith_index_u32(33383u, 15u)], select(true, global0[_wgslsmith_index_u32(20337u, 15u)], false), all(vec4<bool>(false, true, false, false))), !(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 15u)], false, true))), !select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 15u)], false, global0[_wgslsmith_index_u32(20947u, 15u)], global0[_wgslsmith_index_u32(u_input.e.x, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 15u)], global0[_wgslsmith_index_u32(u_input.e.x, 15u)], global0[_wgslsmith_index_u32(92629u, 15u)], global0[_wgslsmith_index_u32(u_input.e.x, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(29683u, 15u)], true, global0[_wgslsmith_index_u32(22082u, 15u)], true)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(1392f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1400f * 1456f)) * _wgslsmith_f_op_f32(-1512f + _wgslsmith_f_op_f32(var_0.x * var_0.x)))), _wgslsmith_clamp_i32(u_input.a.x, -27673i, u_input.b >> (4294967295u % 32u)), all(!vec2<bool>(all(vec4<bool>(false, var_1.x, false, false)), !global0[_wgslsmith_index_u32(4294967295u, 15u)])));
    let var_3 = ~vec3<u32>(u_input.e.x, 1u, 4294967295u & max(~u_input.e.x, firstLeadingBit(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(true, 1000f), ~_wgslsmith_sub_i32(~50647i, u_input.c.x));
}

