struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, true, false, false, true, false, false, true, true, false);

var<private> global1: array<f32, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> vec3<f32> {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(~80913u, _wgslsmith_mod_u32(0u, arg_2.a))), 28u)];
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(349f + -694f))) * global1[_wgslsmith_index_u32(abs(1u), 28u)])) * -2508f);
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    var var_1 = ~arg_0.a;
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(629f * _wgslsmith_f_op_f32(arg_0.c * arg_2.c)), -446f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c, global1[_wgslsmith_index_u32(arg_3, 28u)]) + arg_0.c))), _wgslsmith_div_f32(1988f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a, 28u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a, 28u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1044f, -179f, arg_2.c) - vec3<f32>(-1273f, arg_0.c, arg_2.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-627f, arg_2.c, -1070f))) + vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(sign(1000f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.c, arg_0.c, global1[_wgslsmith_index_u32(arg_3, 28u)]), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], -638f, -549f), false)))))), all(arg_0.b)));
}

fn func_2(arg_0: vec2<bool>) -> vec3<f32> {
    let var_0 = !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false);
    global0 = array<bool, 10>();
    let var_1 = Struct_1(u_input.a, !select(vec3<bool>(any(vec3<bool>(true, var_0.x, var_0.x)), global0[_wgslsmith_index_u32(~u_input.a, 10u)], false), var_0.wwz, !(!vec3<bool>(true, var_0.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 28u)]) + 1294f))) - _wgslsmith_f_op_f32(-249f + _wgslsmith_div_f32(-516f, global1[_wgslsmith_index_u32(~37258u, 28u)]))));
    var var_2 = i32(-1i) * -30700i;
    var var_3 = ~vec3<u32>(reverseBits(var_1.a), 0u << (~(9563u | var_1.a) % 32u), firstTrailingBit(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)) << (_wgslsmith_mod_u32(~var_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 1u, 4294967295u, 1u), vec4<u32>(var_1.a, u_input.a, u_input.a, 1u))) % 32u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(46034u, 28u)]), _wgslsmith_f_op_f32(min(var_1.c, -217f)), var_1.c), _wgslsmith_f_op_vec3_f32(func_3(var_1, !arg_0.x, Struct_1(u_input.a, var_1.b, global1[_wgslsmith_index_u32(1u, 28u)]), var_3.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(u_input.a, 28u)], var_1.c), vec3<f32>(1108f, -1491f, var_1.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1937u, 28u)], var_1.c, 840f)))))) * vec3<f32>(-417f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_3.x, 28u)], -155f))), 2199f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -818f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(235f + var_1.c))))));
}

fn func_4(arg_0: vec3<f32>) -> vec2<f32> {
    global0 = array<bool, 10>();
    global1 = array<f32, 28>();
    let var_0 = Struct_1(firstLeadingBit(u_input.a ^ 0u), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(58079u, 10u)] & true), _wgslsmith_f_op_f32(min(143f, _wgslsmith_f_op_f32(max(804f, arg_0.x)))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 28u)], 583f) * _wgslsmith_f_op_vec2_f32(-arg_0.yx)) * _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_vec2_f32(-arg_0.zy)))) + arg_0.zz);
}

fn func_5(arg_0: vec2<f32>) -> vec4<bool> {
    global1 = array<f32, 28>();
    var var_0 = vec4<u32>(~select(u_input.a, 1u, global0[_wgslsmith_index_u32(69663u, 10u)]), countOneBits(u_input.a), u_input.a, _wgslsmith_div_u32(74601u, 4294967295u));
    global1 = array<f32, 28>();
    var var_1 = true;
    var var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 10u)];
    return select(vec4<bool>(!(!(!global0[_wgslsmith_index_u32(var_0.x, 10u)])), u_input.b >= _wgslsmith_add_i32(u_input.b, 0i | u_input.b), -u_input.b <= u_input.b, all(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 10u)], false), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.x, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)])))), vec4<bool>(true, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_0.x, ~30968u, ~u_input.a), 10u)], all(!select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 10u)], global0[_wgslsmith_index_u32(41986u, 10u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(63872u, 10u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]))), !(!global0[_wgslsmith_index_u32(32982u, 10u)]) & true), true);
}

