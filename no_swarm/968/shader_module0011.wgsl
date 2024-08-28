struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_2(-35408i, arg_0.e, arg_0.c, !vec2<bool>(!all(vec3<bool>(true, arg_2.x, arg_0.d.x)), false && (false && arg_0.e.a)), Struct_1(0u > ~_wgslsmith_mod_u32(arg_0.e.c, 16090u), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1341f)), arg_0.e.b), _wgslsmith_f_op_f32(trunc(arg_0.b.b))), 1u));
    let var_1 = Struct_2(-_wgslsmith_sub_i32(~1i, arg_1), Struct_1(!(!var_0.d.x) || var_0.e.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1000f)))), ~(~0u)), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.e.c, arg_0.c.x), reverseBits(u_input.b.xx))) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(47386u, arg_0.c.x), arg_0.c) % vec2<u32>(32u)), !(!(!vec2<bool>(true, arg_0.d.x))), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -251f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 884f))), 1u));
    let var_2 = Struct_2(~1i, arg_0.e, vec2<u32>(arg_0.e.c >> (var_1.c.x % 32u), 63455u), arg_0.d, Struct_1(~67384u < u_input.b.x, var_1.e.b, abs(abs(var_0.c.x ^ 76379u))));
    var_0 = arg_0;
    var_0 = Struct_2(~_wgslsmith_div_i32(1i, arg_0.a), Struct_1(arg_0.e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-538f, -1195f)) - var_2.e.b) - var_2.b.b), 16039u), ~(~vec2<u32>(0u, 9005u)) | (_wgslsmith_mult_vec2_u32(u_input.b.zx ^ vec2<u32>(var_2.c.x, var_2.b.c), u_input.b.wx) & (min(var_1.c, vec2<u32>(var_1.b.c, 31203u)) & _wgslsmith_sub_vec2_u32(vec2<u32>(74342u, var_0.b.c), u_input.b.ww))), !var_2.d, Struct_1(arg_0.e.a, _wgslsmith_f_op_f32(f32(-1f) * -531f), _wgslsmith_mod_u32(31989u & var_0.b.c, ~_wgslsmith_mult_u32(4294967295u, arg_0.c.x))));
    return _wgslsmith_f_op_f32(-var_2.e.b);
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = Struct_2(u_input.c, Struct_1(_wgslsmith_div_f32(-316f, _wgslsmith_f_op_f32(func_3(Struct_2(u_input.c, Struct_1(false, arg_0.x, 3432u), u_input.b.zx, vec2<bool>(true, true), Struct_1(true, 2006f, 4575u)), -2147483647i, vec4<bool>(false, true, true, true)))) == arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + 1504f), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b >> (u_input.b % vec4<u32>(32u)), vec4<u32>(u_input.b.x, u_input.d, 92702u, u_input.b.x), ~u_input.b), vec4<u32>(firstLeadingBit(1u), ~u_input.b.x, u_input.d, u_input.d))), vec2<u32>(select(~u_input.b.x, ~min(u_input.d, 4294967295u), false), _wgslsmith_sub_u32(15360u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(33166u, u_input.b.x, u_input.a), u_input.b.wyx), u_input.a))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), u_input.d == u_input.d)), Struct_1(any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), arg_0.x, ~(~(~36399u))));
    let var_2 = Struct_2(-55620i, Struct_1(!(var_1.d.x && any(vec3<bool>(var_1.d.x, var_1.b.a, false))), -350f, u_input.a), reverseBits(abs(vec2<u32>(select(0u, 119510u, false), var_1.e.c << (4294967295u % 32u)))), select(!vec2<bool>(var_1.a == u_input.c, all(vec3<bool>(false, true, false))), select(select(vec2<bool>(true, true), var_1.d, select(var_1.d, vec2<bool>(true, var_1.e.a), var_1.b.a)), vec2<bool>(all(var_1.d), var_1.b.a), (var_1.b.a | var_1.d.x) & (var_1.b.a & var_1.e.a)), var_1.d.x), Struct_1(var_1.b.a, _wgslsmith_f_op_f32(func_3(Struct_2(u_input.c, Struct_1(var_1.e.a, -1000f, 1u), vec2<u32>(22928u, 0u), vec2<bool>(false, true), var_1.b), var_1.a, !(!vec4<bool>(false, var_1.e.a, false, false)))), 59387u));
    let var_3 = ~countOneBits(firstTrailingBit(vec4<i32>(i32(-1i) * -1i, 2147483647i, -var_1.a, 25889i)));
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.b, -351f, 156f, 107f) - arg_0) + _wgslsmith_f_op_vec4_f32(-arg_0)) + vec4<f32>(-908f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x), -1646f, _wgslsmith_f_op_f32(select(var_1.b.b, arg_0.x, var_1.b.a))))))));
    return var_1.b;
}

