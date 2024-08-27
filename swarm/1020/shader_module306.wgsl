struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(0i, 4678i, 2147483647i, 19776i), vec4<i32>(1i, -20324i, i32(-2147483648), 2147483647i), vec4<i32>(-54833i, -48567i, i32(-2147483648), 1i), vec4<i32>(-1i, 48658i, 5814i, 2147483647i), vec4<i32>(2147483647i, 17250i, 4026i, i32(-2147483648)), vec4<i32>(60288i, -5413i, -5768i, 2147483647i), vec4<i32>(0i, -22221i, 0i, 0i), vec4<i32>(-30781i, -11526i, 20057i, 0i), vec4<i32>(1i, -1i, 7701i, 27235i), vec4<i32>(2147483647i, -42194i, 45158i, 42591i), vec4<i32>(-1i, 0i, -40009i, -25605i), vec4<i32>(-1i, -1i, 54974i, 9675i), vec4<i32>(0i, i32(-2147483648), -3200i, -1i), vec4<i32>(-58048i, -4532i, 0i, -66674i), vec4<i32>(4815i, 40529i, 10025i, 16115i), vec4<i32>(-1i, -1i, 38437i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, 23177i, 34192i), vec4<i32>(1i, 39475i, 0i, 1i), vec4<i32>(i32(-2147483648), 24142i, -9377i, -23370i), vec4<i32>(-26659i, 78916i, -28998i, -599i));

var<private> global2: u32 = 35988u;

var<private> global3: vec4<f32> = vec4<f32>(365f, 305f, -908f, -169f);

var<private> global4: array<u32, 15>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global4 = array<u32, 15>();
    var var_0 = Struct_1(false);
    var var_1 = vec2<u32>(firstLeadingBit(4294967295u), 0u);
    var var_2 = _wgslsmith_clamp_u32(~(~firstLeadingBit(global4[_wgslsmith_index_u32(1u, 15u)])), _wgslsmith_mod_u32(4294967295u, 1u), firstTrailingBit(~65990u)) != _wgslsmith_add_u32(~1u, _wgslsmith_add_u32(~1u, abs(var_1.x) & countOneBits(u_input.d)));
    var_2 = _wgslsmith_f_op_f32(-global3.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f));
    return var_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec2<bool> {
    global4 = array<u32, 15>();
    let var_0 = global0[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(func_3(true, global0[_wgslsmith_index_u32(~u_input.a.x, 27u)]), 15u)], 15u)], 15u)]), 27u)];
    global1 = array<vec4<i32>, 20>();
    global3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(737f)) + _wgslsmith_f_op_f32(select(-412f, _wgslsmith_f_op_f32(443f - global3.x), true))))), global3.x, 106f, 443f);
    let var_1 = all(vec2<bool>(!(false != (var_0.a && arg_2)), !any(vec2<bool>(false, false))));
    return vec2<bool>(var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1856f)))) > _wgslsmith_f_op_f32(floor(497f)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !select(vec2<bool>(arg_0.a, all(vec4<bool>(false, arg_0.a, false, arg_0.a))), select(select(select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true)), select(vec2<bool>(true, false), vec2<bool>(arg_0.a, arg_0.a), arg_0.a), func_2(Struct_1(arg_0.a), u_input.b, false)), func_2(arg_0, -14205i, true), false), arg_0.a);
    let var_1 = arg_0;
    var var_2 = var_0.x;
    var_0 = !func_2(global0[_wgslsmith_index_u32(max(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 56970u, 29559u, u_input.d), vec4<u32>(40126u, 23125u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(26583u, 15u)], 15u)], 41779u)), 24489u & u_input.d), 27u)], -28178i, any(vec3<bool>(true, true, all(vec2<bool>(true, true)))));
    var var_3 = global0[_wgslsmith_index_u32(~1u, 27u)];
    return Struct_1(false | any(select(select(vec4<bool>(true, var_3.a, true, var_0.x), vec4<bool>(true, true, false, false), var_1.a), select(vec4<bool>(true, arg_0.a, var_3.a, false), vec4<bool>(var_0.x, false, var_3.a, var_0.x), vec4<bool>(var_3.a, false, arg_0.a, false)), global4[_wgslsmith_index_u32(u_input.d, 15u)] >= 0u)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(!func_1(Struct_1(true)).a);
    var var_1 = abs(4294967295u);
    global3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, 365f, global3.x, global3.x), vec4<f32>(-848f, global3.x, global3.x, global3.x), vec4<bool>(false, var_0.a, arg_1.a, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 456f, global3.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, global3.x, 1000f, -618f))), vec4<f32>(global3.x, -509f, global3.x, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(587f, 120f, global3.x, 2106f))))))));
    global3 = _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), 563f, global3.x), vec4<f32>(-355f, -1000f, _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, 244f) * 1135f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global3.x)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1995f))))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -672f);
    return Struct_1(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-997f, -276f, -881f, global3.x)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x * -270f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_f_op_f32(-1223f * global3.x))), global3.x))));
    var var_0 = func_4(-6556i, func_1(Struct_1(any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)))), vec4<i32>(u_input.c, -u_input.e.x, 781i, -2147483647i));
    global3 = vec4<f32>(-306f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.x), 190f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-918f, -2413f)))));
    let var_1 = countOneBits(select(vec3<i32>(u_input.b, _wgslsmith_div_i32(abs(u_input.c), 32716i), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c, 21443i), -973i)), u_input.e.wyx, vec3<bool>(var_0.a, _wgslsmith_f_op_f32(-global3.x) == 187f, !all(vec3<bool>(var_0.a, true, var_0.a)))));
    let var_2 = ~reverseBits(var_1.x);
    var var_3 = vec2<bool>(true, var_0.a);
    let var_4 = vec3<f32>(global3.x, 922f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 217f))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, 36074u, _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1184f, 315f))), global3.yx) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.wx))));
}

