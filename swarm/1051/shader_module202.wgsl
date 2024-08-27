struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_5) -> vec4<f32> {
    let var_0 = arg_3.a.a;
    let var_1 = min(0u, arg_1);
    let var_2 = any(vec3<bool>(select(false, any(vec4<bool>(true, false, false, arg_3.a.b.x)), arg_3.a.a.x), true, !all(vec3<bool>(true, false, arg_3.a.b.x)))) | any(!arg_3.a.a);
    var var_3 = _wgslsmith_f_op_f32(476f + arg_3.a.c.x);
    let var_4 = _wgslsmith_sub_u32(max(1u, u_input.a.x), var_1);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_3.a.c, vec4<f32>(-879f, _wgslsmith_f_op_f32(arg_2.x + -404f), _wgslsmith_f_op_f32(max(-825f, arg_2.x)), 228f), any(select(arg_3.a.a.zxx, var_0.zxz, arg_3.a.a.www))))));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = Struct_2(all(!vec4<bool>(arg_0.a.a.x, select(arg_0.a.a.x, arg_0.a.b.x, false), all(arg_0.a.b), !arg_0.a.a.x)), Struct_1(vec4<bool>(_wgslsmith_f_op_f32(-2178f - -1000f) != _wgslsmith_f_op_f32(-arg_0.b.x), true, _wgslsmith_f_op_f32(floor(arg_0.c)) <= 618f, false), arg_0.a.a.zww, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(~1u, ~arg_1.x, _wgslsmith_f_op_vec2_f32(-arg_0.a.c.ww), arg_0)), arg_0.a.c, !arg_0.a.a))), u_input.c);
    let var_1 = Struct_3(21779u, Struct_1(select(arg_0.a.a, var_0.b.a, select(!vec4<bool>(var_0.a, var_0.b.a.x, arg_0.a.b.x, arg_0.a.a.x), select(var_0.b.a, var_0.b.a, true), vec4<bool>(var_0.a, var_0.b.b.x, false, arg_0.a.b.x))), arg_0.a.b, arg_0.a.c), _wgslsmith_f_op_f32(-arg_2), arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c, _wgslsmith_div_f32(-440f, -1487f)))), _wgslsmith_f_op_f32(ceil(-2060f)), arg_0.a.c.x));
    var_0 = Struct_2(any(vec2<bool>(true, arg_3 < 24688u)) != !var_0.b.b.x, var_0.b, var_0.c);
    var var_2 = true;
    return -2147483647i & -u_input.c.x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = select(arg_3.www, !vec3<bool>(all(arg_3), (i32(-1i) * -2957i) >= (-48290i << (u_input.a.x % 32u)), false), !(!arg_1 || all(!arg_3.ww)));
    let var_1 = vec4<i32>(select(abs(1i), 1929i, true), _wgslsmith_mod_i32(-u_input.c.x | min(arg_2.x, ~arg_2.x), min(max(-26309i, arg_0), 14871i)), arg_2.x, firstLeadingBit(abs(-max(u_input.c.x, arg_0))));
    var var_2 = arg_1 && any(vec3<bool>(true, true, true));
    var var_3 = Struct_1(vec4<bool>(true, false, any(select(vec2<bool>(true, arg_1), arg_3.wx, vec2<bool>(arg_1, arg_1))) || all(vec4<bool>(false, arg_3.x, false, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1377f)), -139f) <= -678f), !vec3<bool>(false, all(!vec4<bool>(true, var_0.x, arg_3.x, arg_1)), _wgslsmith_add_i32(u_input.b.x, var_1.x) == (u_input.c.x << (u_input.a.x % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-463f, 420f, 299f, 969f) + vec4<f32>(487f, -1148f, -522f, 991f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2042f, 772f, 1818f, 504f) - vec4<f32>(269f, -217f, 2181f, -1858f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 685f, -751f, 484f)))));
    var var_4 = vec4<f32>(var_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(637f)), -683f, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_3.c.x)), -896f)), 1000f)), var_3.c.x);
    return Struct_2(firstTrailingBit(var_1.x & 1i) > 1i, Struct_1(vec4<bool>(select(true, arg_3.x, false), arg_3.x, true, false), select(var_3.a.zyz, var_3.b, select(select(var_3.a.zwx, var_3.a.wxw, var_3.b.x), !arg_3.yzw, 0u <= u_input.d)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -385f, 116f, var_3.c.x)), var_3.c))))), ~arg_2.zz);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_4) -> vec3<f32> {
    var var_0 = vec4<i32>(~_wgslsmith_sub_i32(func_2(Struct_5(arg_2.b.d, arg_0.b.c.wx, arg_2.e.x), vec2<u32>(arg_2.b.a, arg_2.d), _wgslsmith_div_f32(-448f, arg_1.x), arg_2.b.a | 8791u), -11535i), 27722i, u_input.e, -51690i);
    var_0 = -_wgslsmith_div_vec4_i32(max(countOneBits(reverseBits(vec4<i32>(var_0.x, u_input.c.x, -6551i, var_0.x))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0.x, -2147483647i, -2147483647i, var_0.x), vec4<i32>(2147483647i, -1i, -15394i, 27085i), vec4<i32>(arg_0.c.x, var_0.x, 15282i, u_input.b.x))), max(select(vec4<i32>(2147483647i, 519i, var_0.x, u_input.e), vec4<i32>(-10138i, 0i, arg_2.c, u_input.b.x) ^ vec4<i32>(u_input.e, -50203i, 23713i, arg_0.c.x), !vec4<bool>(true, arg_0.a, true, arg_0.a)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c.x, arg_0.c.x, u_input.e, 2147483647i), vec4<i32>(u_input.e, u_input.e, 0i, 2147483647i)), -vec4<i32>(var_0.x, -2147483647i, -1i, 1i), vec4<i32>(arg_2.c, u_input.b.x, var_0.x, var_0.x))));
    let var_1 = arg_2.b;
    var var_2 = ~select(min(vec2<u32>(52909u, _wgslsmith_add_u32(0u, arg_2.d)), _wgslsmith_mult_vec2_u32(~u_input.a, ~u_input.a)), ~vec2<u32>(~var_1.a, _wgslsmith_mult_u32(u_input.d, 4294967295u)), any(!arg_0.b.a));
    var_0 = vec4<i32>(abs(-_wgslsmith_sub_i32(-arg_0.c.x, reverseBits(-1683i))), select(~(select(var_0.x, arg_2.c, true) << (u_input.d % 32u)), 94052i, true), -27911i, countOneBits(u_input.c.x));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.c), var_1.c, arg_0.b.c.x)), vec3<f32>(-586f, _wgslsmith_f_op_f32(min(-1851f, _wgslsmith_div_f32(arg_0.b.c.x, 478f))), 554f), var_1.d.a.x && any(select(vec4<bool>(true, true, arg_0.b.a.x, var_1.d.b.x), vec4<bool>(arg_0.a, var_1.b.b.x, false, true), var_1.b.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.e.wxx, arg_1.zzy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.zzw)), 41054u < firstTrailingBit(arg_2.d)))));
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_5(func_4(func_2(Struct_5(Struct_1(vec4<bool>(true, true, true, false), vec3<bool>(true, true, false), vec4<f32>(1179f, 690f, -1000f, 1037f)), vec2<f32>(-454f, -418f), -178f), vec2<u32>(0u, u_input.a.x), -284f, u_input.a.x), true, u_input.b, vec4<bool>(false, false, false, true)), vec4<f32>(1f, 1f, 1f, 1f), Struct_4(func_4(-44742i, false, vec3<i32>(2147483647i, u_input.c.x, u_input.e), vec4<bool>(false, false, true, false)).b, Struct_3(25039u, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, false, false), vec4<f32>(451f, 1004f, -561f, 1588f)), 1617f, Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, false, false), vec4<f32>(1645f, -1697f, -128f, -1912f)), vec3<f32>(1061f, 998f, -1090f)), 2147483647i, arg_0.x, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(933f, -2709f, 213f, 1856f))))))))));
    var var_1 = max(~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 0u), 0u << (arg_0.x % 32u), min(arg_0.x, 34031u), 96087u), vec4<u32>(0u << (1u % 32u), firstTrailingBit(u_input.a.x), _wgslsmith_div_u32(arg_0.x, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), u_input.a))), vec4<u32>(firstTrailingBit(reverseBits(u_input.d)), abs(4294967295u), 1u, u_input.d));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-379f, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)) + var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), func_4(-18734i, true, -u_input.b, func_4(18329i, false, vec3<i32>(18506i, -2147483647i, -60540i), vec4<bool>(false, true, true, true)).b.a).b.c.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -2031f, var_0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 301f, -740f), vec3<f32>(-130f, -661f, var_0.x)), func_4(u_input.b.x, false, u_input.b, vec4<bool>(true, true, false, false)).b.c.yyx))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(226f, 727f, true))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_div_f32(-133f, 158f), any(vec2<bool>(true, true)))))), var_0.x, var_0.x);
    let var_3 = vec2<i32>(-1i, -26111i);
    return max(34889i << (_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_1.x, u_input.d), countOneBits(4294967295u)), u_input.d) % 32u), u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(min(u_input.e << (53361u % 32u), func_1(vec3<u32>(0u, 40459u, 29727u))) > ~(~u_input.b.x), ~(~2147483647i) != (countOneBits(-35752i) & u_input.e), true), func_4(-14255i, true, ~(-u_input.b), vec4<bool>(!(0u < u_input.d), all(vec3<bool>(false, false, true)), true, true)).b, ~vec2<i32>(abs(-29529i), u_input.b.x));
    var_0 = func_4(var_0.c.x & var_0.c.x, any(var_0.b.a.zy), (vec3<i32>(abs(7846i), reverseBits(u_input.b.x), u_input.e) | (vec3<i32>(var_0.c.x, var_0.c.x, 31544i) << (max(vec3<u32>(u_input.d, 4294967295u, u_input.a.x), vec3<u32>(72013u, 1u, u_input.a.x)) % vec3<u32>(32u)))) | vec3<i32>(var_0.c.x, _wgslsmith_clamp_i32(~var_0.c.x, u_input.c.x, ~1i), -var_0.c.x >> (_wgslsmith_add_u32(u_input.d, 85036u) % 32u)), vec4<bool>(!any(var_0.b.a.zzy), true, !((var_0.a && false) && false), false));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-589f)), _wgslsmith_f_op_f32(var_0.b.c.x - -978f), var_0.b.c.x, _wgslsmith_f_op_f32(684f - var_0.b.c.x)));
    var_0 = Struct_2(var_1.x == func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(11331i, var_0.c.x, var_0.c.x, var_0.c.x) ^ vec4<i32>(1i, var_0.c.x, -17696i, u_input.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.x, u_input.c.x, var_0.c.x, var_0.c.x), vec4<i32>(var_0.c.x, -33938i, 0i, 1i))), select(false, false, var_0.b.a.x) & (u_input.e > var_0.c.x), abs(~u_input.b), vec4<bool>(any(var_0.b.b), var_0.a, all(var_0.b.a), true)).b.c.x, Struct_1(var_0.b.a, !var_0.b.b, _wgslsmith_f_op_vec4_f32(var_0.b.c + vec4<f32>(_wgslsmith_f_op_f32(-1270f * var_0.b.c.x), _wgslsmith_f_op_f32(select(644f, -312f, false)), var_0.b.c.x, 264f))), ~u_input.b.xz);
    let var_2 = Struct_2(var_0.b.b.x, Struct_1(vec4<bool>(var_0.a, true, ~u_input.d >= min(26673u, u_input.d), true), vec3<bool>(!any(var_0.b.a), !var_0.a != false, !var_0.b.b.x), _wgslsmith_f_op_vec4_f32(-var_0.b.c)), select(vec2<i32>(~u_input.c.x, 20632i) ^ firstLeadingBit(~u_input.c), vec2<i32>(~(-1916i), func_2(Struct_5(Struct_1(var_0.b.a, vec3<bool>(var_0.b.b.x, var_0.b.b.x, true), vec4<f32>(var_1.x, var_0.b.c.x, -1539f, 542f)), vec2<f32>(-758f, -1829f), 1182f), vec2<u32>(u_input.d, u_input.d) & u_input.a, 615f, select(83898u, 1u, true))), (-1i == (u_input.c.x ^ var_0.c.x)) & true));
    let var_3 = -max(var_2.c.x, var_2.c.x);
    let var_4 = var_0.b.a;
    var_0 = func_4(u_input.b.x, any(!select(var_2.b.b, !vec3<bool>(var_2.a, true, true), true)), select(u_input.b, min(vec3<i32>(var_2.c.x, 2147483647i, -1i), vec3<i32>(var_3, u_input.b.x, var_0.c.x)), !all(var_0.b.b.yy)) >> ((firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(277u, 32589u, 79239u), vec3<u32>(u_input.a.x, u_input.d, u_input.a.x))) ^ abs(vec3<u32>(5455u, u_input.d, u_input.d) & vec3<u32>(16518u, u_input.a.x, u_input.d))) % vec3<u32>(32u)), func_4(u_input.b.x, true, _wgslsmith_div_vec3_i32(firstLeadingBit(u_input.b | vec3<i32>(0i, var_2.c.x, var_0.c.x)), vec3<i32>(-1i) * -u_input.b), vec4<bool>(!(var_0.b.a.x && var_2.b.a.x), -1i < var_2.c.x, var_4.x, all(!var_0.b.a.zy))).b.a);
    var var_5 = func_4(abs((1i << (1u % 32u)) ^ _wgslsmith_sub_i32(29224i, u_input.c.x)) ^ 1i, var_4.x || var_4.x, firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.c.x, 45016i, -16768i), u_input.b) >> (countOneBits(vec3<u32>(16125u, u_input.d, 18111u)) % vec3<u32>(32u)), vec3<i32>(~3212i, _wgslsmith_dot_vec2_i32(var_0.c, vec2<i32>(-2612i, u_input.b.x)), -2147483647i))), select(vec4<bool>(false, !all(var_2.b.a), select(true, true, var_4.x), var_4.x), var_2.b.a, !func_4(_wgslsmith_div_i32(-2147483647i, var_3), var_2.b.c.x == var_1.x, vec3<i32>(0i, var_0.c.x, 17138i) ^ vec3<i32>(-23477i, var_2.c.x, var_0.c.x), func_4(var_3, true, u_input.b, vec4<bool>(true, true, false, var_4.x)).b.a).b.a)).b;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(~(~(~vec3<u32>(u_input.a.x, 67227u, u_input.a.x)))));
}

