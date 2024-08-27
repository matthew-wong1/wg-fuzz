struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
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

var<private> global0: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_4, arg_3: bool) -> u32 {
    var var_0 = Struct_1(false, _wgslsmith_f_op_f32(ceil(arg_2.a.d.x)));
    var var_1 = _wgslsmith_div_f32(arg_1.a.b, var_0.b);
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.b, arg_2.a.a.x)) - _wgslsmith_f_op_f32(step(var_0.b, arg_2.a.a.x))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(350f * 1000f)))))));
    var var_3 = Struct_3(arg_2.a.b, arg_1.d.x, all(vec3<bool>(arg_2.a.b.a, !arg_3, all(select(vec2<bool>(true, false), vec2<bool>(true, arg_2.a.b.a), var_2.a)))), arg_0.d);
    let var_4 = -max(~1i, max(u_input.b.x, _wgslsmith_clamp_i32(abs(u_input.b.x), abs(u_input.b.x), i32(-1i) * -22489i)));
    return ~27147u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(27937u, arg_1.b) | vec2<u32>(arg_2.a.c.x, arg_2.a.c.x)), reverseBits(~90847u), _wgslsmith_add_u32(18096u, arg_1.b >> (4294967295u % 32u)), ~arg_2.a.c.x), vec4<u32>(_wgslsmith_mult_u32(1u, 0u), 4294967295u, abs(arg_0.b) & 8481u, min(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(30476u, u_input.a.x, 0u, 4294967295u), vec4<u32>(40153u, 1u, arg_1.b, 44673u)))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    global0 = arg_1;
    return Struct_3(arg_2, _wgslsmith_div_u32(func_3(Struct_3(arg_2, u_input.a.x, false, vec3<u32>(0u, u_input.a.x, 11704u)), Struct_3(arg_2, u_input.a.x, arg_2.a, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), Struct_4(Struct_2(vec2<f32>(914f, -840f), arg_2, u_input.a, vec3<f32>(arg_2.b, 621f, arg_2.b))), arg_2.a), _wgslsmith_mod_u32(0u, ~u_input.a.x)) ^ u_input.a.x, !(arg_2.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(435f + arg_2.b))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(75371u, u_input.a.x), u_input.a.x, ~1u), (vec3<u32>(22900u, 0u, 0u) << (vec3<u32>(88519u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) << (~vec3<u32>(0u, u_input.a.x, 0u) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = u_input.b.xz;
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(336f))), _wgslsmith_f_op_f32(select(-856f, _wgslsmith_f_op_f32(-arg_0.b), false))), func_2(54311i, arg_0.a, func_2(0i, !func_2(u_input.b.x, arg_1.c, Struct_1(true, -307f)).c, func_2(u_input.b.x, func_2(-1i, false, arg_1.a).a.a, func_2(var_0.x, arg_2, Struct_1(arg_2, arg_0.b)).a).a).a).a, ~firstTrailingBit(~abs(arg_1.d.yz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, 1013f, arg_1.a.b)))) - vec3<f32>(-1000f, arg_1.a.b, -312f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.b, -1431f, 412f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, var_1.a.x, arg_1.a.b))) * var_1.d))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b + arg_0.b), _wgslsmith_f_op_f32(368f - arg_1.a.b)), var_1.a.x), _wgslsmith_f_op_f32(arg_1.a.b + _wgslsmith_f_op_f32(var_1.b.b + func_2(2147483647i, var_1.b.a, var_1.b).a.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1246f))))));
    var var_3 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.zx, vec2<f32>(arg_0.b, 941f), vec2<bool>(arg_0.a, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-199f, 868f) + vec2<f32>(arg_1.a.b, var_1.b.b)))), Struct_1(~16063u < arg_1.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -909f), true))), ~vec2<u32>(4294967295u, u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(449f, 1126f, -1834f) + var_1.d)))));
    var var_4 = 35076u << (~4294967295u % 32u);
    return arg_0.b;
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(false, -735f), func_2(2147483647i, false, Struct_1(true, -1242f)), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1698f)))), (~(~1u) >> (u_input.a.x % 32u)) | ~_wgslsmith_add_u32(6286u, u_input.a.x), false, vec3<u32>(u_input.a.x, 1u, ~(~68686u)));
    var var_1 = vec3<u32>(_wgslsmith_add_u32(~select(var_0.d.x, 0u, true), 0u), var_0.d.x, 0u) >> ((~var_0.d << (~vec3<u32>(u_input.a.x << (var_0.b % 32u), 11814u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(-var_0.a.b)) - -1000f) < _wgslsmith_f_op_f32(floor(var_0.a.b));
    let var_3 = Struct_4(Struct_2(vec2<f32>(var_0.a.b, -513f), func_2(i32(-1i) * -2147483647i, !(var_0.a.a | true), var_0.a).a, ~vec2<u32>(min(11123u, var_1.x), 3451u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.b, 253f) - _wgslsmith_f_op_f32(select(-656f, var_0.a.b, var_0.a.a))), _wgslsmith_f_op_f32(step(1937f, var_0.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(268f * -845f)))));
    var var_4 = _wgslsmith_div_u32(var_0.d.x, ~var_0.d.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(var_3.a.c.x, 1u, var_3.a.c.x), var_0.b, 4294967295u, 30567u), reverseBits(vec4<u32>(~var_3.a.c.x, u_input.a.x, 1767u ^ var_1.x, ~37729u)));
    return !vec4<bool>(var_0.c, false, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(-857f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f))));
    let var_1 = !select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), func_1(), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true))), !vec4<bool>(any(vec3<bool>(false, true, true)), any(vec3<bool>(false, true, true)), true, all(vec2<bool>(false, true))), !select(true, false, true));
    global0 = var_1.x;
    global0 = select(var_1.x, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_div_f32(1041f, -331f)) > var_0), true);
    global0 = true;
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-1188f, var_0), _wgslsmith_f_op_f32(f32(-1f) * -712f)))), Struct_1(all(vec2<bool>(var_1.x, var_1.x)), _wgslsmith_f_op_f32(var_0 * var_0)), vec2<u32>(firstTrailingBit(33965u), u_input.a.x | 55034u) ^ (max(u_input.a, u_input.a) ^ vec2<u32>(1u, 1u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0 - 1068f), 2375f, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-646f, var_0, -1758f))), var_1.xyx))));
    let var_3 = vec2<i32>(12473i, countOneBits(1i)) << (min(~var_2.a.c ^ vec2<u32>(min(1u, var_2.a.c.x), 0u), func_2(~1i, !(!var_2.a.b.a), Struct_1(!var_1.x, _wgslsmith_f_op_f32(var_0 + var_0))).d.yy) % vec2<u32>(32u));
    let var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(Struct_1(func_1().x & select(true, var_1.x, true), _wgslsmith_f_op_f32(1000f - var_2.a.b.b)), Struct_3(func_2(0i, var_1.x, Struct_1(false, 1283f)).a, 128031u, true, ~(~vec3<u32>(var_2.a.c.x, 1u, 16811u))), func_1().x)));
}

