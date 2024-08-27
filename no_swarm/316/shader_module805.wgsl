struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(true, false, false, false, true, true, false, true, false, true, false, false, false, true, false, true, false, false, true, true, false, true, true, true, true, true, false, true);

var<private> global1: array<i32, 15> = array<i32, 15>(-49504i, -75636i, 42010i, -35553i, -7925i, 1i, -1i, 1i, i32(-2147483648), -17483i, -48099i, -22988i, 1i, 0i, 0i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global0 = array<bool, 28>();
    let var_0 = Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(max(~u_input.c.x, u_input.c.x), 28u)] & false, all(vec2<bool>(all(vec3<bool>(false, arg_0.a.x, arg_0.b)), any(vec3<bool>(arg_0.b, true, true))))), any(select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(11456u, 28u)], false)), select(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 28u)], true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false, arg_0.b)), select(vec3<bool>(arg_0.b, true, true), vec3<bool>(true, false, arg_0.a.x), global0[_wgslsmith_index_u32(u_input.d, 28u)]), vec3<bool>(arg_0.a.x, global0[_wgslsmith_index_u32(0u, 28u)], arg_0.a.x)), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 28u)], any(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(abs(u_input.c.x), 28u)]))));
    let var_1 = -global1[_wgslsmith_index_u32(u_input.d, 15u)];
    var var_2 = select(select(vec2<bool>(7817u <= _wgslsmith_add_u32(u_input.d, u_input.d), min(var_1, 1i) >= -30173i), select(!vec2<bool>(global0[_wgslsmith_index_u32(31122u, 28u)], true), var_0.a, !(arg_0.a.x || false)), all(vec4<bool>(any(var_0.a), true, true, any(vec4<bool>(arg_0.a.x, false, true, false))))), !select(!vec2<bool>(false, var_0.a.x), vec2<bool>(true, var_0.a.x & global0[_wgslsmith_index_u32(11081u, 28u)]), any(!vec3<bool>(arg_0.b, false, global0[_wgslsmith_index_u32(u_input.d, 28u)]))), true);
    global1 = array<i32, 15>();
    return vec2<bool>(((-852i & -var_1) << (~1u % 32u)) > u_input.a, !(!all(select(vec3<bool>(var_2.x, global0[_wgslsmith_index_u32(3167u, 28u)], false), vec3<bool>(arg_0.b, false, false), vec3<bool>(false, var_0.a.x, true)))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    global1 = array<i32, 15>();
    global0 = array<bool, 28>();
    var var_0 = Struct_1(select(vec2<bool>(arg_2, false), !func_3(Struct_1(vec2<bool>(true, arg_2), false)), false), !select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 37395u), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(4294967295u, 0u, 0u))), 28u)], true || any(vec3<bool>(global0[_wgslsmith_index_u32(3843u, 28u)], arg_0, arg_2)), all(vec3<bool>(true, true, true))));
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    return Struct_1(!var_0.a, !(!(!var_0.b)));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> vec2<bool> {
    var var_0 = func_2(!(!all(select(vec3<bool>(true, false, true), vec3<bool>(arg_1, false, arg_1), global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1422f), vec4<f32>(arg_0.x, 426f, 494f, arg_0.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-445f, 1000f, 836f, arg_0.x))), all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], false)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-885f, arg_0.x, 1030f, -1000f) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -491f, arg_0.x, -538f), vec4<f32>(arg_0.x, 933f, 1000f, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1233f, -665f, -265f, -1660f))))))), true, ~vec2<i32>(_wgslsmith_div_i32(0i, u_input.a), _wgslsmith_add_i32(-24822i, u_input.a)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.d, 0u), vec2<u32>(~33290u, 1u)) % vec2<u32>(32u)));
    let var_1 = Struct_1(vec2<bool>(true, all(vec4<bool>(!var_0.a.x, true, 1i != global1[_wgslsmith_index_u32(u_input.c.x, 15u)], arg_1))), global0[_wgslsmith_index_u32(24816u, 28u)]);
    global1 = array<i32, 15>();
    var_0 = Struct_1(!func_3(Struct_1(vec2<bool>(false, true), arg_0.x > -572f)), true);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(252f - 219f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1268f, -308f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -634f))), !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.d), select(u_input.c.x, 7188u, global0[_wgslsmith_index_u32(u_input.d, 28u)])), 28u)])), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(3353f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * 588f)));
    return !select(func_2(var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -266f, 1797f, -1000f))), !var_0.b, countOneBits(vec2<i32>(-2147483647i, u_input.a))).a, func_3(func_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-202f, var_2.x, -818f, var_2.x)), var_0.b & var_0.a.x, -vec2<i32>(u_input.a, u_input.a))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(u_input.b), u_input.b) << (max(1u, ~4294967295u) % 32u), 28u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 15>();
    global1 = array<i32, 15>();
    var var_0 = Struct_1(select(select(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1189f, 2909f, 533f) + vec3<f32>(1205f, -344f, -923f)), global0[_wgslsmith_index_u32(~u_input.b.x, 28u)]), func_3(func_2(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], vec4<f32>(-371f, 1000f, 326f, 198f), true, vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 15u)]))), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-872f, 812f, 1327f)), true)), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], _wgslsmith_clamp_i32(-15141i, 2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 15u)]) >= global1[_wgslsmith_index_u32(~1u, 15u)]), !(!global0[_wgslsmith_index_u32(46229u, 28u)]) == (true || global0[_wgslsmith_index_u32(u_input.c.x, 28u)])), all(func_3(func_2(true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(225f, -2173f, 108f, -1381f))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 28u)], vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 9097i) ^ vec2<i32>(u_input.a, u_input.a)))));
    global0 = array<bool, 28>();
    let var_1 = firstLeadingBit(min(max(vec4<i32>(-global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(countOneBits(u_input.c.x), 15u)], global1[_wgslsmith_index_u32(~34831u, 15u)], -global1[_wgslsmith_index_u32(11690u, 15u)]), vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.c.x, 15u)], -2147483647i, u_input.a) | _wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], 15159i, 26966i, 1i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], -23898i, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, -11362i, u_input.a))), ~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, -235i, 29324i), vec4<i32>(u_input.a, 36784i, u_input.a, -10564i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 15u)], u_input.a, global1[_wgslsmith_index_u32(1u, 15u)], u_input.a)), vec4<i32>(-32166i, -2147483647i, u_input.a, u_input.a))));
    let var_2 = func_2(!any(vec4<bool>(!var_0.b, var_0.b, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], var_1.x == u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1471f)) - _wgslsmith_f_op_f32(128f - 365f)), 1f, -1949f, _wgslsmith_f_op_f32(step(-1173f, -728f)))), global0[_wgslsmith_index_u32(4294967295u ^ (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 65045u), vec2<u32>(0u, 35215u)), select(vec2<u32>(u_input.c.x, u_input.d), vec2<u32>(u_input.c.x, u_input.c.x), vec2<bool>(true, true))) | ~u_input.b.x), 28u)], countOneBits(var_1.yy));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1010f, 459f));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(154f)) * -1672f)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, -var_1.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4, var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_4, var_4)) * 1219f)))), vec2<i32>(var_1.x, -31226i), ~u_input.b.x);
}