fn func_1() -> f32 {
    let var_0 = select(select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(2631u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), vec4<bool>(false, any(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.a, 10u)])), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a), 10u)], global0[_wgslsmith_index_u32(~u_input.a, 10u)]), global0[_wgslsmith_index_u32(~u_input.a, 10u)] | false), !vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), 10u)], global0[_wgslsmith_index_u32(~0u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(22852u, 10u)]), true), select(func_5(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(global0[_wgslsmith_index_u32(39593u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)])))))), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], any(vec2<bool>(false, false)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, u_input.a), ~4294967295u), 10u)], global0[_wgslsmith_index_u32(~u_input.a >> (firstLeadingBit(4294967295u) % 32u), 10u)]), func_5(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(22653u, 28u)]))), !(!(!func_5(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], -634f)))));
    var var_1 = !(!(!(any(var_0.yyw) == (u_input.a <= 60843u))));
    var_1 = true | !(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-143f, 1300f))) < _wgslsmith_div_f32(global1[_wgslsmith_index_u32(max(41226u, 1u), 28u)], 150f));
    let var_2 = Struct_1(u_input.a, select(vec3<bool>(false, global0[_wgslsmith_index_u32(abs(~u_input.a), 10u)], all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], false, global0[_wgslsmith_index_u32(28424u, 10u)], true))), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], true)), var_0.wxw), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(47765u, 28u)], -1631f))))).x * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~29867u, 28u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 28u)] + global1[_wgslsmith_index_u32(4294967295u, 28u)]))), -1725f));
    var_1 = true;
    return _wgslsmith_f_op_f32(var_2.c + _wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-543f - 288f) - -148f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(min(u_input.a, _wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.a, firstTrailingBit(133571u)), ~_wgslsmith_mult_u32(12467u, 1u))), vec3<bool>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), _wgslsmith_mult_u32(u_input.a, u_input.a)) > ~(u_input.a & u_input.a), !(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(u_input.a, 28u)]) > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 28u)])), global0[_wgslsmith_index_u32(30715u, 10u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 28u)])) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(96727u, 2827u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 162556u)), 28u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), 28u)])))));
    let var_1 = Struct_1((84697u ^ abs(var_0.a)) ^ u_input.a, select(!(!(!var_0.b)), var_0.b, var_0.b), _wgslsmith_f_op_f32(func_1()));
    var var_2 = Struct_1(var_1.a & firstLeadingBit(~0u), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(929f - -349f)));
    let var_3 = ~abs(u_input.b);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(1131f * global1[_wgslsmith_index_u32(var_0.a, 28u)]), _wgslsmith_f_op_f32(-var_1.c), 1955f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))), var_1.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))));
    var_0 = Struct_1(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_2.a, 102896u, 13475u, u_input.a) & ~vec4<u32>(var_1.a, u_input.a, var_0.a, 1u)), max(~(~vec4<u32>(u_input.a, var_1.a, var_0.a, 8123u)), vec4<u32>(countOneBits(var_2.a), _wgslsmith_mult_u32(var_2.a, 41882u), ~var_2.a, u_input.a))), !var_2.b, _wgslsmith_f_op_f32(-var_1.c));
    let var_5 = select(!func_5(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-129f, 820f), _wgslsmith_f_op_vec2_f32(var_4.xw * vec2<f32>(-810f, -265f)), any(vec4<bool>(var_1.b.x, var_2.b.x, var_2.b.x, var_2.b.x))))), select(vec4<bool>(var_2.c <= _wgslsmith_f_op_f32(trunc(1115f)), any(vec3<bool>(true, var_0.b.x, true)), true, false), vec4<bool>(all(vec3<bool>(var_2.b.x, var_1.b.x, true)), !(var_0.a != var_0.a), false, var_2.b.x), vec4<bool>(true, false, all(vec3<bool>(var_0.b.x, true, false)), !var_0.b.x)), func_5(var_4.xx).x);
    global1 = array<f32, 28>();
    let var_6 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1020f)) * 1452f) + _wgslsmith_f_op_f32(abs(929f))), var_4.x)) < var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -239f), firstLeadingBit(_wgslsmith_sub_u32(select(0u, 1u, !var_0.b.x), ~countOneBits(28863u))));
}

