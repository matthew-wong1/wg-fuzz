struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_1(-1i <= _wgslsmith_dot_vec2_i32(u_input.c.yz, min(u_input.c.yx << (vec2<u32>(11563u, 4294967295u) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(arg_0, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1325f + _wgslsmith_f_op_f32(f32(-1f) * -1037f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1032f))), any(vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -2328f), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -338f), -1491f))), countOneBits(4294967295u), -1000f);
    let var_1 = select(-u_input.c, _wgslsmith_div_vec4_i32((vec4<i32>(-1i, u_input.c.x, arg_0, u_input.c.x) ^ vec4<i32>(-1i, 0i, arg_0, 2147483647i)) ^ firstTrailingBit(u_input.c), _wgslsmith_add_vec4_i32(u_input.c, u_input.c) ^ min(u_input.c, vec4<i32>(2147483647i, arg_0, 59765i, arg_0))) >> (~vec4<u32>(71768u, _wgslsmith_div_u32(u_input.a.x, 1u), 1u, ~1u) % vec4<u32>(32u)), !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(abs(var_0.d)))) <= _wgslsmith_f_op_f32(f32(-1f) * -540f)));
    var var_2 = Struct_1(!(any(!vec4<bool>(false, true, var_0.a, var_0.a)) & (~arg_0 >= ~u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.b))), _wgslsmith_dot_vec3_u32(select(~(~vec3<u32>(1u, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x ^ u_input.a.x, min(var_0.c, 23689u), u_input.a.x), any(select(vec2<bool>(false, false), vec2<bool>(false, var_0.a), true))), select(u_input.a, vec3<u32>(~35668u, ~u_input.a.x, abs(1u)), all(vec3<bool>(false, true, var_0.a)))), -102f);
    var_2 = Struct_1(any(!select(select(vec3<bool>(var_0.a, var_2.a, true), vec3<bool>(var_2.a, var_2.a, true), var_0.a), !vec3<bool>(false, var_0.a, var_0.a), true)), _wgslsmith_f_op_vec4_f32(var_2.b - vec4<f32>(_wgslsmith_f_op_f32(trunc(672f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-452f))), _wgslsmith_f_op_f32(floor(1433f)))), var_0.c, var_0.d);
    var_0 = Struct_1(!var_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-199f, -513f, _wgslsmith_div_f32(184f, 1000f), _wgslsmith_f_op_f32(-2085f - var_2.b.x))))), ~countOneBits(11783u), var_0.b.x);
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = !(!(!select(false, arg_0, true)));
    var var_1 = _wgslsmith_mod_i32(u_input.b, _wgslsmith_div_i32(1i, u_input.c.x));
    var var_2 = u_input.b << (51267u % 32u);
    let var_3 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, arg_1.d, _wgslsmith_f_op_f32(max(676f, arg_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -329f)))), abs(_wgslsmith_sub_u32(~countOneBits(20099u), 34241u)), arg_1.d);
    let var_4 = Struct_1(var_3.a, _wgslsmith_f_op_vec4_f32(-arg_1.b), 1u, 248f);
    return vec3<bool>(select(true & (u_input.b != (u_input.b << (arg_1.c % 32u))), arg_0, var_3.a), arg_0, func_3(u_input.c.x) && var_3.a);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = max(-5620i, _wgslsmith_add_i32(~u_input.c.x, u_input.b));
    var var_1 = u_input.c.zy;
    var var_2 = arg_2.d;
    let var_3 = arg_0;
    var var_4 = vec2<bool>(arg_0.b.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_0.d)), 1f)) * _wgslsmith_f_op_f32(step(arg_0.b.x, 948f))), !(any(select(vec2<bool>(false, true), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, false))) | func_3(firstLeadingBit(14449i))));
    return Struct_1(true, arg_2.b, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(8281u, 1u), u_input.a.zz), u_input.a.zy) ^ 87342u, arg_0.d);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = min(firstLeadingBit(4294967295u) & ~abs(firstTrailingBit(u_input.a.x)), 0u & arg_0.c);
    let var_1 = Struct_1(arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(-arg_0.b.x), -686f, _wgslsmith_div_f32(arg_0.d, arg_0.b.x)) + arg_0.b) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1717f, arg_0.b.x, false)) - arg_0.d), 2701f, arg_0.b.x, arg_0.d)), ~(~5121u), arg_0.d);
    var var_2 = arg_3;
    var_2 = any(!vec2<bool>((arg_1.x >= -1i) | arg_0.a, arg_0.a & any(vec2<bool>(true, false))));
    let var_3 = func_2(func_2(any(vec3<bool>(any(vec4<bool>(var_1.a, false, var_1.a, true)), arg_2 != false, !arg_2)), Struct_1(any(vec3<bool>(arg_3, false, var_1.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b - vec4<f32>(-1060f, -319f, arg_0.d, 1095f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1225f, var_1.d, 379f, arg_0.d))), var_1.c, -1000f)).x, arg_0).yy;
    return var_1;
}

