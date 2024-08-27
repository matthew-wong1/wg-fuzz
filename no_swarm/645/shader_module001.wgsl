struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -703f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-812f * arg_0)))), -855f), !arg_2.x, _wgslsmith_div_i32(arg_3.x, (_wgslsmith_clamp_i32(arg_3.x, arg_3.x, 0i) ^ -47809i) | _wgslsmith_dot_vec3_i32(arg_3, vec3<i32>(22003i, 494i, 9053i))));
    var_0 = Struct_1(false, -1954f, arg_2.x, abs(min(1i, 2147483647i)));
    let var_1 = Struct_1(all(vec4<bool>(true, true, !all(arg_2), var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1326f - 1598f) + _wgslsmith_f_op_f32(f32(-1f) * -424f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) + 666f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_0)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-239f, var_0.b)) * _wgslsmith_div_f32(arg_0, -407f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + var_0.b), u_input.c.x);
    var_0 = Struct_1(!var_0.a, _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(-1416f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, -898f) * -162f)))), var_0.c, arg_3.x);
    var_0 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_0, var_0.b)))), _wgslsmith_f_op_f32(f32(-1f) * -1049f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<bool> {
    return vec4<bool>(true, arg_0.c, true, !arg_0.c);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = vec2<bool>(true, any(func_4(Struct_1(arg_0.a, _wgslsmith_f_op_f32(func_3(arg_0.b, vec4<u32>(2214u, u_input.b.x, 27283u, u_input.a), vec2<bool>(arg_0.a, true), u_input.c.yxy)), all(vec3<bool>(arg_0.c, false, arg_1.a)), ~u_input.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(563f, arg_1.b) - vec2<f32>(-637f, 281f))))));
    var_0 = vec2<bool>(arg_0.a, var_0.x);
    var_0 = vec2<bool>(true, var_0.x);
    var_0 = !(!select(func_4(Struct_1(true, 267f, true, u_input.c.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-837f, arg_0.b)))).xz, vec2<bool>(all(vec2<bool>(true, arg_1.a)), all(vec2<bool>(true, var_0.x))), select(select(vec2<bool>(true, true), vec2<bool>(arg_1.c, true), vec2<bool>(var_0.x, arg_0.a)), vec2<bool>(false, arg_0.a), any(vec2<bool>(arg_0.a, true)))));
    var_0 = vec2<bool>(arg_0.c, 1f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b))), any(!vec4<bool>(false, true, arg_1.c, arg_0.c)))));
    return u_input.b.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -345f) + _wgslsmith_f_op_f32(sign(-752f)))) > -181f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1287f, 704f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1047f)) + _wgslsmith_f_op_f32(f32(-1f) * -843f)))), false, countOneBits(~u_input.c.x));
    var var_1 = u_input.c;
    var var_2 = ~countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1, 0u, 1u, 2357u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, arg_0.x, arg_0.x, arg_1), vec4<u32>(arg_0.x, arg_0.x, arg_1, 49166u), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 1u))), 1u, firstTrailingBit(u_input.b.x)));
    let var_3 = var_0.d;
    let var_4 = var_0;
    return ~(i32(-1i) * -1i);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.b, 1184f))))), !any(!select(vec4<bool>(false, false, arg_1.a, arg_1.a), vec4<bool>(arg_1.c, arg_1.c, false, false), false)), func_5(vec2<u32>(func_2(arg_1, arg_1), 0u), arg_0));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - 1000f)), 657f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-488f, _wgslsmith_f_op_f32(986f - var_0.b))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(f32(-1f) * -927f));
    var var_2 = -832f;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(360f + _wgslsmith_f_op_f32(var_0.b + arg_1.b)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * _wgslsmith_f_op_f32(trunc(var_0.b)))))), var_1.x, arg_1.b);
    let var_4 = vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(47055u, arg_0, u_input.a), vec3<u32>(max(1u, 1u), min(u_input.a, 0u), arg_0), arg_1.c), vec3<u32>(21325u, u_input.b.x, select(~u_input.a, _wgslsmith_mod_u32(arg_0, arg_0), true && arg_1.a))), (arg_0 | arg_0) >> (~_wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_0, 28055u, arg_0, 4294967295u), vec4<u32>(arg_0, 0u, 81929u, arg_0)), ~vec4<u32>(u_input.a, u_input.a, arg_0, arg_0)) % 32u), ~abs(16426u));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -((-max(u_input.c.zx, vec2<i32>(-52921i, -1i)) & (u_input.c.zz | u_input.c.yy)) >> (vec2<u32>(~u_input.b.x, abs(_wgslsmith_add_u32(1u, u_input.b.x))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-441f - -138f), _wgslsmith_div_f32(arg_1.b, arg_1.b))))), arg_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b))))))));
    var var_2 = arg_0.b;
    var var_3 = func_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~0u, (59352u >> (u_input.b.x % 32u)) | ~0u), u_input.b.x), func_1((~u_input.b.x << (~1u % 32u)) ^ 4294967295u, func_1(select(u_input.a, 4294967295u, false) << (u_input.b.x % 32u), arg_0, vec4<i32>(~(-1i), 23616i, 0i, var_0.x)), ~abs(u_input.c)), u_input.c);
    let var_4 = !(arg_1.c || true);
    return Struct_1(arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1799f), -1034f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_3.b)), var_1.x), countOneBits(~var_3.d));
}

