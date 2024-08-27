struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> vec2<f32> {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, firstTrailingBit(u_input.a), u_input.a), ~(~u_input.a), select(_wgslsmith_mult_u32(abs(1u), u_input.b), select(_wgslsmith_mod_u32(u_input.b, u_input.b), 25599u, true), any(vec3<bool>(true, true, true)))) > reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 50237u, 0u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u)), u_input.a, select(1u, 47862u, false)), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 24774u, u_input.a))));
    let var_1 = Struct_2(Struct_1(vec3<bool>(false, true, global0.a.b || select(false, false, global0.a.b)), select(_wgslsmith_sub_u32(0u, u_input.a), u_input.a & u_input.b, all(global0.a.a)) != ~select(63174u, u_input.a, global0.b.a.x)), Struct_1(!global0.b.a, all(!(!vec3<bool>(global0.a.b, global0.b.b, global0.b.a.x)))));
    let var_2 = var_1.b;
    var_0 = var_1.a.a.x;
    var_0 = all(vec2<bool>(false, false));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, -637f)))))), vec2<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(abs(870f)))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = var_0;
    global0 = var_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - -1107f), 613f) * _wgslsmith_f_op_vec2_f32(func_3(~(-14503i), abs(u_input.c)))));
    let var_3 = i32(-1i) * -10013i;
    return var_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    var var_0 = arg_0;
    let var_1 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(691f + _wgslsmith_f_op_vec2_f32(func_3(12308i, vec4<i32>(u_input.c.x, 0i, -11688i, 5496i))).x))))), arg_2, Struct_1(select(func_2(_wgslsmith_f_op_f32(abs(1360f)), Struct_2(var_0.b, var_0.b), Struct_1(vec3<bool>(false, false, arg_0.a.a.x), arg_1.b.b)).a, !var_0.b.a, !var_0.b.a.x && (true & global0.a.b)), true));
    var var_2 = Struct_2(Struct_1(vec3<bool>(_wgslsmith_f_op_f32(max(-1000f, 262f)) != _wgslsmith_f_op_f32(round(-134f)), arg_1.a.b, var_0.b.a.x), true), var_1);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1749f, -229f, 1000f) + vec4<f32>(-605f, -646f, 1000f, 219f)) * vec4<f32>(1646f, -1340f, -1356f, 1105f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-174f, -1105f, 1000f, 1000f) - vec4<f32>(-1000f, -164f, 605f, 1569f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1286f, 1724f, 112f, -1395f))), u_input.a >= 0u)))));
    var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(1147f + 2072f), _wgslsmith_f_op_f32(-var_3.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-704f, 725f, var_3.x, var_3.x) * vec4<f32>(761f, var_3.x, 541f, var_3.x))))))));
    return -352f;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = vec3<f32>(119f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(848f - -309f) - _wgslsmith_f_op_f32(sign(230f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1534f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(func_2(-699f, Struct_2(global0.a, Struct_1(global0.b.a, global0.a.b)), global0.a), global0.a), Struct_2(global0.b, global0.b), Struct_2(func_2(2520f, Struct_2(global0.b, Struct_1(vec3<bool>(global0.a.a.x, global0.a.b, global0.a.b), true)), Struct_1(vec3<bool>(global0.a.a.x, global0.b.b, false), global0.b.b)), global0.a), ~u_input.c))));
    global0 = Struct_2(func_2(var_0.x, Struct_2(func_2(_wgslsmith_f_op_f32(var_0.x + var_0.x), Struct_2(global0.b, Struct_1(global0.a.a, true)), func_2(1305f, Struct_2(Struct_1(global0.a.a, global0.b.b), Struct_1(global0.b.a, false)), global0.b)), Struct_1(select(vec3<bool>(global0.b.b, false, false), vec3<bool>(true, true, false), true), true)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), Struct_2(Struct_1(vec3<bool>(false, true, global0.a.b), global0.b.b), Struct_1(vec3<bool>(true, false, false), true)), global0.a)), Struct_1(select(!global0.b.a, !select(global0.a.a, global0.b.a, false), true), select(9356u >> (u_input.b % 32u), u_input.b, true) != u_input.a));
    let var_1 = u_input.c.x;
    global0 = Struct_2(func_2(var_0.x, Struct_2(global0.a, global0.a), Struct_1(global0.b.a, global0.b.a.x)), global0.a);
    let var_2 = func_2(var_0.x, Struct_2(global0.a, global0.b), func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1861f * var_0.x)), _wgslsmith_f_op_f32(round(-1000f)), select(global0.a.a.x, true, !global0.a.a.x))), Struct_2(global0.b, global0.b), Struct_1(vec3<bool>(true, false, var_0.x < var_0.x), global0.a.b)));
    return 50404u;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_1.b;
    var_0 = global0.a;
    var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -427f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f))), Struct_2(global0.b, Struct_1(vec3<bool>(func_2(arg_2.x, arg_3, Struct_1(vec3<bool>(global0.a.b, true, global0.a.a.x), true)).b, true, any(arg_1.a.a)), false)), global0.a);
    let var_1 = u_input.c.xzy;
    var var_2 = Struct_2(global0.b, arg_3.a);
    return Struct_2(global0.b, Struct_1(select(!(!vec3<bool>(true, var_0.b, global0.a.b)), vec3<bool>(true, u_input.b > 0u, global0.b.b | global0.b.b), abs(-1i) > var_1.x), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - 1000f), Struct_2(func_2(arg_2.x, arg_1, Struct_1(vec3<bool>(arg_3.b.b, false, true), true)), Struct_1(vec3<bool>(false, arg_3.b.b, global0.a.a.x), true)), func_2(arg_2.x, arg_3, func_2(600f, Struct_2(Struct_1(arg_3.b.a, true), Struct_1(vec3<bool>(var_0.b, true, true), global0.b.b)), arg_1.a))).b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(~abs(func_1(_wgslsmith_mult_vec3_i32(u_input.c.xxy, u_input.c.yzx))), Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2570f - -748f) * -693f), Struct_2(Struct_1(vec3<bool>(global0.b.b, global0.a.b, global0.a.b), global0.a.b), global0.b), global0.b), Struct_1(!global0.b.a, all(select(vec3<bool>(false, false, global0.b.a.x), global0.b.a, global0.a.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(589f, 2075f, 1000f, 245f) + vec4<f32>(1682f, 532f, 832f, 372f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(481f, -533f, 575f, 717f)), select(global0.b.b, global0.a.a.x, global0.b.a.x))) * vec4<f32>(_wgslsmith_f_op_f32(min(596f, 859f)), _wgslsmith_f_op_vec2_f32(func_3(u_input.d.x, vec4<i32>(-17806i, 3817i, 0i, 3903i))).x, -728f, _wgslsmith_f_op_f32(-1032f + -381f)))), Struct_2(Struct_1(global0.b.a, global0.b.a.x), Struct_1(vec3<bool>(global0.b.b, select(false, global0.b.b, false), true), any(!vec4<bool>(global0.b.a.x, global0.b.b, true, false)))));
    global0 = func_5(_wgslsmith_mult_u32(u_input.a, ~countOneBits(_wgslsmith_add_u32(5522u, u_input.a))), Struct_2(func_5(18901u, Struct_2(func_5(0u, Struct_2(Struct_1(vec3<bool>(true, global0.a.b, false), global0.b.a.x), global0.b), vec4<f32>(-107f, -1373f, 685f, 2159f), Struct_2(global0.b, global0.a)).a, Struct_1(vec3<bool>(global0.b.a.x, global0.a.a.x, false), true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1362f, 233f, 239f, 1000f)))), func_5(43014u, Struct_2(Struct_1(global0.b.a, global0.b.a.x), Struct_1(global0.a.a, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1069f, -831f, -430f, -1252f)), func_5(1u, Struct_2(Struct_1(vec3<bool>(false, global0.b.a.x, global0.b.a.x), global0.a.a.x), global0.b), vec4<f32>(1416f, -827f, 1000f, -796f), Struct_2(Struct_1(global0.b.a, global0.b.a.x), Struct_1(vec3<bool>(global0.a.a.x, global0.a.b, global0.b.b), global0.a.a.x))))).a, global0.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(872f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(-975f + 508f), -763f), func_5(u_input.b, Struct_2(Struct_1(global0.a.a, any(vec4<bool>(true, global0.b.b, false, global0.b.b))), func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(36077u, u_input.a, 11395u, 1u), vec4<u32>(u_input.a, u_input.b, u_input.b, 11699u)), Struct_2(Struct_1(vec3<bool>(global0.a.a.x, false, global0.a.b), false), Struct_1(vec3<bool>(true, false, global0.a.b), true)), vec4<f32>(-1508f, 248f, -825f, -895f), Struct_2(global0.a, Struct_1(vec3<bool>(global0.b.b, global0.b.b, true), false))).b), vec4<f32>(1f, 1f, 1f, 1f), Struct_2(global0.a, func_5(~32620u, Struct_2(global0.a, global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 686f, -575f, -1758f)), func_5(u_input.a, Struct_2(Struct_1(vec3<bool>(global0.a.a.x, global0.a.a.x, true), true), global0.a), vec4<f32>(442f, 1000f, -121f, 789f), Struct_2(Struct_1(vec3<bool>(global0.a.a.x, true, true), true), global0.b))).b)));
    var var_0 = u_input.c.zyy | vec3<i32>(-1i, max(10383i, firstTrailingBit(u_input.c.x)), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.d.x, -11220i), abs(u_input.c.x)));
    var var_1 = 6123u;
    global0 = Struct_2(Struct_1(func_2(_wgslsmith_f_op_f32(-1f), func_5(16711u, func_5(u_input.a, Struct_2(global0.b, global0.b), vec4<f32>(228f, -448f, 642f, 1264f), Struct_2(global0.a, global0.b)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(913f, 1423f, 300f, -236f))), Struct_2(global0.b, Struct_1(global0.b.a, global0.b.b))), func_5(u_input.a, Struct_2(Struct_1(vec3<bool>(global0.b.a.x, true, true), global0.a.b), global0.a), vec4<f32>(-318f, 592f, -265f, 112f), Struct_2(Struct_1(vec3<bool>(true, global0.b.a.x, global0.a.b), true), global0.a)).b).a, !any(!vec4<bool>(false, false, false, global0.b.a.x))), global0.b);
    let var_2 = func_5(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(10825u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 26816u, u_input.b), vec3<u32>(4294967295u, u_input.a, u_input.b)) << (1u % 32u), u_input.b), u_input.a), Struct_2(func_2(1560f, Struct_2(Struct_1(vec3<bool>(false, global0.b.b, true), global0.b.b), Struct_1(global0.a.a, true)), global0.b), func_5(firstLeadingBit(u_input.a), func_5(104476u, func_5(13033u, Struct_2(Struct_1(global0.a.a, false), Struct_1(vec3<bool>(global0.a.a.x, true, true), false)), vec4<f32>(773f, -422f, 1504f, -1025f), Struct_2(global0.b, Struct_1(vec3<bool>(global0.a.b, false, true), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1497f, 1000f, -490f)), func_5(63918u, Struct_2(global0.b, Struct_1(global0.a.a, global0.a.b)), vec4<f32>(-783f, 142f, -402f, 740f), Struct_2(global0.b, Struct_1(global0.a.a, false)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2227f, 736f, 457f, -1805f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, 1000f, 2029f, 961f))), Struct_2(global0.b, Struct_1(global0.b.a, global0.b.b))).b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1231f, -370f, 1000f, 1164f), vec4<f32>(-138f, 1154f, -2185f, 655f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -176f, 330f, 309f)), u_input.b == u_input.b)))), Struct_2(Struct_1(select(func_2(-1211f, Struct_2(Struct_1(global0.b.a, global0.a.b), global0.a), Struct_1(global0.b.a, true)).a, vec3<bool>(global0.a.a.x, true, global0.a.b), select(global0.b.a, vec3<bool>(true, false, global0.b.a.x), global0.b.a)), 109634u < firstLeadingBit(u_input.b)), Struct_1(vec3<bool>(true && global0.b.a.x, global0.b.b, any(vec3<bool>(false, global0.a.a.x, false))), all(!vec4<bool>(false, false, false, global0.b.a.x))))).b;
    let var_3 = func_5(u_input.a, Struct_2(Struct_1(select(!vec3<bool>(var_2.b, var_2.a.x, false), !var_2.a, var_2.b), true), Struct_1(var_2.a, var_2.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1388f, 754f, -276f, 591f) * vec4<f32>(-105f, 149f, -602f, 623f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(219f + 799f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1085f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1000f, -859f)), 381f)), 1731f)), Struct_2(global0.b, var_2)).b;
    let var_4 = func_5(~6981u, Struct_2(global0.a, global0.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(375f * _wgslsmith_div_f32(-364f, 131f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(414f, -1259f) + _wgslsmith_f_op_f32(floor(-1537f))), _wgslsmith_f_op_vec2_f32(func_3(firstLeadingBit(5543i), -u_input.c)).x))), func_5(~(~u_input.a), func_5(u_input.b, Struct_2(global0.b, global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2121f, -1051f, 725f, 266f)), func_5(0u, func_5(0u, Struct_2(Struct_1(global0.b.a, false), global0.a), vec4<f32>(-400f, 930f, 632f, 161f), Struct_2(Struct_1(var_2.a, true), var_3)), vec4<f32>(926f, -1113f, 992f, -768f), Struct_2(global0.b, Struct_1(var_2.a, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1526f, _wgslsmith_f_op_f32(-1836f - -526f), _wgslsmith_f_op_f32(-1014f * -1000f), _wgslsmith_f_op_f32(374f + 618f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(334f, -541f, 199f, -1062f))), Struct_2(var_2, var_3)));
    let var_5 = func_5(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 84143u, u_input.a), vec3<u32>(~u_input.b, u_input.b, 4294967295u)), u_input.b), Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-760f, -169f, true))), var_4, var_4.a), var_4.b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-301f, -1030f, -1113f, -556f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 907f, 151f, -1135f), vec4<f32>(-1470f, -1235f, 1245f, 627f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-950f, 2321f, 292f, -479f), vec4<f32>(-218f, 222f, -735f, 1000f), var_3.a.x))))))), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(102f, 758f, _wgslsmith_f_op_f32(f32(-1f) * -958f), _wgslsmith_div_f32(-681f, _wgslsmith_f_op_f32(floor(-936f)))))), u_input.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(785f * 160f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1078f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-268f, -2706f))))), vec3<u32>(abs(u_input.b), u_input.a, 1u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-323f, -1000f), vec2<f32>(1389f, -113f)))))))));
}

