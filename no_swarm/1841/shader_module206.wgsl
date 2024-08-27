struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_add_vec3_i32(abs(vec3<i32>(~countOneBits(arg_1), arg_3.x, ~arg_1)), abs(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(20212i, arg_1, arg_1)), arg_3) & (arg_3 ^ select(vec3<i32>(arg_1, arg_1, -10782i), arg_3, arg_0.b.x))));
    let var_1 = Struct_1(~18646u, !(!arg_0.b), vec4<f32>(_wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + 662f)), _wgslsmith_f_op_f32(floor(394f)), arg_0.c.x, arg_0.c.x));
    var var_2 = 4294967295u;
    var_2 = ~_wgslsmith_mod_u32(max(u_input.a.x, 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(5774u, arg_0.a), vec2<u32>(u_input.a.x, 54025u)), u_input.a << (vec2<u32>(4294967295u, 62332u) % vec2<u32>(32u))) >> (16494u % 32u));
    var_0 = reverseBits(arg_3);
    return vec4<bool>(!all(select(var_1.b, vec4<bool>(arg_2, arg_0.b.x, arg_0.b.x, false), true & var_1.b.x)), false, true, true);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -446f);
    var var_1 = u_input.a.x;
    var_1 = ~11199u;
    var var_2 = -arg_0;
    let var_3 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a & u_input.a), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), func_3(Struct_1(u_input.a.x, vec4<bool>(false, true, true, true), vec4<f32>(-1266f, 179f, 645f, var_0)), 2147483647i, false, vec3<i32>(53583i, 9755i, 0i)), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false), func_3(Struct_1(44671u, vec4<bool>(false, false, false, true), vec4<f32>(-566f, -1133f, 582f, var_0)), -arg_0, true, -vec3<i32>(arg_0, arg_0, 2147483647i)).x), 0u != _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(805f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f)), -1024f, _wgslsmith_f_op_f32(f32(-1f) * -152f)));
    return Struct_1(699u, func_3(var_3, arg_0, all(vec2<bool>(var_3.b.x, var_3.b.x)), ~countOneBits(countOneBits(vec3<i32>(arg_0, arg_0, -69673i)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(-1024f, 834f)), 2170f, _wgslsmith_f_op_f32(ceil(-193f)), var_0))))));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = !(!any(vec4<bool>(true, !arg_0.b.x, arg_0.b.x, arg_0.c.x <= -1000f)));
    var var_1 = -select(-_wgslsmith_mod_i32(select(1i, 0i, arg_0.b.x), reverseBits(0i)), _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -35317i, 0i), vec3<i32>(-1i, 17058i, -2147483647i)), 2147483647i), all(vec2<bool>(false, var_0)));
    let var_2 = u_input.a;
    let var_3 = arg_0;
    let var_4 = func_2(_wgslsmith_mod_i32(_wgslsmith_div_i32(reverseBits(1i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(16314i, 1756i, 2147483647i), vec3<i32>(24720i, 23706i, 0i))), _wgslsmith_div_i32(1i, -2147483647i >> (firstTrailingBit(1u) % 32u))));
    return vec4<bool>(!(!any(var_4.b.www) && select(all(vec2<bool>(false, true)), func_3(var_3, -2247i, false, vec3<i32>(2147483647i, -1i, 2147483647i)).x, var_0)), any(select(func_2(_wgslsmith_div_i32(4949i, 2147483647i)).b.yz, vec2<bool>(arg_0.b.x, true), select(arg_0.b.zw, vec2<bool>(false, var_3.b.x), vec2<bool>(true, var_4.b.x)))), !(!((arg_0.a ^ 26780u) == _wgslsmith_dot_vec3_u32(vec3<u32>(13712u, var_3.a, var_3.a), vec3<u32>(var_3.a, var_4.a, var_3.a)))), var_3.b.x | (-2147483647i < (_wgslsmith_clamp_i32(-2147483647i, 25577i, 1i) & 840i)));
}

fn func_1(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = Struct_1((~(~u_input.a.x) << (0u % 32u)) ^ ((u_input.a.x >> (u_input.a.x % 32u)) & u_input.a.x), select(!func_4(func_2(-19667i)), !vec4<bool>(false, func_4(Struct_1(74074u, vec4<bool>(false, false, true, true), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))).x, true, all(vec4<bool>(false, false, false, true))), !func_3(func_2(-32078i), abs(0i), true, ~vec3<i32>(-40276i, 56102i, 9371i)).x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-278f, arg_0.x, -167f, -435f), vec4<f32>(arg_0.x, -182f, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1798f, -200f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 870f, -383f) - vec4<f32>(-753f, arg_0.x, arg_0.x, arg_0.x))) - vec4<f32>(259f, _wgslsmith_f_op_f32(arg_0.x - -496f), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1125f))))));
    var var_1 = ~vec2<u32>(countOneBits(~2593u), ~1u) << (vec2<u32>(~select(u_input.a.x, 0u, false) & ~reverseBits(89140u), abs(426u)) % vec2<u32>(32u));
    var_0 = func_2(30906i);
    var_0 = func_2(firstLeadingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 32708i), vec2<i32>(-20907i, i32(-1i) * -999i))));
    var var_2 = u_input.a;
    return _wgslsmith_f_op_vec4_f32(func_2(1i).c * _wgslsmith_f_op_vec4_f32(var_0.c * var_0.c));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = false;
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = -_wgslsmith_div_i32(abs(1i), -31947i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(-arg_0.c.x)));
    return Struct_1(_wgslsmith_mod_u32(abs(~14920u), countOneBits(~u_input.a.x)), !var_1.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(u_input.a.x), vec4<bool>(true, false, true, all(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1103f)) + _wgslsmith_f_op_f32(trunc(709f)))), _wgslsmith_f_op_f32(374f + _wgslsmith_f_op_f32(min(-739f, _wgslsmith_f_op_f32(floor(1484f))))), 493f, 1000f));
    var_0 = func_5(Struct_1(u_input.a.x | u_input.a.x, vec4<bool>(true, true, var_0.b.x, true), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.zzw + var_0.c.yzx), var_0.c.xyz)))), !((_wgslsmith_mult_i32(1473i, 12601i) << (~var_0.a % 32u)) <= countOneBits(reverseBits(2147483647i))));
    let var_1 = Struct_1(4294967295u, !select(var_0.b, vec4<bool>(var_0.b.x & false, true, false, !var_0.b.x), var_0.b), vec4<f32>(-205f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x), var_0.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x) * _wgslsmith_f_op_f32(1418f - -1000f))), var_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(func_5(Struct_1(var_0.a, var_0.b, vec4<f32>(594f, var_0.c.x, var_0.c.x, 104f)), true).c.x)), var_0.c.x)));
    let var_2 = ~(vec4<i32>(-1i) * -select(vec4<i32>(-31411i, 0i, 0i, 0i), -vec4<i32>(1i, 1i, 1i, -22316i), false & var_0.b.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(f32(-1f) * -1534f)))), _wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x - var_1.c.x), _wgslsmith_div_f32(var_1.c.x, 1173f), _wgslsmith_f_op_f32(round(1000f))))).x, 4294967295u > min(~var_1.a, countOneBits(23393u)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.c.x));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -855f) + var_1.c.x));
    var_0 = func_2(33685i);
    let var_5 = func_2(~(~(-4591i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, 13607u, min(~var_2.x, ~(-(var_2.x << (40651u % 32u)))), u_input.a);
}