fn func_1() -> u32 {
    let var_0 = firstTrailingBit(~abs(_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a, 13805u, 1u, u_input.a), u_input.b), ~vec4<u32>(u_input.d, u_input.a, u_input.b.x, 1u))));
    let var_1 = select(select(!vec4<bool>(true, all(vec3<bool>(true, true, true)), u_input.b.x == 4294967295u, false), vec4<bool>(true, true, true, true), true), !vec4<bool>(true, true, countOneBits(-1i) != u_input.c, !select(true, true, false)), true);
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1297f + -120f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(762f)))), 960f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1453f - -634f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(730f, -1000f, 780f, -228f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, -1444f, 662f, 1167f))), !vec4<bool>(var_1.x, true, false, var_1.x)))));
    var_2 = func_2(vec4<f32>(738f, _wgslsmith_f_op_f32(max(317f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 898f, var_2.b));
    var_2 = func_2(vec4<f32>(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1551f, _wgslsmith_f_op_f32(-303f - var_2.b))) - var_2.b), _wgslsmith_f_op_f32(-var_2.b), var_2.b));
    return 2368u;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_2;
    let var_1 = vec3<bool>(false, func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(946f, -1316f, 675f, 686f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, var_0.b, -617f, arg_2.b) + vec4<f32>(arg_2.b, arg_2.b, 1368f, arg_2.b))))).a || !arg_1.x, arg_2.a);
    var var_2 = Struct_2(firstTrailingBit(-1i), arg_2, select(vec2<u32>(~(~var_0.c), firstLeadingBit(13542u)), vec2<u32>(abs(reverseBits(4294967295u)), _wgslsmith_sub_u32(4294967295u, func_1())), select(vec2<bool>(arg_1.x, any(vec4<bool>(false, true, arg_2.a, arg_2.a))), vec2<bool>(true, true), arg_1)), select(var_1.yy, !(!arg_1), any(!select(vec4<bool>(arg_1.x, arg_2.a, false, false), vec4<bool>(false, arg_2.a, true, arg_2.a), vec4<bool>(var_1.x, true, true, false)))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.b, 246f, arg_2.b, var_0.b), vec4<f32>(-434f, var_0.b, var_0.b, 1400f))))));
    var_2 = Struct_2(-8119i, Struct_1(any(!(!var_1.xx)), _wgslsmith_f_op_f32(floor(-187f)), ~37309u), ~vec2<u32>(3861u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), var_2.c)), select(select(!vec2<bool>(var_1.x, arg_2.a), vec2<bool>(var_2.b.a == false, var_2.d.x), !(!var_2.e.a)), select(vec2<bool>(arg_1.x, var_0.c < var_0.c), select(!arg_1, !var_1.yx, arg_1), false), select(vec2<bool>(any(vec4<bool>(var_1.x, arg_1.x, false, arg_1.x)), u_input.b.x < 2808u), var_1.zz, var_1.zy)), arg_2);
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(380f, arg_2.b, arg_2.b))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(685f, 912f, var_0.b)), vec3<f32>(var_0.b, 257f, var_2.b.b), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-260f, -1000f, arg_2.b))))), vec3<bool>(arg_2.a, firstLeadingBit(var_0.c) >= var_0.c, 1u < var_2.e.c)))));
    return u_input.b;
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = vec4<i32>(firstLeadingBit(u_input.c), u_input.c >> (0u % 32u), _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(-vec2<i32>(1625i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(-20190i, u_input.c))), ~1i), (-abs(-27005i) & reverseBits(u_input.c)) & _wgslsmith_div_i32(~(-2147483647i) << (arg_0.x % 32u), u_input.c));
    var_0 = _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, var_0.x | 27273i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.x), var_0.xw), 2147483647i >> (arg_0.x % 32u)) & -_wgslsmith_sub_vec4_i32(vec4<i32>(-7024i, 2147483647i, -1i, 0i), vec4<i32>(u_input.c, -52928i, u_input.c, u_input.c))), max(select(vec4<i32>(_wgslsmith_add_i32(var_0.x, u_input.c), 2147483647i, countOneBits(u_input.c), -22999i), ~select(vec4<i32>(u_input.c, 4521i, 19321i, u_input.c), vec4<i32>(11445i, u_input.c, var_0.x, 47172i), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), vec4<i32>(var_0.x, var_0.x, u_input.c, var_0.x)));
    let var_1 = Struct_2(u_input.c, Struct_1(false != any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_clamp_i32(var_0.x, 41256i, var_0.x), func_2(vec4<f32>(417f, 266f, -377f, 1000f)), arg_0.yz, select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), func_2(vec4<f32>(1625f, 508f, -1165f, 1544f))), -32122i, select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true))), arg_0.x | ~arg_0.x), arg_0.zz, !(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, true)))), func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-441f, -1000f, -2195f, 909f), vec4<f32>(-400f, -466f, -1000f, -902f))))))));
    let var_2 = ~((firstLeadingBit(firstLeadingBit(vec4<i32>(var_0.x, var_1.a, u_input.c, u_input.c))) | ~firstTrailingBit(vec4<i32>(var_1.a, var_1.a, var_1.a, var_0.x))) >> (firstLeadingBit(~vec4<u32>(84503u, 0u, 17091u, u_input.a) << (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = ~select(~vec3<i32>(var_1.a, var_2.x, -var_2.x), -(~(~vec3<i32>(var_2.x, var_2.x, 0i))), select(!select(vec3<bool>(var_1.e.a, false, true), vec3<bool>(var_1.d.x, false, var_1.e.a), true), select(vec3<bool>(var_1.e.a, true, false), !vec3<bool>(true, var_1.b.a, true), vec3<bool>(var_1.b.a, true, true)), all(vec2<bool>(true, false))));
    return Struct_1(var_1.e.a, _wgslsmith_f_op_f32(sign(var_1.b.b)), ~9925u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, true, false);
    var var_1 = func_5(func_4(~(~vec2<i32>(1i, u_input.c)), !vec2<bool>(true && var_0.x, var_0.x), Struct_1(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-589f)))), ~func_1())));
    let var_2 = vec3<bool>(any(select(vec4<bool>(var_0.x, false, func_2(vec4<f32>(var_1.b, 1388f, 487f, var_1.b)).a, func_5(vec4<u32>(u_input.b.x, var_1.c, 1u, 1u)).a), !vec4<bool>(false, var_1.a, false, true), select(vec4<bool>(true, true, false, true), !vec4<bool>(var_0.x, var_1.a, var_0.x, false), true == var_0.x))), true, !any(!vec3<bool>(var_0.x, var_0.x, false)));
    var var_3 = Struct_2(~2147483647i, func_5(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c, var_1.c, 88165u ^ u_input.b.x, ~var_1.c), ~u_input.b)), ~u_input.b.wx, vec2<bool>(true, var_1.a), func_5(_wgslsmith_add_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(10138u, 2209u, var_1.c, 0u)))));
    var var_4 = !(u_input.c > var_3.a);
    let var_5 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.b, -310f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(370f, -202f) + vec2<f32>(var_1.b, var_1.b))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b))))))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), var_3.b.b), var_0.zx));
    var_3 = Struct_2(min(_wgslsmith_div_i32(select(1009i, -1i, var_3.e.a), var_3.a), firstLeadingBit(u_input.c)), func_5(u_input.b), vec2<u32>(~(~4294967295u), 25442u), vec2<bool>(!(max(2147483647i, 2147483647i) != u_input.c), true), func_2(vec4<f32>(_wgslsmith_f_op_f32(sign(327f)), var_3.e.b, -1164f, var_3.b.b)));
    var var_6 = ~2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, ~min(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c, var_3.a), -vec3<i32>(u_input.c, var_3.a, u_input.c)), (vec3<i32>(-1i, u_input.c, 0i) ^ vec3<i32>(u_input.c, -2908i, var_3.a)) >> (u_input.b.wwz % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(u_input.c), _wgslsmith_add_i32(-53794i, var_3.a), -var_3.a), select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, var_3.a, var_3.a), vec3<i32>(884i, -1i, u_input.c)), vec3<i32>(var_3.a, u_input.c, u_input.c), vec3<bool>(var_3.d.x, true, true))) ^ select(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(0i, u_input.c, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_3.a, var_3.a, 9242i), vec3<i32>(0i, 9890i, var_3.a))), firstTrailingBit(vec3<i32>(u_input.c, -2147483647i, u_input.c)), true), _wgslsmith_f_op_f32(-373f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + var_5.x)))));
}

