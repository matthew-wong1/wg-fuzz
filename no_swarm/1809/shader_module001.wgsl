struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global0 = select(vec2<bool>(global0.x, (1i < (-1i & u_input.b.x)) != global0.x), vec2<bool>(!(!global0.x), global0.x), any(!vec3<bool>(true, !global0.x, !global0.x)));
    return ~(~(~min(~u_input.a, vec2<u32>(u_input.c, u_input.a.x))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = select(~u_input.a, ~u_input.a << (_wgslsmith_sub_vec2_u32(func_3(Struct_1(-790f, -1i, -322f)) << (~u_input.a % vec2<u32>(32u)), u_input.a) % vec2<u32>(32u)), !arg_1.x);
    let var_1 = 1i;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(516f + 750f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), (0i | ~var_1) & (u_input.b.x << (~26917u % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(797f + 1312f))))), global0.x);
    global0 = !(!select(select(arg_1.xx, !arg_1.yz, arg_1.yx), !arg_1.xy, false));
    global0 = vec2<bool>(any(select(select(select(vec4<bool>(true, var_2.b, var_2.b, arg_1.x), vec4<bool>(global0.x, false, true, var_2.b), true), !vec4<bool>(var_2.b, true, arg_1.x, var_2.b), false), vec4<bool>(all(vec4<bool>(arg_1.x, var_2.b, false, global0.x)), any(vec3<bool>(var_2.b, true, false)), var_2.a.c >= 110f, var_2.a.c < 124f), !global0.x)), global0.x);
    return Struct_3(all(!arg_1), Struct_2(var_2.a, var_2.b), Struct_1(_wgslsmith_f_op_f32(min(var_2.a.a, _wgslsmith_f_op_f32(select(var_2.a.c, _wgslsmith_f_op_f32(-var_2.a.a), any(vec4<bool>(false, global0.x, true, global0.x)))))), var_1 >> (~_wgslsmith_mod_u32(81628u, 1u) % 32u), _wgslsmith_div_f32(-1361f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-303f))))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    global0 = arg_2.yw;
    global0 = arg_2.xx;
    var var_0 = arg_2.yzz;
    var_0 = vec3<bool>(var_0.x, arg_2.x, var_0.x && all(!(!vec4<bool>(var_0.x, false, true, global0.x))));
    let var_1 = vec4<f32>(-887f, 945f, _wgslsmith_f_op_f32(min(-290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(arg_1.b.a.a * arg_1.b.a.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.a.a, arg_1.b.a.c) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.b.a.c)) + _wgslsmith_f_op_f32(f32(-1f) * -101f)))));
    return _wgslsmith_f_op_f32(581f - 1398f);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_3(true, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c, arg_1.c)), _wgslsmith_div_i32(1i, ~0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2361f - arg_1.a))), true), Struct_1(arg_1.a, i32(-1i) * -2147483647i, arg_1.c));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-392f + 288f) - _wgslsmith_f_op_f32(arg_1.c + var_0.c.c)), _wgslsmith_f_op_f32(func_4(-39026i, func_2(u_input.a.x, vec3<bool>(arg_2, true, arg_2)), !vec4<bool>(var_0.b.b, true, global0.x, arg_2), _wgslsmith_clamp_u32(u_input.c, u_input.a.x, 4294967295u))), var_0.c.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, var_0.c.c))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.c - var_0.b.a.c)), _wgslsmith_f_op_f32(sign(arg_1.c)), _wgslsmith_f_op_f32(ceil(1000f)), 1000f));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + 1000f)) == arg_1.c, var_0.b, var_0.b.a);
    var var_2 = vec3<f32>(var_0.c.a, _wgslsmith_f_op_f32(var_0.b.a.c * _wgslsmith_f_op_f32(var_0.c.a + -311f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c - 808f)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.c.a)), 361f, arg_2)))), _wgslsmith_add_i32(1i & min(select(-2507i, var_0.b.a.b, arg_2), -1i), _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 38732i, u_input.b.x), vec3<i32>(arg_0, 38038i, 0i)) ^ 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return func_2(~func_3(var_0.c).x, vec3<bool>(!(!var_0.b.b), (_wgslsmith_sub_u32(72696u, 49983u) >> (~u_input.c % 32u)) >= _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, u_input.c), all(select(!vec3<bool>(true, arg_2, true), !vec3<bool>(true, var_0.a, arg_2), arg_3.x || arg_3.x)))).b.a;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c), 1091f, _wgslsmith_f_op_f32(-arg_0.x), 1f), vec4<f32>(530f, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(710f * 516f))), _wgslsmith_div_f32(arg_1.x, func_1(46699i, arg_2, global0.x | false, select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), true)).a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(1i, Struct_3(false, Struct_2(arg_2, true), arg_2), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(true, global0.x, global0.x, true), global0.x), ~11009u))))), global0.x));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -1021f, 275f, arg_2.a), _wgslsmith_f_op_vec4_f32(step(arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_0, vec4<f32>(arg_2.a, arg_2.c, var_0.x, var_0.x)))))) * _wgslsmith_f_op_vec4_f32(-arg_0)));
    let var_1 = !(!select(!(!vec4<bool>(false, false, global0.x, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, false, false, global0.x), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x))), true));
    let var_2 = Struct_1(-989f, ~arg_2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -894f))))));
    global0 = var_1.wz;
    return vec2<bool>(true, true);
}

