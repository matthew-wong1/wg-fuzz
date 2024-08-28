struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<bool>, arg_3: u32) -> bool {
    var var_0 = vec4<bool>(!(!all(select(arg_2, vec2<bool>(true, arg_1), arg_2.x))), select(!(!arg_2.x & arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1426f) - _wgslsmith_f_op_f32(-2423f + -843f)) <= _wgslsmith_f_op_f32(floor(1208f)), all(vec3<bool>(all(arg_2), arg_1, arg_2.x))), arg_1, arg_1);
    var var_1 = all(arg_2);
    var_1 = arg_2.x;
    var var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(634f + 560f))), _wgslsmith_div_f32(256f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -132f))))), firstLeadingBit(vec2<u32>(15024u, 11828u)), Struct_2(vec4<bool>(any(var_0.www), true, arg_1, arg_1), ~(-1i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -976f)), -1624f))), Struct_3(select(vec4<bool>(!var_0.x, !var_0.x, all(vec4<bool>(arg_2.x, arg_1, var_0.x, false)), true), vec4<bool>(any(var_0.wx), arg_2.x, arg_2.x, true), (arg_2.x & var_0.x) == true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(115f - 361f), _wgslsmith_f_op_f32(-139f - 1816f)) + 1087f))));
    var_1 = any(var_2.d.a.zxw);
    return firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -9347i, 2147483647i, u_input.d.x), select(firstTrailingBit(vec4<i32>(2147483647i, -26415i, 1317i, 1534i)), min(vec4<i32>(-23243i, 0i, u_input.d.x, -16995i), vec4<i32>(var_2.c.b, var_2.c.b, -2147483647i, var_2.c.b)), vec4<bool>(true, arg_2.x, true, var_2.c.a.x)))) >= -u_input.e;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(select(655f, 419f, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(337f + -1462f))), -135f)), -401f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1098f)), _wgslsmith_f_op_f32(f32(-1f) * -885f))), _wgslsmith_f_op_f32(699f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-365f)), _wgslsmith_f_op_f32(-1736f - 359f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1285f))))));
    var var_1 = arg_1;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-601f - _wgslsmith_f_op_f32(-123f * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(844f + var_0.x) * _wgslsmith_f_op_f32(var_0.x * var_0.x))) - var_0.x) <= -1408f;
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_0.xyw);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -368f) * var_2.x);
    return 872f;
}

