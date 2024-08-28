struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<vec2<f32>, 31>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = select(vec2<bool>(select(u_input.b.x > reverseBits(u_input.a.x), any(vec3<bool>(true, true, true)), select(all(vec3<bool>(false, true, true)), u_input.a.x < u_input.b.x, any(vec2<bool>(true, true)))), true), vec2<bool>(true, true), vec2<bool>(false, !(!any(vec2<bool>(false, false)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 21u)]) - global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(abs(2318f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 21u)] + global0[_wgslsmith_index_u32(u_input.b.x, 21u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-881f, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)], -482f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(50457u, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 922f, 1093f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(12462u, 21u)], global0[_wgslsmith_index_u32(23665u, 21u)], 1407f, global0[_wgslsmith_index_u32(1u, 21u)])))))))), min(max(-1176i, -_wgslsmith_div_i32(-28732i, 33783i)), 1i));
    return select(!select(select(!vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x)), vec4<bool>(!var_0.x, true, var_0.x, var_0.x && var_0.x), !var_0.x), vec4<bool>(all(select(select(vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(true, var_0.x, false), var_0.x)), false, var_0.x, false), any(select(select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, true, true, true), var_0.x), !(!vec4<bool>(var_0.x, false, true, false)), false)));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    global0 = array<f32, 21>();
    global1 = array<vec2<f32>, 31>();
    let var_0 = Struct_1(!(!func_3()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 610f) + global0[_wgslsmith_index_u32(~0u, 21u)]))))), min(1i, -_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -2992i, -2147483647i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(2879i, 8173i, -16884i, -16120i), vec4<i32>(31359i, 32247i, -31810i, -90633i)))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 52900u), u_input.a.wy, vec2<bool>(true, arg_0)), abs(vec2<u32>(u_input.b.x, u_input.b.x))), abs(1u)), u_input.b.x & u_input.a.x, 35156u, 1u));
    let var_1 = vec4<f32>(608f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(~var_0.d.x), 21u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-289f)))), 181f);
    global0 = array<f32, 21>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.wzw)))) * _wgslsmith_f_op_vec3_f32(trunc(var_1.xxz)));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_2(!select(arg_0.x == arg_0.x, true, false))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1089f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f)))), -435f)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(398f - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-230f, 759f) - var_0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, 884f, var_0.x), vec4<f32>(-720f, var_0.x, -1170f, global0[_wgslsmith_index_u32(9704u, 21u)]), vec4<bool>(false, false, true, false))) * vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], -1507f, -1051f, global0[_wgslsmith_index_u32(u_input.b.x, 21u)])))))), -(arg_0.x ^ ~(4217i << (u_input.a.x % 32u))));
    global1 = array<vec2<f32>, 31>();
    let var_2 = firstLeadingBit(u_input.a.xx << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(31477u, 22771u, u_input.a.x) ^ vec3<u32>(0u, u_input.b.x, 0u), reverseBits(vec3<u32>(arg_1, 1u, u_input.a.x))), u_input.b.x) % vec2<u32>(32u)));
    var var_3 = u_input.a;
    return !(any(vec4<bool>(any(vec3<bool>(false, true, true)), true, all(vec4<bool>(false, false, true, true)), any(vec4<bool>(false, false, true, true)))) | true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 21u)];
    let var_1 = min((~min(u_input.b, u_input.b) ^ u_input.b) | (u_input.b << (~vec3<u32>(0u, 2450u, u_input.b.x) % vec3<u32>(32u))), ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 2443u, 60795u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))));
    global0 = array<f32, 21>();
    var var_2 = select(vec2<bool>(!(0u == var_1.x), !((u_input.b.x != var_1.x) || true)), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false)), vec2<bool>(true, true), all(vec4<bool>(true, false, false, true)) && true), (_wgslsmith_clamp_i32(0i, abs(2147483647i), -10508i) <= ((i32(-1i) * -2147483647i) >> ((var_1.x & var_1.x) % 32u))) || (select(true, func_1(vec4<i32>(-9321i, 31825i, 32131i, 1i), 0u), true) & any(select(vec2<bool>(true, true), vec2<bool>(false, true), false))));
    global1 = array<vec2<f32>, 31>();
    global0 = array<f32, 21>();
    let var_3 = Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 7629i >> (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-21543i, 2147483647i), vec2<i32>(-2147483647i, -12770i)), 1i), vec4<i32>(1i, -2147483647i, ~17973i, 1i)) & _wgslsmith_mult_vec4_i32(~vec4<i32>(7664i, -2147483647i, -1i, 9675i), -select(vec4<i32>(4738i, -58233i, 10659i, -4326i), vec4<i32>(-50178i, -23678i, 0i, -2147483647i), var_2.x)), Struct_1(!vec4<bool>(false, any(vec2<bool>(true, var_2.x)), all(vec4<bool>(var_2.x, false, var_2.x, var_2.x)), select(false, var_2.x, var_2.x)), 1f, _wgslsmith_add_i32(~82391i, ~(-47290i)) >> (u_input.b.x % 32u), vec4<u32>(1u, 0u, ~var_1.x, ~abs(u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global0[_wgslsmith_index_u32(var_1.x, 21u)])) + -785f)));
    var_0 = -116f;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_3.b.c));
}