fn func_6(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> vec4<u32> {
    global0 = !arg_1;
    var var_0 = Struct_3(all(select(vec4<bool>(!arg_1.x, arg_2.x, any(vec3<bool>(true, global0.x, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), arg_1.x), arg_1.x && arg_1.x)), func_2(u_input.c, !vec3<bool>(true, all(vec2<bool>(false, false)), any(vec4<bool>(true, true, false, false)))).b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(29127i, Struct_3(arg_2.x, Struct_2(Struct_1(-267f, 2147483647i, 350f), global0.x), Struct_1(144f, 1i, 962f)), vec4<bool>(global0.x, true, true, false), 12749u))), select(-(i32(-1i) * -59888i), u_input.b.x, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(958f)), -1302f))));
    var_0 = Struct_3(!(!select(true, global0.x, global0.x)) && true, Struct_2(var_0.b.a, false), var_0.b.a);
    global0 = vec2<bool>(true, !func_2(_wgslsmith_mult_u32(~arg_0.x, ~arg_0.x), vec3<bool>(!var_0.b.b, true, var_0.b.a.c < var_0.b.a.c)).b.b);
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a, -136f, -1000f, var_0.c.c) - vec4<f32>(var_0.b.a.a, -1085f, var_0.c.c, 151f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1535f, 717f, 316f, 1575f) - vec4<f32>(var_0.c.c, -1557f, 1000f, var_0.c.c)))), vec4<f32>(var_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(func_4(-15963i, Struct_3(var_0.a, var_0.b, var_0.b.a), vec4<bool>(arg_1.x, false, arg_1.x, arg_2.x), 1u))), var_0.b.a.a))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.c.c, _wgslsmith_f_op_f32(sign(215f)))), var_0.b.a.c, 418f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-723f, 1000f, var_0.b.a.c), vec3<f32>(464f, var_0.c.c, var_0.b.a.c))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.a.c, var_0.c.a, var_0.c.c))))))), var_0.b.a).x;
    return abs(vec4<u32>(1u, 16692u, ~(23146u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 43787u, arg_0.x, 840u), vec4<u32>(arg_0.x, 10458u, arg_0.x, 43768u))), ~40621u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(u_input.a.x, 67935u);
    global0 = !vec2<bool>(true, 1u != u_input.a.x);
    var var_1 = _wgslsmith_div_vec4_u32(~(~firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 0u)))), func_6(u_input.a, !select(!vec2<bool>(global0.x, global0.x), !vec2<bool>(true, global0.x), !vec2<bool>(global0.x, true)), !func_5(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-669f, 799f, -1141f, -784f))), vec3<f32>(-805f, 951f, -1000f), func_1(2147483647i, Struct_1(424f, -1i, -1174f), true, vec2<bool>(global0.x, global0.x)))));
    global0 = !(!select(vec2<bool>(true, true), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), global0.x), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, global0.x))));
    let var_2 = func_1(firstLeadingBit(u_input.b.x) | -32626i, func_2(~_wgslsmith_clamp_u32(~10839u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), var_1.xy)), vec3<bool>(false, global0.x, true)).c, global0.x, vec2<bool>(any(!(!vec3<bool>(global0.x, global0.x, false))), global0.x));
    var var_3 = Struct_2(Struct_1(127f, _wgslsmith_mod_i32(-2147483647i, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_2.c) - _wgslsmith_f_op_f32(min(var_2.a, var_2.a))) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-323f, var_2.c), 149f)))), ~min(~var_2.b, i32(-1i) * -47699i) > ~_wgslsmith_mult_i32(max(var_2.b, -71070i), u_input.b.x | 6809i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(countOneBits(~(vec4<u32>(var_1.x, u_input.c, 1u, 12113u) >> (vec4<u32>(97802u, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, _wgslsmith_mult_u32(u_input.c, 49893u), ~var_1.x, countOneBits(var_1.x)), vec4<u32>(var_1.x, 12277u, 1u, 11272u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1390f), -1000f, _wgslsmith_f_op_f32(max(var_2.a, var_2.c))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2266f, -424f, -242f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1735f, -1069f, -1000f) + vec3<f32>(778f, var_2.a, var_2.a)))), vec3<f32>(-226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f)), _wgslsmith_f_op_f32(round(509f)))));
}