fn func_7(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_3.b, arg_3.b)))))));
    var var_2 = Struct_1(true, 1036f, arg_3.a, abs(arg_3.d));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3.b, arg_0.b), vec2<f32>(var_2.b, -836f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(357f, arg_0.b)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 541f) + vec2<f32>(var_1.x, arg_3.b)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-337f, arg_3.b) - vec2<f32>(var_1.x, 628f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, var_1.x)))), !(!vec2<bool>(var_2.a, false)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-102f * -839f), 898f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 516f)), vec2<f32>(1216f, -1343f), select(false, true, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(676f, -639f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.b, -255f)))) + vec2<f32>(arg_0.b, -836f))));
    var_0 = all(select(!vec4<bool>(true, all(vec2<bool>(var_2.c, var_2.a)), all(vec2<bool>(true, false)), true), !func_4(func_6(Struct_1(false, arg_0.b, false, -1i), arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(var_1.x, 769f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1131f * 749f))) < _wgslsmith_f_op_f32(-arg_3.b)));
    return i32(-1i) * -arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(u_input.c.x, func_7(Struct_1(false, -291f, true, u_input.c.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.b, _wgslsmith_add_vec2_u32(u_input.b, u_input.b)), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), _wgslsmith_mod_i32(-116i, -8317i)), func_6(func_1(1u, Struct_1(false, -880f, false, u_input.c.x), u_input.c), Struct_1(false, -1039f, false, u_input.c.x))), _wgslsmith_dot_vec4_i32(u_input.c, reverseBits(u_input.c)));
    let var_1 = !vec3<bool>(!select(any(vec2<bool>(false, false)), true, true), false, true);
    let var_2 = u_input.b.x;
    let var_3 = Struct_1(var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-127f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1584f) - _wgslsmith_f_op_f32(f32(-1f) * -967f)))))), select(true, true, func_4(Struct_1(false, _wgslsmith_div_f32(902f, 1272f), func_4(Struct_1(var_1.x, -268f, var_1.x, var_0.x), vec2<f32>(305f, -1589f)).x, u_input.c.x >> (var_2 % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-712f, 1116f), vec2<f32>(159f, 1524f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(387f, -1030f))))).x), u_input.c.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_sub_i32(u_input.c.x, var_0.x), 30691i, 1i), vec4<i32>(-2147483647i, 2147483647i, -1i, i32(-1i) * -26754i)));
    var var_4 = Struct_1(true, 1801f, false, var_0.x);
    var var_5 = vec4<bool>(var_4.c, any(select(func_4(var_3, _wgslsmith_f_op_vec2_f32(vec2<f32>(-592f, 593f) * vec2<f32>(-292f, var_3.b))).xw, select(vec2<bool>(false, var_4.c), !var_1.xx, true), vec2<bool>(true, true))), false, false);
    let var_6 = Struct_1(select(all(!(!var_1)), false, false == (_wgslsmith_f_op_f32(sign(170f)) < -1320f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(479f + _wgslsmith_f_op_f32(round(var_3.b)))), true, var_0.x);
    var var_7 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)) * var_6.b), 1680f, !(!any(vec4<bool>(true, var_5.x, var_4.c, var_5.x))))), var_4.b, -1892f, -702f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_2, 46874u), vec3<u32>(24164u, 36209u, var_2)), var_2), vec2<u32>(~u_input.a, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b) * var_3.b), _wgslsmith_f_op_f32(-var_6.b), var_3.b, -598f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.b)))));
}

