struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<f32> {
    var var_0 = u_input.b;
    let var_1 = Struct_4(Struct_2(vec3<f32>(1f, 1f, 1f), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)))), vec2<i32>(-2147483647i, (u_input.b.x & var_0.x) >> (~u_input.a.x % 32u)), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(22499u, u_input.a.x)), vec2<u32>(u_input.a.x, u_input.a.x)), !any(vec3<bool>(false, true, false)), u_input.b, true, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1033f * -1299f), -306f, _wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(min(-415f, 1443f))))), Struct_3(Struct_2(vec3<f32>(1028f, -1593f, -206f), vec4<bool>(true, true, true, true), u_input.b, Struct_1(~u_input.a.x, true, reverseBits(u_input.b), select(false, true, true), true), vec4<f32>(1f, 1f, 1f, 1f)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-954f, -1923f, 1511f) - vec3<f32>(1766f, 968f, -209f))), vec4<bool>(true, true, true, true), select(-vec2<i32>(-1i, u_input.b.x), u_input.b, true), Struct_1(min(u_input.a.x, u_input.a.x), select(true, true, false), max(vec2<i32>(-1i, 17198i), u_input.b), u_input.c >= u_input.c, all(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2082f, 121f, -994f, -1624f), vec4<f32>(-985f, 409f, -498f, 2690f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(699f, -453f, -524f, -463f) * vec4<f32>(1064f, 1000f, 818f, -442f)))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-952f + -1816f), 705f, -141f), vec4<bool>(true, true, true, true), u_input.b, Struct_1(u_input.a.x >> (4294967295u % 32u), true, -vec2<i32>(u_input.b.x, -1i), true, false), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1738f), 608f, -968f, _wgslsmith_div_f32(-320f, -829f)))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, 1i, 0i, u_input.b.x) & vec4<i32>(u_input.c, 26829i, var_0.x, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(12890i, 0i, var_0.x, 1i), vec4<i32>(1i, -30960i, 24109i, -1i)), any(vec3<bool>(true, true, false))) << ((vec4<u32>(u_input.a.x, 22253u, 0u, u_input.a.x) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 70630u, 19873u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 43005u, 924u))) % vec4<u32>(32u)), -vec4<i32>(firstLeadingBit(var_0.x), _wgslsmith_sub_i32(29646i, 1i), u_input.c, -2147483647i)), -select(abs(u_input.b.x), firstLeadingBit(_wgslsmith_clamp_i32(u_input.c, u_input.b.x, -24029i)), true), _wgslsmith_add_i32(min(-2147483647i, -_wgslsmith_add_i32(var_0.x, -1i)), u_input.b.x));
    let var_2 = var_1.b;
    var_0 = -u_input.b;
    return var_1.b.c.e;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(309f - -1000f);
    var var_1 = _wgslsmith_f_op_f32(var_0 - var_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1738f, -723f, 489f, 327f) * vec4<f32>(373f, var_0, var_0, var_0)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, var_0, var_0, -271f))))))));
    var_2 = _wgslsmith_f_op_vec4_f32(func_3());
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-var_0)), var_0, _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(var_2.x + -934f), false && arg_1.e)), var_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1737f, 1061f, -1187f, _wgslsmith_f_op_f32(exp2(var_2.x))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0, 534f), var_2.x)), _wgslsmith_f_op_f32(-var_0), true)), 1182f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2083f * _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x + var_0)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1785f, var_2.x)) * 747f), _wgslsmith_f_op_f32(floor(1f)))) * var_2.x));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(843f * 1844f), _wgslsmith_f_op_f32(-341f + -175f))) + vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec2<bool>(arg_2.d, false), Struct_1(4294967295u, arg_2.b, vec2<i32>(-18173i, arg_2.c.x), arg_1, false))))), -119f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -202f), 793f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-444f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), (true || arg_1) & true)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.a.x, !(u_input.a.x >= _wgslsmith_div_u32(u_input.a.x, 36665u)), vec2<i32>(-_wgslsmith_add_i32(arg_2.x, 2147483647i >> (u_input.a.x % 32u)), u_input.b.x), arg_1.x, false);
    var var_1 = ~((i32(-1i) * -u_input.b.x) & ~_wgslsmith_div_i32(firstLeadingBit(1i), -var_0.c.x));
    var var_2 = vec2<u32>(abs(_wgslsmith_dot_vec4_u32(min(vec4<u32>(53748u, var_0.a, 0u, 1u), vec4<u32>(93279u, 1u, 23220u, var_0.a)), firstLeadingBit(vec4<u32>(47022u, u_input.a.x, var_0.a, 4294967295u)))) & min(u_input.a.x, ~1u), var_0.a);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -1935f), _wgslsmith_f_op_vec4_f32(func_3()).x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x - arg_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_4 = arg_1.yz;
    return Struct_1(_wgslsmith_mult_u32(var_0.a, 49073u), true, ~(arg_2.xy ^ u_input.b), true, !all(vec4<bool>(var_4.x, select(true, true, var_0.e), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.b.x, false, Struct_1(1u, false, vec2<i32>(u_input.b.x, 37678i), true, true), u_input.b.x))))))), vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), any(vec3<bool>(true, false, false)))), true, select(true, u_input.c < -28524i, true) || (_wgslsmith_f_op_f32(select(539f, -1167f, true)) != 361f)), vec3<i32>(u_input.b.x, -firstTrailingBit(-35674i), firstLeadingBit(_wgslsmith_div_i32(-6642i, u_input.c)) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, 8544u)), countOneBits(u_input.a.x), u_input.a.x) % 32u)));
    var var_2 = Struct_2(vec3<f32>(1000f, 603f, _wgslsmith_f_op_f32(1210f + -1000f)), !vec4<bool>(true, (false || var_1.d) & all(vec2<bool>(false, var_1.e)), !var_1.e, true), var_1.c & ~vec2<i32>(0i, u_input.b.x << (var_1.a % 32u)), func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -574f), vec2<f32>(1000f, 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -807f) * vec2<f32>(-525f, 1927f))))), !select(vec3<bool>(var_1.d, var_1.e, false), !vec3<bool>(true, var_1.b, false), true), -(~vec3<i32>(var_1.c.x, var_1.c.x, -2147483647i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(590f, -1837f, 666f, -1018f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1966f, -427f, -424f, 277f))) - vec4<f32>(-1000f, -919f, 1093f, -182f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1218f, -505f, 733f, -1678f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, -866f, 997f, 657f) - vec4<f32>(665f, 214f, 758f, -1475f)), any(vec3<bool>(false, var_1.b, var_1.b)))))));
    let var_3 = -2147483647i;
    var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(step(var_2.e.x, var_2.a.x)), var_2.e.x, _wgslsmith_f_op_vec2_f32(func_1(reverseBits(max(var_2.d.c.x, var_2.c.x)), var_1.b, var_2.d, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b & vec2<i32>(var_1.c.x, 2147483647i)))).x), !var_2.b, max(u_input.b, vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 5416i), var_1.c), firstTrailingBit(u_input.b.x))), Struct_1(reverseBits(var_2.d.a) << (firstLeadingBit(48834u) % 32u), select(var_2.d.b, !(var_2.a.x < var_2.e.x), var_1.d), firstTrailingBit(u_input.b), !var_1.b, var_2.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1340f, _wgslsmith_f_op_f32(var_2.e.x * var_2.a.x), _wgslsmith_f_op_f32(step(var_2.a.x, var_2.e.x)), _wgslsmith_f_op_f32(min(var_2.e.x, var_2.e.x))), var_2.e, select(select(var_2.b, vec4<bool>(true, var_1.b, true, true), false), var_2.b, select(vec4<bool>(false, true, false, true), vec4<bool>(var_1.e, false, false, var_2.b.x), true)))) * _wgslsmith_f_op_vec4_f32(var_2.e + vec4<f32>(-803f, _wgslsmith_f_op_f32(-var_2.a.x), var_2.a.x, _wgslsmith_div_f32(var_2.e.x, var_2.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

