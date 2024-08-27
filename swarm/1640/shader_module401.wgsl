struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(1000f, 706f, 394f, -376f), vec4<f32>(1269f, 986f, 297f, -1000f), vec4<f32>(1894f, 605f, 502f, 650f), vec4<f32>(-603f, 314f, 1704f, -125f), vec4<f32>(-616f, -1000f, 140f, -1973f), vec4<f32>(128f, -198f, -123f, 579f), vec4<f32>(-873f, -1357f, 1633f, 884f), vec4<f32>(-288f, -1115f, 2520f, -325f), vec4<f32>(256f, -1485f, -1622f, 1499f), vec4<f32>(835f, 162f, 1011f, -1195f), vec4<f32>(-1921f, -1575f, -1075f, 1010f), vec4<f32>(-786f, -372f, -429f, 1000f), vec4<f32>(-270f, 826f, -1000f, 493f), vec4<f32>(2920f, -1163f, 1429f, 1162f), vec4<f32>(-815f, -1000f, 1160f, 772f), vec4<f32>(1074f, 929f, 1025f, 769f), vec4<f32>(829f, 456f, 862f, -1183f), vec4<f32>(519f, 657f, -723f, 775f), vec4<f32>(-132f, 1000f, -1000f, 218f), vec4<f32>(216f, 172f, 104f, -298f), vec4<f32>(-502f, -604f, -131f, -378f), vec4<f32>(-1044f, 955f, -129f, 2020f), vec4<f32>(1887f, -1188f, 598f, 520f), vec4<f32>(191f, 1490f, -1990f, -1801f), vec4<f32>(-784f, 487f, -1952f, 400f));

var<private> global1: array<f32, 20> = array<f32, 20>(508f, -1027f, -780f, 180f, 468f, -1747f, -301f, -825f, -829f, -1356f, 2060f, -1212f, 987f, -1000f, -270f, -640f, 1085f, -596f, 239f, 1053f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = false;
    let var_1 = countOneBits(arg_3.b.yzy);
    global1 = array<f32, 20>();
    global0 = array<vec4<f32>, 25>();
    let var_2 = Struct_1(arg_0, -arg_3.b);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1578f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~min(u_input.c.x, 63414u), 20u)]))));
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    global0 = array<vec4<f32>, 25>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(floor(974f))), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(5979u, u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.a, u_input.c.zx)) ^ u_input.a.x, 20u)]);
    var var_1 = Struct_1(false, -vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, 1i, -2147483647i), ~(-4781i), 0i, _wgslsmith_div_i32(i32(-1i) * -40900i, 1i)));
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(95214u, 20u)] + arg_0), _wgslsmith_f_op_f32(sign(-1504f)))))) * -2121f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-565f)) - _wgslsmith_f_op_f32(exp2(arg_1))));
}

fn func_1() -> vec3<bool> {
    global0 = array<vec4<f32>, 25>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-122f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~91082u), 20u)] + global1[_wgslsmith_index_u32(41855u, 20u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(740f + global1[_wgslsmith_index_u32(u_input.a.x, 20u)]) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 20u)] - -1311f)), select(any(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true)), all(vec4<bool>(true, true, false, true)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1614f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.a.x, 20u)] + _wgslsmith_f_op_f32(trunc(1173f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, vec3<bool>(true, false, true), Struct_1(true, vec4<i32>(-48813i, 0i, 30497i, 103562i)), Struct_1(true, vec4<i32>(0i, 1221i, 1i, 46170i)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(570f + global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_f_op_f32(func_2(false, vec3<bool>(true, true, false), Struct_1(false, vec4<i32>(72184i, 1i, -24789i, -4315i)), Struct_1(false, vec4<i32>(1i, 19277i, 78275i, -80431i)))))), -1318f))));
    var var_1 = max(-firstLeadingBit(vec3<i32>(1i, 1i, 1i)), abs(max(vec3<i32>(1i, 1i, 1i), -vec3<i32>(1i, 1i, 1i))));
    let var_2 = Struct_1(_wgslsmith_mod_i32(~var_1.x, ~var_1.x | -1i) < countOneBits(firstTrailingBit(select(1i, -34128i, true))), -firstLeadingBit(~(vec4<i32>(var_1.x, var_1.x, 0i, var_1.x) << (vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 29296u) % vec4<u32>(32u)))));
    let var_3 = var_2;
    return !select(vec3<bool>(true, true, !(var_0.x > -563f)), select(select(vec3<bool>(var_2.a, var_3.a, false), select(vec3<bool>(true, var_2.a, var_2.a), vec3<bool>(true, true, var_2.a), true), !vec3<bool>(true, true, var_2.a)), vec3<bool>(false, true, all(vec2<bool>(var_2.a, true))), false), !(u_input.a.x != 20842u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 25>();
    let var_0 = func_1();
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    let var_1 = !(!(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 20u)]) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], 2885f, var_0.x)))));
    var var_2 = select(_wgslsmith_div_i32(8119i, 1i), -31025i, !func_1().x) >> (1u % 32u);
    let var_3 = global0[_wgslsmith_index_u32(~u_input.b, 25u)];
    let var_4 = 33477i;
    global0 = array<vec4<f32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