fn func_2() -> bool {
    var var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.b.x), ~vec4<u32>(4294967295u, u_input.b.x, 21195u, 45248u), ~vec4<u32>(4294967295u, 115023u, 35101u, u_input.b.x)) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x), vec4<u32>(4294967295u, 0u, 1u, 32648u)), ~vec4<u32>(13502u, 16759u, u_input.c.x, u_input.c.x)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(17117u, 35332u, 1u, 1u)), 28011u, u_input.c.x, u_input.a.x));
    var var_1 = Struct_2(!(!vec4<bool>(false, true, true, all(vec4<bool>(false, false, false, true)))), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.e, 53333i) >> (u_input.c % vec3<u32>(32u)), u_input.d.yyz >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x) % vec3<u32>(32u))), i32(-1i) * -52701i, -19391i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_add_u32(22662u, 0u), true, Struct_3(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), !func_3(vec3<u32>(4294967295u, u_input.b.x, u_input.c.x), true, vec2<bool>(true, false), 4294967295u)))));
    var var_2 = select(select(select(var_1.a, vec4<bool>(var_1.a.x, var_1.a.x, select(false, false, var_1.a.x), var_1.a.x), !func_3(u_input.b, false, vec2<bool>(true, var_1.a.x), u_input.b.x)), vec4<bool>(any(!var_1.a.yxy), true, all(var_1.a.wxx), any(select(vec3<bool>(true, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, true, var_1.a.x), var_1.a.x))), var_1.a), !vec4<bool>(all(!var_1.a.xzy), !var_1.a.x, any(vec3<bool>(var_1.a.x, var_1.a.x, true)), true), 2147483647i != var_1.b);
    var var_3 = countOneBits(min(vec2<u32>(u_input.c.x, ~15754u), vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.a.yz), u_input.a.x)));
    let var_4 = Struct_1((_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, -1i, u_input.d.x, var_1.b), vec4<i32>(-2147483647i, 0i, 2147483647i, var_1.b)) << (var_3.x % 32u)) <= u_input.e, vec4<u32>(1u, 1u, firstLeadingBit(var_3.x), u_input.c.x), _wgslsmith_clamp_i32(firstLeadingBit(~23725i), ~select(_wgslsmith_add_i32(u_input.d.x, u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, var_1.b), var_1.a.x || var_2.x), 2147483647i), all(!(!var_1.a.zwy)), var_1.a.x);
    return !var_2.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: bool, arg_3: f32) -> Struct_4 {
    var var_0 = Struct_3(!vec4<bool>(arg_1.x == min(u_input.d.x, u_input.d.x), arg_1.x >= -13604i, any(vec2<bool>(false, arg_2)) && arg_2, all(vec4<bool>(true, arg_2, arg_2, arg_2)) & arg_2));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -883f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1808f, arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3, -1492f)))))));
    var var_2 = !(!vec3<bool>(true, arg_2, all(!var_0.a.xw)));
    var_0 = Struct_3(!select(!(!var_0.a), vec4<bool>(true, true, !arg_2, all(var_0.a.yxy)), vec4<bool>(var_2.x, true, var_2.x, false)));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(f32(-1f) * -1430f), 419f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -964f), _wgslsmith_f_op_f32(sign(-1562f)), _wgslsmith_f_op_f32(max(arg_3, arg_3))))));
    return Struct_4(956f, vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(min(vec2<u32>(4294967295u, 1u), u_input.b.xx), vec2<u32>(u_input.b.x, 0u)), _wgslsmith_clamp_vec2_u32(~arg_0, select(vec2<u32>(arg_0.x, 6108u), u_input.c.zz, vec2<bool>(var_0.a.x, true)), firstLeadingBit(u_input.a.yx)))), Struct_2(select(vec4<bool>(2147483647i < arg_1.x, true, u_input.d.x <= u_input.d.x, var_2.x | var_0.a.x), select(select(var_0.a, var_0.a, var_0.a.x), !vec4<bool>(var_2.x, true, true, false), !var_0.a), select(var_0.a, vec4<bool>(false, arg_2, true, true), var_0.a)), firstTrailingBit(1i), _wgslsmith_f_op_f32(func_4(firstLeadingBit(~1u), func_2(), Struct_3(select(var_0.a, vec4<bool>(true, false, true, true), var_2.x)), false))), Struct_3(!var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + -960f) * arg_3));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: u32) -> Struct_4 {
    var var_0 = arg_0.x;
    let var_1 = any(vec4<bool>(1095f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1))), true, all(!arg_0.wx), (!arg_0.x & true) && (_wgslsmith_sub_u32(u_input.b.x, 20655u) > 109520u)));
    var_0 = false || (min(arg_2, _wgslsmith_sub_u32(u_input.a.x, arg_2)) >= firstTrailingBit(44451u));
    let var_2 = Struct_3(!(!arg_0));
    var_0 = true;
    return func_5(vec2<u32>(arg_2, ~select(arg_2 >> (62624u % 32u), 1u, true)), ~(-vec3<i32>(-45765i, u_input.e, _wgslsmith_clamp_i32(1i, -1i, u_input.d.x))), any(vec4<bool>(func_2(), false, var_2.a.x, true)) | !(!var_1), _wgslsmith_f_op_f32(-arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(464f, -679f) * _wgslsmith_f_op_f32(-964f * -556f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-291f, 1471f))))), firstTrailingBit(min(_wgslsmith_dot_vec2_u32(abs(u_input.c.yy), vec2<u32>(u_input.b.x, u_input.a.x) >> (vec2<u32>(7876u, u_input.c.x) % vec2<u32>(32u))), abs(u_input.a.x) & _wgslsmith_sub_u32(u_input.b.x, u_input.a.x))));
    let var_1 = ~_wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 36826i, var_0.c.b), u_input.d.yxw) << (61478u % 32u), ~(-34554i), _wgslsmith_mod_i32(countOneBits(1i), _wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.c.b, u_input.d.x), firstLeadingBit(2147483647i))));
    let var_2 = func_1(var_0.c.a, _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.a.x, u_input.c.x, 1u, 1u))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(6242u, 0u, var_0.b.x, 4294967295u), vec4<u32>(0u, 60068u, 0u, var_0.b.x), vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, u_input.c.x))))).c;
    let var_3 = reverseBits(min(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.c.b, var_1), min(~vec2<i32>(12916i, var_2.b), abs(vec2<i32>(var_0.c.b, var_0.c.b)))), u_input.d.zy >> ((max(var_0.b, var_0.b) & u_input.c.xx) % vec2<u32>(32u))));
    let var_4 = -var_2.b;
    var var_5 = _wgslsmith_mod_i32(var_4, var_3.x);
    let var_6 = var_0.b.x;
    var var_7 = func_1(vec4<bool>(func_1(vec4<bool>(true, var_0.c.a.x, var_0.d.a.x, func_2()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_2.c)))), _wgslsmith_sub_u32(var_6, var_0.b.x) & _wgslsmith_clamp_u32(28181u, var_6, var_0.b.x)).c.a.x, func_2(), true, true), -1527f, var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, var_2.c, firstLeadingBit(var_0.b.x ^ 4294967295u), var_7.a, var_7.c.b);
}

