struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> vec2<f32> {
    var var_0 = vec4<i32>(5086i, u_input.b.x | u_input.c.x, firstTrailingBit(-26048i), -1i);
    let var_1 = !vec3<bool>(false, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_add_vec2_i32(u_input.c.zx, vec2<i32>(var_0.x, 0i))) <= _wgslsmith_mult_i32(-var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 11020i, 1i, -2147483647i), vec4<i32>(var_0.x, u_input.c.x, 2147483647i, var_0.x))), true);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1441f * -1624f))), u_input.a.xx, _wgslsmith_f_op_f32(-220f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1289f), -1367f))), any(var_1.yy)));
    let var_3 = true;
    let var_4 = abs(33263i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.a, 345f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.a.c, 1033f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(810f, 319f) + vec2<f32>(var_2.a.a, -1128f)))), false))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> i32 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.a, 1000f, arg_0.c, -183f), vec4<f32>(395f, 781f, arg_1.b.a, arg_1.c)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a.c, arg_1.b.c, 362f, arg_0.b.c))))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_1.b.a + _wgslsmith_f_op_f32(exp2(arg_0.c))), _wgslsmith_mod_vec2_u32(u_input.a.xy, ~u_input.a.xx), _wgslsmith_f_op_f32(f32(-1f) * -2188f), any(vec2<bool>(arg_1.d.a.d, false)))));
    var var_1 = arg_0.d.a.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, 71771u, var_0.b.a.b.x), vec3<u32>(55845u & var_0.b.a.b.x, ~arg_0.b.b.x, ~arg_0.b.b.x)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-448f, 103f) + var_0.a.zy))))), var_0.b.a.d));
    var var_3 = Struct_3(all(select(select(!vec4<bool>(false, true, arg_0.b.d, true), select(vec4<bool>(false, arg_0.b.d, false, arg_0.d.a.d), vec4<bool>(false, true, arg_0.d.a.d, true), vec4<bool>(var_0.b.a.d, arg_0.b.d, arg_0.d.a.d, true)), select(vec4<bool>(arg_1.b.d, arg_0.d.a.d, arg_1.b.d, arg_1.d.a.d), vec4<bool>(arg_0.b.d, false, false, true), vec4<bool>(true, false, true, true))), vec4<bool>(false, !var_0.b.a.d, !arg_1.d.a.d, any(vec2<bool>(var_0.b.a.d, true))), var_0.b.a.d)), vec4<bool>(!(!var_0.b.a.d), true, !arg_0.b.d, !all(vec2<bool>(false, true))), Struct_2(var_0.b.a), ~countOneBits(max(36231u, _wgslsmith_add_u32(var_0.b.a.b.x, 4294967295u))), var_0.b);
    let var_4 = Struct_4(arg_1.a, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -178f), ~vec2<u32>(1733u, max(43385u, 18871u)), _wgslsmith_f_op_f32(ceil(var_2.x)), select(true || !var_0.b.a.d, arg_0.b.d & (arg_1.d.a.b.x >= arg_0.d.a.b.x), all(var_3.b.zzw))), _wgslsmith_div_f32(var_3.c.a.a, 1f), Struct_2(arg_0.b));
    return _wgslsmith_div_i32(abs(2147483647i), arg_1.a << (arg_1.d.a.b.x % 32u)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, u_input.a), reverseBits(u_input.a)) % 32u);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec4<i32>) -> Struct_4 {
    var var_0 = 39341u;
    let var_1 = arg_3;
    var var_2 = ~(~1u);
    var_0 = u_input.a.x;
    var var_3 = max(u_input.a.x, min(~(~u_input.a.x), select(1u, ~0u, arg_0.x)));
    return Struct_4(-1i, Struct_1(1000f, u_input.a.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_1.x, 255f)), _wgslsmith_f_op_f32(f32(-1f) * -1284f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) * -546f)), all(select(select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, false)), !vec4<bool>(false, false, arg_0.x, arg_0.x), any(vec4<bool>(arg_0.x, false, true, false))))), -134f, Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x * 2609f))), abs(firstTrailingBit(u_input.a.xy)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) + arg_1.x), true | !arg_0.x)));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = !(!(!vec4<bool>(arg_0.d.a.d, true, true, false)));
    let var_1 = func_4(select(vec2<bool>(!select(arg_2.x, false, false), arg_0.b.d), select(vec2<bool>(true, var_0.x), select(vec2<bool>(true, var_0.x), var_0.xx, func_4(vec2<bool>(var_0.x, arg_0.d.a.d), vec4<f32>(arg_0.c, arg_0.d.a.a, 655f, arg_0.c), -1i, vec4<i32>(-34622i, 1i, arg_0.a, u_input.c.x)).d.a.d), var_0.x), arg_2.wx), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.a.a, arg_0.d.a.c, -684f, 771f), vec4<f32>(2816f, -996f, arg_0.b.c, -158f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 1385f, 128f, arg_0.d.a.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(187f, 1524f, 1080f, 422f) + vec4<f32>(arg_0.d.a.a, 742f, -530f, arg_0.d.a.a)))), var_0)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.a.a) + _wgslsmith_f_op_f32(exp2(arg_0.d.a.a))), _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(arg_1)).x, -1298f), arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1850f + arg_0.d.a.a), arg_0.c)))), arg_0.a, (vec4<i32>(i32(-1i) * -2025i, _wgslsmith_mult_i32(arg_0.a, -2147483647i), -arg_0.a, ~arg_0.a) & vec4<i32>(63095i << (arg_0.d.a.b.x % 32u), firstTrailingBit(u_input.c.x), ~arg_0.a, -arg_0.a)) ^ min(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, -63534i, -1i, u_input.b.x), vec4<i32>(0i, 17000i, 18789i, -1i))), vec4<i32>(2616i, -arg_0.a, _wgslsmith_div_i32(-2147483647i, arg_0.a), 2147483647i))).d;
    var var_2 = arg_1.x;
    var_2 = reverseBits(~arg_3) << (~(~5023u) % 32u);
    var_2 = _wgslsmith_dot_vec3_u32(~arg_1, vec3<u32>(arg_3, ~_wgslsmith_mod_u32(arg_3, firstLeadingBit(arg_3)), countOneBits(_wgslsmith_dot_vec3_u32(~u_input.a, firstTrailingBit(u_input.a)))));
    return var_1.a;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = Struct_2(func_5(func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1680f, -856f, 132f, 1503f)))), abs(-7067i), vec4<i32>(func_2(Struct_4(1i, Struct_1(827f, vec2<u32>(19971u, 0u), -2312f, false), -1295f, Struct_2(Struct_1(2219f, u_input.a.yx, 2019f, true))), Struct_4(u_input.c.x, Struct_1(394f, vec2<u32>(arg_0, 18210u), 519f, true), 1874f, Struct_2(Struct_1(-547f, u_input.a.yy, 1052f, false)))), _wgslsmith_mod_i32(u_input.c.x, u_input.b.x), 14013i, 0i)), vec3<u32>(arg_0, 5155u, ~arg_0) | select(u_input.a, max(vec3<u32>(4294967295u, u_input.a.x, 36744u), vec3<u32>(arg_0, arg_0, 4294967295u)), vec3<bool>(true, true, true)), vec4<bool>(905f != _wgslsmith_f_op_f32(round(1673f)), true, true, func_4(vec2<bool>(true, true), _wgslsmith_div_vec4_f32(vec4<f32>(1312f, 320f, -2093f, 411f), vec4<f32>(-728f, 1000f, -351f, -486f)), u_input.b.x, abs(vec4<i32>(36350i, -38803i, u_input.c.x, u_input.c.x))).b.d), firstTrailingBit(_wgslsmith_add_u32(23031u, 0u)) ^ ~u_input.a.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-914f, func_5(Struct_4(1i, Struct_1(var_0.a.c, u_input.a.xz, var_0.a.a, var_0.a.d), 2732f, Struct_2(Struct_1(-1577f, vec2<u32>(u_input.a.x, u_input.a.x), 1131f, true))), u_input.a, vec4<bool>(false, true, false, true), 49360u).c))) - var_0.a.c), var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-230f, var_0.a.a))), -970f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(-var_0.a.c)));
    var var_2 = vec3<bool>(false && var_0.a.d, abs(firstLeadingBit(0i)) > u_input.b.x, !(!(4566u >= firstTrailingBit(u_input.a.x))));
    let var_3 = Struct_3(all(!vec4<bool>(false, true, all(vec4<bool>(var_0.a.d, true, false, var_2.x)), var_0.a.d)), !vec4<bool>(var_0.a.d, _wgslsmith_f_op_f32(var_1.x - var_1.x) > _wgslsmith_f_op_f32(min(var_1.x, -551f)), !(var_0.a.d && true), any(select(vec4<bool>(var_2.x, true, true, var_0.a.d), vec4<bool>(var_0.a.d, false, var_0.a.d, true), vec4<bool>(true, true, var_2.x, var_0.a.d)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(select(-747f, var_0.a.c, !var_2.x)), _wgslsmith_mult_vec2_u32(u_input.a.zy << (u_input.a.xz % vec2<u32>(32u)), vec2<u32>(arg_0, 55472u)), _wgslsmith_f_op_f32(max(1f, -1156f)), var_2.x)), _wgslsmith_div_u32(((1919u << (0u % 32u)) << (~arg_0 % 32u)) | 1u, ~max(1u, 0u) | u_input.a.x), Struct_2(var_0.a));
    var var_4 = 1i;
    return 458f;
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: f32) -> Struct_2 {
    let var_0 = vec4<bool>(any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), false)), false, !func_5(Struct_4(arg_1 >> (u_input.a.x % 32u), Struct_1(arg_2, u_input.a.zy, -691f, true), 1511f, func_4(vec2<bool>(true, false), vec4<f32>(arg_0, -761f, 1000f, arg_0), -12999i, vec4<i32>(0i, arg_1, arg_1, -17519i)).d), max(vec3<u32>(u_input.a.x, u_input.a.x, 26768u), u_input.a), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), 4594u).d, 1765f < _wgslsmith_f_op_f32(1320f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - arg_2) + -257f)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_1(_wgslsmith_add_u32(12039u, u_input.a.x))), _wgslsmith_sub_vec2_u32(u_input.a.zy | vec2<u32>(0u, u_input.a.x), vec2<u32>(4294967295u, 5259u)) << (_wgslsmith_add_vec2_u32(u_input.a.yx, ~u_input.a.yy) % vec2<u32>(32u)), 456f, all(vec4<bool>(false, var_0.x, all(vec3<bool>(true, false, var_0.x)), false))));
    let var_2 = -abs(u_input.b.x);
    let var_3 = _wgslsmith_mult_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), min(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(0u, var_1.a.b.x)))), u_input.a.zy);
    var var_4 = _wgslsmith_div_vec3_i32(~u_input.b, u_input.c);
    return func_4(!(!(!select(vec2<bool>(var_1.a.d, var_1.a.d), var_0.xz, vec2<bool>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1675f, -1000f, var_1.a.a, arg_2) + vec4<f32>(-486f, 343f, arg_2, arg_0)))), vec4<f32>(var_1.a.c, _wgslsmith_f_op_f32(f32(-1f) * -3040f), -997f, 2032f))), _wgslsmith_clamp_i32(-1i, func_4(!vec2<bool>(var_0.x, true), vec4<f32>(arg_2, 550f, 146f, arg_0), 2147483647i << (~var_3.x % 32u), -vec4<i32>(arg_1, 1i, 2147483647i, var_2)).a, ~(-46680i)), vec4<i32>(u_input.b.x | _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c.x, -2147483647i), -var_4.x), _wgslsmith_sub_i32(var_4.x, 11289i), var_4.x, -countOneBits(_wgslsmith_sub_i32(-24293i, 38717i)))).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-_wgslsmith_div_i32(u_input.c.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, 50615i, u_input.b.x), vec4<i32>(3170i, 0i, u_input.b.x, u_input.b.x))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2923f * 1423f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1071f)) - _wgslsmith_div_f32(-1005f, 289f))), u_input.a.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1596f - _wgslsmith_f_op_f32(f32(-1f) * -117f))), false), _wgslsmith_f_op_f32(select(1985f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(403f * -221f)), _wgslsmith_f_op_f32(f32(-1f) * -1648f), !any(vec2<bool>(false, true)))), any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))))), func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(firstTrailingBit(u_input.a.x)))), ~u_input.c.x, 431f));
    var var_1 = reverseBits(0u);
    var_1 = 30014u;
    let var_2 = -22882i;
    var_1 = 148186u << (~u_input.a.x % 32u);
    var var_3 = var_0.d.a;
    let var_4 = -1928f;
    let var_5 = func_6(3539f, -12603i, _wgslsmith_f_op_f32(f32(-1f) * -904f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_3.b.x >> (u_input.a.x % 32u)))), var_0.d.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(f32(-1f) * -1293f)))));
}

