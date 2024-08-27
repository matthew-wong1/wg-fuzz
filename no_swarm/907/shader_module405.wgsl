struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_4) -> u32 {
    return 1u;
}

fn func_2() -> Struct_5 {
    let var_0 = select(~(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7972u, 31u)], 31u)], 0u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 622u, global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 10912u, global0[_wgslsmith_index_u32(1u, 31u)]), vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(377u, 31u)], 31u)], 31u)], 31u)], 31u)], 0u)) % vec3<u32>(32u))), vec3<u32>(func_3(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 4294967295u, global0[_wgslsmith_index_u32(39610u, 31u)]), vec2<u32>(global0[_wgslsmith_index_u32(0u, 31u)], 1u)), vec3<bool>(true, true, true), Struct_4(314f, u_input.c)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 8046u, 4294967295u), ~vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)])), 1u | global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)]), select(vec3<bool>(false, select(false, true, false), true), vec3<bool>(true, all(vec3<bool>(false, false, true)), true), vec3<bool>(true, all(vec2<bool>(true, false)), false))) ^ abs(vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72182u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7990u, 31u)], 31u)], 31u)], 1u), vec4<u32>(0u, 4294967295u, 18589u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41735u, 31u)], 31u)])), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(1u, 31u)], 0u, global0[_wgslsmith_index_u32(4294967295u, 31u)])), 31u)], 4294967295u, global0[_wgslsmith_index_u32(~countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)]), 31u)]));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-575f)), _wgslsmith_f_op_f32(max(-1006f, _wgslsmith_f_op_f32(sign(-1556f)))), -1985f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-337f, 1228f)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-194f, 2565f, 553f) - vec3<f32>(-912f, -290f, -862f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2099f, -1532f, -971f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1225f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1222f))), _wgslsmith_f_op_f32(230f * _wgslsmith_f_op_f32(f32(-1f) * -746f))))), 58275i, -1i);
    let var_2 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1371f, -275f, 474f, -666f), vec4<f32>(var_1.b.x, 780f, 1866f, var_1.b.x))))), vec3<f32>(274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_div_f32(-701f, var_1.b.x))), i32(-1i) * -1i, _wgslsmith_clamp_i32(-firstTrailingBit(var_1.c), var_1.c << (_wgslsmith_clamp_u32(4294967295u, 3699u, 4294967295u) % 32u), -var_1.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_f32(min(-139f, var_1.b.x))), var_1.a.yw)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_1.b.yz - vec2<f32>(var_1.b.x, -980f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-686f, 446f)))))), vec3<f32>(312f, var_1.a.x, var_1.a.x));
    var var_3 = min(var_0, var_0);
    var var_4 = Struct_4(_wgslsmith_f_op_f32(select(-720f, var_1.b.x, true)), -42155i);
    return var_2;
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: i32) -> vec2<i32> {
    var var_0 = func_2();
    var_0 = Struct_5(Struct_3(arg_0.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_0.c, vec3<f32>(-992f, -1000f, 1000f)))) * vec3<f32>(1931f, func_2().a.b.x, var_0.c.x)), u_input.c, 3972i), vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c * arg_0.a.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1069f, 633f, arg_1) * var_0.c))), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)] >= 0u, any(vec2<bool>(true, true)) && true, all(vec4<bool>(true, true, true, true))))));
    global0 = array<u32, 31>();
    var var_1 = ~45320u;
    var var_2 = true;
    return vec2<i32>(arg_2, arg_0.a.d) & vec2<i32>(1i, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-1i, 52906i, -60611i, u_input.b)), (vec4<i32>(-25630i, u_input.b, -40801i, -2147483647i) ^ vec4<i32>(-28526i, -2147483647i, -6143i, arg_0.a.d)) << (vec4<u32>(47238u, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(58688u, 31u)], 68033u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1278f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1077f))) * -483f) * 1000f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-543f, 759f))), 813f, 1i >= max(u_input.b, u_input.b))), -124f));
    var var_2 = true;
    var var_3 = _wgslsmith_dot_vec2_i32(-vec2<i32>(i32(-1i) * -1i, ~13035i) << (~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], 1u)) % vec2<u32>(32u)), ~(vec2<i32>(u_input.b >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12595u, 31u)], 31u)], 31u)] % 32u), u_input.a) & select(-vec2<i32>(u_input.a, u_input.b), func_1(Struct_5(Struct_3(vec4<f32>(1211f, var_1.x, var_1.x, var_1.x), vec3<f32>(-982f, 514f, -684f), u_input.b, u_input.b), var_1, vec3<f32>(var_1.x, 1867f, -579f)), -750f, -18342i), vec2<bool>(true, true))));
    var var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), -u_input.b);
    var var_5 = -6671i;
    let var_6 = false;
    var_4 = Struct_4(-134f, u_input.b >> (65722u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global0[_wgslsmith_index_u32(reverseBits(4294967295u), 31u)], _wgslsmith_mult_u32(~abs(global0[_wgslsmith_index_u32(1u, 31u)]), 25716u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(87343u, 31u)], 31u)], global0[_wgslsmith_index_u32(13277u, 31u)]) >> (abs(vec3<u32>(global0[_wgslsmith_index_u32(28845u, 31u)], 0u, global0[_wgslsmith_index_u32(1u, 31u)])) % vec3<u32>(32u)), ~(~vec3<u32>(4364u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18556u, 31u)], 31u)], global0[_wgslsmith_index_u32(70291u, 31u)]))), 31u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(24450u, 125703u), _wgslsmith_div_vec2_u32(vec2<u32>(8118u, 28867u), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64858u, 31u)], 31u)], 31u)], 1u)))), vec2<f32>(var_4.a, -2474f), select(~(~4294967295u), ~(~(~global0[_wgslsmith_index_u32(4294967295u, 31u)])), var_6), _wgslsmith_div_f32(571f, var_1.x), _wgslsmith_f_op_f32(max(var_4.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

