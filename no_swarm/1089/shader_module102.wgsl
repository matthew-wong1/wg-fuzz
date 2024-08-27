struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
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

var<private> global0: array<vec2<u32>, 23>;

var<private> global1: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = vec4<i32>(12574i, 2147483647i, 1946i & -u_input.a.x, -46342i);
    var var_1 = select(select(vec4<bool>(global1.a.d, any(vec3<bool>(global1.a.d, true, false)), false, !any(vec4<bool>(global1.a.d, global1.a.d, global1.a.d, global1.a.d))), vec4<bool>(any(select(vec3<bool>(false, global1.a.d, false), vec3<bool>(global1.a.d, false, global1.a.d), vec3<bool>(true, global1.a.d, false))), any(select(vec3<bool>(true, false, global1.a.d), vec3<bool>(false, global1.a.d, global1.a.d), false)), all(select(vec3<bool>(false, global1.a.d, global1.a.d), vec3<bool>(true, global1.a.d, false), vec3<bool>(true, false, global1.a.d))), global1.a.d), vec4<bool>(!select(global1.a.d, false, true), true, !global1.a.d, true)), !select(select(vec4<bool>(true, global1.a.d, global1.a.d, global1.a.d), vec4<bool>(global1.a.d, global1.a.d, global1.a.d, global1.a.d), !global1.a.d), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, global1.a.d, global1.a.d, true), vec4<bool>(true, global1.a.d, global1.a.d, global1.a.d)), vec4<bool>(true, global1.a.d, false, global1.a.d), !vec4<bool>(true, global1.a.d, false, global1.a.d)), vec4<bool>(any(vec4<bool>(false, global1.a.d, global1.a.d, global1.a.d)), all(vec3<bool>(global1.a.d, global1.a.d, global1.a.d)), global1.a.e.x < 802f, true)), select(vec4<bool>(false, global1.a.d, !any(vec2<bool>(false, false)), global1.a.d), select(vec4<bool>(false, any(vec4<bool>(global1.a.d, false, global1.a.d, false)), true, true), !vec4<bool>(global1.a.d, true, global1.a.d, global1.a.d), select(!vec4<bool>(false, false, true, global1.a.d), !vec4<bool>(false, global1.a.d, true, false), select(vec4<bool>(global1.a.d, global1.a.d, global1.a.d, true), vec4<bool>(false, true, false, global1.a.d), global1.a.d))), global1.a.d));
    var var_2 = firstLeadingBit(var_0.yxy);
    global1 = Struct_2(Struct_1(_wgslsmith_mult_u32(0u, 1u), _wgslsmith_mod_i32(-25609i | (var_2.x & 1i), arg_0), _wgslsmith_mod_u32(1u, ~(~global1.a.c)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.e) - global1.a.e)));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1620f, 206f, global1.a.e.x, 693f)), vec4<f32>(-242f, global1.a.e.x, -926f, -1519f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a.e.x, -700f, global1.a.e.x, global1.a.e.x))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1339f, global1.a.e.x, global1.a.e.x, -1482f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(global1.a.e.x, -1275f, global1.a.d)), -773f, _wgslsmith_f_op_f32(select(global1.a.e.x, -351f, global1.a.d)), _wgslsmith_f_op_f32(global1.a.e.x * global1.a.e.x))))));
    return var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = Struct_1(27415u, ~(~(~_wgslsmith_sub_i32(arg_0.b, u_input.b.x))), 6714u, !arg_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.e * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1859f, global1.a.e.x, 178f))), vec3<f32>(1000f, -654f, arg_1.e.x))))));
    var var_1 = !(!vec4<bool>(_wgslsmith_f_op_f32(ceil(104f)) >= -782f, arg_1.c <= _wgslsmith_mult_u32(82725u, arg_2.x), false, arg_1.d));
    let var_2 = Struct_2(Struct_1(select(reverseBits(_wgslsmith_add_u32(arg_1.c, var_0.a)), countOneBits(arg_2.x), false), -abs(_wgslsmith_div_i32(-916i, global1.a.b)), reverseBits(u_input.c), (any(var_1.xx) && arg_1.d) || arg_1.d, _wgslsmith_f_op_vec3_f32(sign(var_0.e))));
    global0 = array<vec2<u32>, 23>();
    var_1 = vec4<bool>(true, any(var_1.zx), select(~firstLeadingBit(22963u), u_input.c, true) < (~(~var_2.a.c) ^ (u_input.c >> (4294967295u % 32u))), true);
    return vec3<u32>(var_0.a, 0u, abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(countOneBits(var_0.c), _wgslsmith_clamp_u32(4294967295u, 1u, 9076u)), global1.a.c)));
}

fn func_2() -> Struct_2 {
    var var_0 = func_4(global1.a, Struct_1(~4294967295u, _wgslsmith_clamp_i32(func_3(i32(-1i) * -2147483647i), ~(i32(-1i) * -15186i), u_input.b.x), ~(~4294967295u), true, vec3<f32>(global1.a.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-973f + 588f) + _wgslsmith_f_op_f32(abs(global1.a.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.e.x))))), vec3<u32>(((global1.a.a & global1.a.c) | (17616u & global1.a.a)) ^ ~_wgslsmith_mod_u32(u_input.c, 37673u), global1.a.c, ~0u));
    global1 = Struct_2(global1.a);
    let var_1 = 0i;
    global0 = array<vec2<u32>, 23>();
    let var_2 = !all(!(!(!vec4<bool>(global1.a.d, true, global1.a.d, false))));
    return Struct_2(Struct_1(0u, ~_wgslsmith_add_i32(0i, -global1.a.b), var_0.x, false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-475f, global1.a.e.x, -1479f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.e.x, 170f, 659f) + vec3<f32>(-593f, -2285f, 2160f)))) - _wgslsmith_f_op_vec3_f32(global1.a.e - vec3<f32>(-1454f, global1.a.e.x, global1.a.e.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~(min(vec4<u32>(global1.a.c, u_input.c, global1.a.c, 15188u) | vec4<u32>(u_input.c, u_input.c, global1.a.c, u_input.c), abs(vec4<u32>(global1.a.a, u_input.c, 47713u, 67890u))) | countOneBits(~vec4<u32>(u_input.c, global1.a.c, global1.a.a, 17096u))));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-292f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.e.x))))));
    global0 = array<vec2<u32>, 23>();
    var var_3 = 4294967295u;
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.a);
    let var_1 = -143f;
    var var_2 = Struct_2(var_0.a);
    var_0 = Struct_2(func_1());
    var_0 = func_2();
    let var_3 = _wgslsmith_div_vec4_u32(~min(firstLeadingBit(vec4<u32>(0u, 28546u, 1u, global1.a.a)), ~(~vec4<u32>(77429u, 47679u, u_input.c, 77761u))), abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global1.a.a, 1u, 8647u), vec4<u32>(51576u, 1u, 0u, u_input.c), vec4<u32>(8344u, 2664u, 4294967295u, var_0.a.a))) | vec4<u32>(1u, 1u, var_0.a.c, ~(~u_input.c)));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.e) + vec3<f32>(_wgslsmith_f_op_f32(-1226f + _wgslsmith_f_op_f32(-var_2.a.e.x)), 316f, global1.a.e.x)) + vec3<f32>(func_2().a.e.x, _wgslsmith_f_op_f32(1950f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.e.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.e.x * 1077f) * _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1610f)))));
}

