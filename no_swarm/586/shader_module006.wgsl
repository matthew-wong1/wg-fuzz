struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-951f, 136f, 201f, -1077f, -929f, 1000f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> f32 {
    let var_0 = -abs(_wgslsmith_add_vec3_i32(-max(vec3<i32>(0i, arg_2, arg_2), vec3<i32>(-1i, arg_2, arg_2)), -(~vec3<i32>(arg_2, arg_2, 41965i))));
    let var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(529f - var_1.c), 13564i, -25614i);
    global0 = array<f32, 6>();
    let var_3 = Struct_3(select(var_1.a, arg_1.a, select(!(!vec2<bool>(true, arg_1.a.x)), select(!arg_3.b, !arg_1.a, select(vec2<bool>(false, arg_3.b.x), arg_1.a, vec2<bool>(arg_3.b.x, true))), vec2<bool>(true, var_1.b < arg_1.b))), 2026f, var_1.d, 829f);
    return var_2.a;
}

fn func_2(arg_0: f32) -> vec4<f32> {
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    var var_0 = Struct_3(vec2<bool>(false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2014f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.a, 4294967295u, u_input.a), Struct_3(vec2<bool>(false, false), arg_0, arg_0, arg_0), 2147483647i, Struct_2(global0[_wgslsmith_index_u32(u_input.a, 6u)], vec2<bool>(false, false))))))) * arg_0), 568f, _wgslsmith_f_op_f32(f32(-1f) * -908f));
    var var_1 = Struct_2(850f, !vec2<bool>(var_0.a.x, ~13416u <= _wgslsmith_mult_u32(u_input.a, u_input.a)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, var_1.a, -547f, -543f), _wgslsmith_f_op_vec4_f32(vec4<f32>(393f, var_1.a, arg_0, arg_0) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], -1839f, var_1.a, -185f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -846f, var_1.a, var_0.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], -401f, 315f, var_0.c) * vec4<f32>(1841f, arg_0, 657f, arg_0))), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-289f, -641f, _wgslsmith_f_op_f32(1815f + global0[_wgslsmith_index_u32(u_input.a, 6u)]), _wgslsmith_f_op_f32(step(arg_0, arg_0))))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-269f, _wgslsmith_f_op_f32(f32(-1f) * -478f), -358f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 6u)] + global0[_wgslsmith_index_u32(4294967295u, 6u)])))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-510f - 2206f), 133f, global0[_wgslsmith_index_u32(u_input.a, 6u)], _wgslsmith_div_f32(-2703f, -1473f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 6u)], 1556f, global0[_wgslsmith_index_u32(72208u, 6u)], -1479f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(1u, 6u)], -1230f, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(30370u, 6u)])))))));
    global0 = array<f32, 6>();
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -256f, -1147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 6u)]))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - 1432f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 6u)] * 616f))))), vec4<f32>(global0[_wgslsmith_index_u32(reverseBits(min(38298u, u_input.a)), 6u)], -184f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(14305u, 6u)]))))), true)));
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 3645u, 0u, ~u_input.a) & countOneBits(vec4<u32>(55347u, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.a, 48407u, 47701u, u_input.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 9275u, u_input.a), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a) ^ vec4<u32>(25933u, 6858u, u_input.a, 1u)), _wgslsmith_sub_u32(min(u_input.a, 93541u), reverseBits(u_input.a)), ~u_input.a, _wgslsmith_clamp_u32(u_input.a, 0u, ~u_input.a))), ~vec4<u32>(u_input.a, 0u, firstLeadingBit(min(u_input.a, u_input.a)), select(~4289u, _wgslsmith_add_u32(4294967295u, u_input.a), false)));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(963f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 6u)])), -190f, global0[_wgslsmith_index_u32(var_1, 6u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(21907u, 6u)])))))));
    return _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(firstLeadingBit(19396u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 33404u, 1u, u_input.a), vec4<u32>(13511u, 0u, u_input.a, 23479u)), ~var_1), _wgslsmith_sub_u32(0u, ~var_1)) | reverseBits(1u), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(firstLeadingBit(func_1()), 6u)])));
}