fn func_1(arg_0: vec2<i32>) -> vec4<f32> {
    var var_0 = func_5(func_4(Struct_1(all(func_2(false, Struct_1(true, vec4<f32>(563f, 418f, 829f, -540f), 1u, 1000f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(217f, -640f, 370f, 711f))), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(499f, -666f, true)) * _wgslsmith_f_op_f32(661f + -1000f))), all(vec4<bool>(true, true, true, false)) || select(true, true, func_2(false, Struct_1(false, vec4<f32>(394f, -1090f, -986f, -906f), u_input.a.x, -250f)).x), Struct_1(_wgslsmith_mod_u32(11339u, u_input.a.x) == 36516u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(482f, -1000f, -951f, -1000f))), _wgslsmith_mult_u32(u_input.a.x, 1u ^ u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1239f)) + _wgslsmith_div_f32(-469f, 878f)))), u_input.c, true, all(vec3<bool>(false, any(vec2<bool>(true, true)), true)));
    let var_1 = func_4(Struct_1(true, _wgslsmith_f_op_vec4_f32(-var_0.b), reverseBits(0u), -1142f), ~min(~u_input.a.x, ~u_input.a.x) == ~_wgslsmith_sub_u32(10840u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 1u, 4294967295u), u_input.a)), Struct_1(var_0.a, var_0.b, func_5(func_5(func_4(Struct_1(true, var_0.b, u_input.a.x, var_0.d), var_0.a, Struct_1(var_0.a, var_0.b, u_input.a.x, -399f)), -u_input.c, true, func_3(0i)), reverseBits(~vec4<i32>(-79208i, -48178i, 0i, arg_0.x)), !all(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), var_0.a).c, _wgslsmith_f_op_f32(-var_0.d)));
    let var_2 = all(vec2<bool>((all(vec3<bool>(false, var_0.a, true)) && true) | var_1.a, func_5(var_1, vec4<i32>(-36254i, -1i, reverseBits(u_input.c.x), 47698i), false, true).a));
    var_0 = Struct_1(false, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -951f), func_4(Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1296f, -977f, -770f, var_1.b.x) + vec4<f32>(var_1.b.x, -199f, 394f, 841f)), ~var_1.c, 2032f), false, Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d, 417f, var_0.d, 665f))), var_0.c, var_0.b.x)).b.x, var_0.d, -1379f), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d)) + _wgslsmith_f_op_f32(max(var_0.d, _wgslsmith_f_op_f32(round(var_0.b.x))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_div_f32(1253f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1831f * var_0.b.x))))));
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1481f)) * var_0.d), 948f, var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2058f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1156f)), _wgslsmith_f_op_f32(-114f * 1701f), true))) - 612f);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, var_0, -830f, -1704f))) * vec4<f32>(-538f, 686f, -1208f, var_0)), vec4<f32>(var_0, _wgslsmith_div_f32(1225f, var_0), _wgslsmith_f_op_f32(step(var_0, -1021f)), _wgslsmith_f_op_f32(round(var_0))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(-u_input.c.yx)))), _wgslsmith_f_op_vec4_f32(func_4(Struct_1(true, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-827f, -1571f, var_0, var_0))), 0u, var_0), true, Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 452f, var_0, -478f)), 1596u, 1510f)).b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, var_0, var_0, var_0), vec4<f32>(var_0, -102f, var_0, -342f)))))), !(!vec4<bool>(true, true, true, func_4(Struct_1(true, vec4<f32>(var_0, var_0, -388f, var_0), 0u, 574f), true, Struct_1(false, vec4<f32>(1423f, 390f, var_0, var_0), u_input.a.x, var_0)).a))));
    var var_2 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_div_f32(-1631f, var_0), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1697f, var_0, -989f, var_0), vec4<f32>(var_1.x, 157f, -1367f, var_1.x))) * _wgslsmith_f_op_vec4_f32(-var_1)))), 42202u, 483f);
    let var_3 = ~_wgslsmith_clamp_vec4_u32(~firstTrailingBit(~vec4<u32>(0u, 0u, 141051u, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x) >> (vec4<u32>(29824u, 7699u, var_2.c, var_2.c) % vec4<u32>(32u)), abs(~vec4<u32>(6683u, 0u, var_2.c, u_input.a.x))), firstTrailingBit(vec4<u32>(u_input.a.x, var_2.c, 9290u, u_input.a.x) ^ abs(vec4<u32>(var_2.c, var_2.c, var_2.c, 4294967295u))));
    var var_4 = countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(~86873u, var_3.x, var_2.c | var_2.c, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 24492u), vec2<u32>(1u, u_input.a.x))), vec4<u32>(~var_2.c, var_2.c, 0u, ~u_input.a.x)));
    let var_5 = all(!vec3<bool>(all(vec3<bool>(var_2.a, true, var_2.a)), true, !var_2.a));
    var_4 = reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(1u, 0u, u_input.a.x, var_4.x) >> (vec4<u32>(0u, var_4.x, var_4.x, 0u) % vec4<u32>(32u)), ~var_3), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 8496u, var_3.x, var_2.c), var_3)), var_3, vec4<u32>(66880u, _wgslsmith_clamp_u32(9197u, 48968u, 0u), ~_wgslsmith_dot_vec2_u32(var_4.yy, vec2<u32>(var_4.x, var_2.c)), func_5(Struct_1(true, vec4<f32>(var_2.d, 912f, var_0, 1263f), 32597u, var_2.d), vec4<i32>(u_input.c.x, 46937i, 1i, -1i), var_2.a, var_5).c >> (1u % 32u))));
    var_2 = Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-770f, var_2.d, var_2.b.x, var_0))))), reverseBits(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_4.x, var_3.x, 138687u), vec4<u32>(17348u, var_2.c, 1u, 0u)), _wgslsmith_mult_vec4_u32(var_3, vec4<u32>(18683u, u_input.a.x, 13431u, 1194u))))), _wgslsmith_div_f32(func_4(func_4(Struct_1(true, var_2.b, u_input.a.x, var_0), !var_5, Struct_1(false, vec4<f32>(var_1.x, var_1.x, var_0, var_0), var_4.x, var_2.b.x)), any(!vec4<bool>(var_2.a, var_5, false, false)), func_4(Struct_1(false, vec4<f32>(-1455f, -1128f, 713f, var_0), var_4.x, 2320f), false, Struct_1(var_2.a, vec4<f32>(1152f, -862f, 1281f, 1225f), 0u, var_2.b.x))).d, var_2.b.x));
    var var_6 = -29159i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.wz, ~abs(~_wgslsmith_clamp_u32(4294967295u, var_2.c, 0u)));
}

